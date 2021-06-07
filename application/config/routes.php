<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$route['default_controller'] = "home";
// $route['default_controller'] = "access/users/login";
$route['admin']  				= "access/users/login";
$route['user']   				= "access/subscriber/login";
  
$route['about']                 = "home/about";
$route['food_pdf']              = "home/food_pdf";
$route['service']    	        = "home/services";
$route['room']    	            = "home/room";
$route['spa']    	            = "home/spa";
$route['restaurant']    	    = "home/restaurant";
$route['saloon']    	        = "home/saloon";
$route['conference_hall']    	= "home/conference_hall";
$route['convention_center']    	= "home/convention_center";
$route['food_menu']    	        = "home/food_menu";
$route['team']    	            = "home/team";
$route['image_gallery']    	    = "home/image_gallery";
$route['video_gallery']    	    = "home/video_gallery";
$route['blog']    	            = "home/blog";
$route['faq']    	            = "home/faq";
$route['contact']               = "home/contact";

$route['suite']                 = "home/suite";
$route['deluxe_vip']            = "home/deluxe_vip";
$route['single_room']           = "home/single_room";
$route['deluxe_twin']           = "home/deluxe_twin";
$route['reservation']           = "home/reservation";
$route['reserv_view/(:any)']    = "home/reserv_view/$1";


$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */