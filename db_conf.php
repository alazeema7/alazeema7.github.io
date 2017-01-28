<?php
//Constants
define(HOST,'http://<your site>/manager');
define(EMAIL,'<your email>');
define(CURRENCY,'$');
define(PAYPAL_CLIENTID,'');
define(PAYPAL_SECRET,'');


//DB credintials
$server = "localhost";
$name = "root";
$password = "1234";
$database = "manager";

//Webadmin credintials
define(NAME,"admin");
define(PASSWORD,"admin");

$connection = mysql_connect($server,$name,$password) or die(mysql_error());
mysql_select_db($database,$connection) or die(mysql_error());

?>
