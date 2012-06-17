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

	public function tools_used()
	{
		return array(
			array(
				'image'  => Media::url('images/chainsaw.png'),
				'name'   => '18 IN. CHAIN SAW',
				'button' => Media::url('images/button-wishlist.png'),
			),
			array(
				'image'  => Media::url('images/tablesaw.png'),
				'name'   => '18 VOLT ONE+™ 5-1/2" CIRCULAR SAW WITH LASER',
				'button' => Media::url('images/button-wishlist.png'),
			),
			array(
				'image'  => Media::url('images/drill.png'),
				'name'   => '12 VOLT COMPACT DRILL',
				'button' => Media::url('images/button-wishlist.png'),
			),
		);
	}
}