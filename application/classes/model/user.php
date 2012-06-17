<?php

class Model_User extends ORM {

	protected $_has_many = array(
		'inspirations' => array(
			'model'   => 'entry',
			'through' => 'inspirations_entries_users',
			'far_key' => 'entry_id',
		),
		'entries' => array(
			'model' => 'entry',
		),
	);
}