<?php
error_reporting(0);
session_start();
ob_start();
$servername ="localhost";
$username ="root";
$password ="damilola92";
$db_name ="fmcphy_fitness";
$conn = new Mysqli($servername, $username, $password, $db_name);
if ($conn-> connect_errno)
{
	die("connection failed:".$conn->connect_error);
}else
{
	//echo "database connected successfully";
}
?>

