<?php
include "conf.php";
switch($_GET['action'])
{
	case 'deleteProduct':
	{
		$query = 'DELETE FROM products WHERE id = '.$_POST['id'];
		mysql_query($query) or die(mysql_error());
		echo "success";
	} break;
	case 'deleteCategory':
	{
		$query = 'DELETE FROM categories WHERE id = '.$_POST['id'];
		mysql_query($query) or die(mysql_error());
		echo "success";
	} break;
	case 'received':
	{
		$query = "UPDATE orders SET received = 1 WHERE id = ".$_POST['id'];
		mysql_query($query) or die(mysql_error());
		echo "success";
	} break;
}
?>
