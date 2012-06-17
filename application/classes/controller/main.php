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
			->bind('entry', $entry);

		$category = $this->request->param('category');

		if ($this->request->param('entry'))
		{
			$entry = ORM::factory('entry', $this->request->param('entry'));
		}
		else
		{
			$entry = ORM::factory('entry')
				->where('category', '=', $category)
				->find();
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

			$next_entry = ORM::factory('entry')
				->where('category', '=', $category)
				->where('id', '>', $entry->id)
				->find();

			if ($next_entry->loaded())
			{
				// Send the user to the next entry
				$this->request->redirect(Route::url('entry', array(
					'category' => $category,
					'entry'    => $next_entry->id,
				)));
			}
			else
			{
				$this->request->redirect(Route::url('home'));
			}
		}
	}

}
