<?php
require_once("connect.php");
extract($_POST);
if (isset($_POST['submit'])) {
	$upd = "UPDATE receipt SET rec_num='$rec'";
	$res2 = $conn->query($upd);
	$ins = "INSERT INTO fmcphy_OG.table_1 VALUES(NULL,'$Pname','$rec','$num','$DOB','$dt','$Marital','$Duration','$Address','$code2','$Diagnosis',NULL)";
	$res = $conn->query($ins);
	if ($res === TRUE AND $res2 === TRUE) {
		$_SESSION['num'] = $num;
		$_SESSION['rec'] = $rec;
		$_SESSION['physio'] = $physio;
		header("Location: subjective.php");
	}
	else{
		echo $conn->error;
	}
}
?>