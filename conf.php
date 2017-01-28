<?php
session_start();
include "db_conf.php";
if(!isset($_SESSION['logged']) && !($_SESSION['logged']) == true)
{
	include "login.php";
	exit();
}
?>
