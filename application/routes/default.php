<?php defined('SYSPATH') or die('No direct script access.');

/**
 * Set the routes. Each route must have a minimum of a name, a URI and a set of
 * defaults for the URI.
 */
Route::set('home', '')
	->defaults(array(
		'controller' => 'main',
		'action'     => 'index',
	));

Route::set('entry', 'categories/<category>(/<entry>)')
	->defaults(array(
		'controller' => 'main',
		'action'     => 'entry',
		'entry'      => null,
	));

Route::set('your-inspirations', 'your-inspirations')
	->defaults(array(
		'controller' => 'main',
		'action'     => 'yourinspirations',
	));

Route::set('your-projects', 'your-projects')
	->defaults(array(
		'controller' => 'main',
		'action'     => 'yourprojects'
	));