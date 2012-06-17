<?php defined('SYSPATH') or die('No direct script access.');

class View_Page_Main_Index extends Abstract_View_Page {

	public function categories()
	{
		$category_route = Route::get('entry');

		return array(
			array(
				'name'  => 'Bars',
				'image' => Media::url('images/categories/bar.png'),
				'url'   => URL::site($category_route->uri(array(
					'category' => 'bar'
				))),
			),
			array(
				'name'  => 'Cabinets',
				'image' => Media::url('images/categories/cabinets.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'cabinets'
				))),
			),
			array(
				'name'  => 'Entertainment',
				'image' => Media::url('images/categories/entertainment.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'entertainment'
				))),
			),
			array(
				'name'  => 'Fireplaces',
				'image' => Media::url('images/categories/fireplaces.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'fireplaces'
				))),
			),
			array(
				'name'  => 'Kids',
				'image' => Media::url('images/categories/kids.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'kids'
				))),
			),
			array(
				'name'  => 'Kitchen',
				'image' => Media::url('images/categories/kitchen.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'kitchen'
				))),
			),
			array(
				'name'  => 'Outdoors',
				'image' => Media::url('images/categories/outdoors.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'outdoors'
				))),
			),
			 array(
				'name'  => 'Bedroom',
				'image' => Media::url('images/categories/bedroom.png'),
				'url'  => URL::site($category_route->uri(array(
					'category' => 'bedroom'
				))),
			),
		);
	}
}
