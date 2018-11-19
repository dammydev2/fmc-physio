<?php
include("connect.php");
if (isset($_POST['submit'])) {
	$num = $_POST['id'];
	$reason = $_POST['reason'];
	$prior = $_POST['cardType'];
	$specify = $_POST['specify'];
	$explain = $_POST['explain'];
	$appointment = $_POST['appointment'];
	$physio = $_POST['physio'];
	$subject = $_POST['subjective'];
	$rec = $_POST['rec'];
	$ins = "INSERT INTO fmcphy_ped.subjective VALUES(NULL,'$num','$reason','$prior','$specify','$explain','$appointment','$physio','$subject','$rec')";
	$res = $conn->query($ins);
	if ($res === TRUE) {
		$_SESSION['num'] = $num;
		$_SESSION['rec'] = $rec;
		header("Location: complaint.php");
	}
	else{
		echo $conn->error;
	}
}