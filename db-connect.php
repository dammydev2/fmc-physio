<?php
error_reporting(0);
session_start();
ob_start();
$servername ="localhost";
$username ="root";
$password ="";
$db_name ="fmcphy_gen";
$gen = new Mysqli($servername, $username, $password, $db_name);
if ($gen->connect_errno)
{
	die("connection failed:".$conn->connect_error);
}else
{
	//echo "database connected successfully";
}