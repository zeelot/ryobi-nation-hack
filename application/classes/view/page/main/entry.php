<?php defined('SYSPATH') or die('No direct script access.');

class View_Page_Main_Entry extends Abstract_View_Page {

	protected $category;
	protected $entry;

	public function entry_details()
	{
		return array(
			'title'       => $this->entry->title,
			'image'       => Media::url('images/entries/'.$this->entry->image.'/1.jpeg'),
			'description' => $this->entry->description,
		);
	}
}