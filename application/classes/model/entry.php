<?php

class Model_Entry extends ORM {

	protected $_belongs_to = array(
		'user' => array(),
	);

	public function inspiration_count()
	{
		return DB::select(array('COUNT("*")', 'total_count'))
			->from('inspirations_entries_users')
			->where('entry_id', '=', $this->id)
			->execute($this->_db)
			->get('total_count');
	}
}