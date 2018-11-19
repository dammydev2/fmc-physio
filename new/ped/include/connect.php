<?php
session_start();
error_reporting(0);
$servername = "localhost";
$username = "root";
$password = "";
$db = "fmcphy_ped";

// Create connection
$conn = new mysqli($servername, $username, $password,$db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>