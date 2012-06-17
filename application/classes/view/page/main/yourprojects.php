<?php defined('SYSPATH') or die('No direct script access.');

class View_Page_Main_YourProjects extends Abstract_View_Page {

	public function entries()
	{
		$data = array();
		$entries = $this->_auth->entries->find_all();

		foreach ($entries as $entry)
		{
			$data[] = array(
				'title'       => $entry->title,
				'image'       => Media::url('images/entries/'.$entry->image.'/1.jpeg'),
				'description' => $entry->description,
				'url'         => Route::url('entry', array(
					'category' => $entry->category,
					'entry'    => $entry->id,
				)),
			);
		}

		return $data;
	}
}
