<?php
include "conf.php";
include "header.php";
if(!isset($_GET['page'])) $_GET['page'] = 'home';
switch($_GET['page'])
{
	case 'home':
	{
		include "pages/info.php";
	} break;
	case 'management':
	{
		include "pages/management.php";
	} break;
	case 'actions':
	{
		include "actions.php";
	} break;
	case 'orders':
	{
		include "pages/orders.php";
	} break;
	case 'history':
	{
		include "pages/history.php";
	} break;
	case 'categories':
	{
		include "pages/categories.php";
	} break;
	case 'logout':
	{
		include "pages/logout.php";
	} break;
}
include "footer.php";
?>
