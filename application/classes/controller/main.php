<?php defined('SYSPATH') or die('No direct script access.');

class Controller_Main extends Abstract_Controller_Page {

	protected $_auth;

	public function before()
	{
		parent::before();

		$this->_auth = ORM::factory('user', array('email' => 'zeelot3k@gmail.com'));
	}

	public function after()
	{
		if ($this->_view)
		{
			$this->_view->bind('_auth', $this->_auth);
		}

		parent::after();
	}

	public function action_index() {}
	public function action_yourinspirations() {}
	public function action_yourprojects() {}
	public function action_entry()
	{
		$this->_view
			->bind('category', $category)
			->bind('entry', $entry)
			->bind('previous_entry', $previous);

		$category = $this->request->param('category');
		$previous = ORM::factory('entry', $this->request->query('last'));

		if ($this->request->param('entry'))
		{
			$entry = ORM::factory('entry', $this->request->param('entry'));
		}
		else
		{
			if ($category === 'featured')
			{
				$entry = ORM::factory('entry')
					->where('is_featured', '=', 1)
					->find();
			}
			elseif ($category === 'top')
			{
				$entry = ORM::factory('entry')
					->find();
			}
			else
			{
				$entry = ORM::factory('entry')
					->where('category', '=', $category)
					->find();
			}
		}

		if ($this->request->method() === HTTP_Request::POST)
		{
			if ($this->request->post('vote') === 'up')
			{
				// Add it if it hasn't been already
				if ( ! $this->_auth->has('inspirations', $entry))
				{
					$this->_auth->add('inspirations', $entry);
				}
			}

			if ($category === 'featured')
			{
				$next_entry = ORM::factory('entry')
					->where('is_featured', '=', 1)
					->where('id', '>', $entry->id)
					->find();
			}
			elseif ($category === 'top')
			{
				$next_entry = ORM::factory('entry')
					->where('id', '>', $entry->id)
					->where('id', '<=', 10)
					->find();
			}
			else
			{
				$next_entry = ORM::factory('entry')
					->where('category', '=', $category)
					->where('id', '>', $entry->id)
					->find();
			}

			if ($next_entry->loaded())
			{
				// Send the user to the next entry
				$this->request->redirect(Route::url('entry', array(
					'category' => $category,
					'entry'    => $next_entry->id,
				)).URL::query(array('last' => $entry->id), FALSE));
			}
			else
			{
				$this->request->redirect(Route::url('home'));
			}
		}
	}

}
