<?php defined('SYSPATH') or die('No direct script access.');

class View_Page_Main_Entry extends Abstract_View_Page {

	protected $category;
	protected $entry;
	protected $previous_entry;

	public function previous_entry()
	{
		if ( ! $this->previous_entry OR ! $this->previous_entry->loaded())
			return NULL;

		return array(
			'title'             => $this->previous_entry->title,
			'image'             => Media::url('images/entries/'.$this->previous_entry->image.'/1.jpeg'),
			'description'       => $this->previous_entry->description,
			'inspiration_count' => $this->previous_entry->inspiration_count(),
		);
	}

	public function entry_details()
	{
		return array(
			'title'             => $this->entry->title,
			'image'             => Media::url('images/entries/'.$this->entry->image.'/1.jpeg'),
			'description'       => $this->entry->description,
			'inspiration_count' => $this->previous_entry->inspiration_count(),
		);
	}

	public function is_inspiring()
	{
		return ($this->entry->id <= 10);
	}
}