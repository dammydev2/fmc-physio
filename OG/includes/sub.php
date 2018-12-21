<?php
include("connect.php");
if (isset($_POST['submit'])) {
	extract($_POST);
	$c = count($_POST['conditions']);
	for ($i=0; $i < $c; $i++) { 
			$ins = "INSERT INTO fmcphy_OG.table_2 VALUES(NULL,'$reason','$num','$rec','".$conditions[$i]."')";
			$res = $conn->query($ins);
	}

	$c = count($_POST['limb']);
	for ($i=0; $i < $c; $i++) { 
			$ins = "INSERT INTO fmcphy_OG.limb VALUES(NULL,'$num','$rec','".$limb[$i]."')";
			$res = $conn->query($ins);
	}

	$c = count($_POST['muscles']);
	for ($i=0; $i < $c; $i++) { 
			$ins = "INSERT INTO fmcphy_OG.muscles VALUES(NULL,'$Frequency','$num','$rec','".$muscles[$i]."')";
			$res = $conn->query($ins);
	}

	$c = count($_POST['treatment']);
	for ($i=0; $i < $c; $i++) { 
			$ins = "INSERT INTO fmcphy_OG.treatment VALUES(NULL,'$prior','$num','$rec','".$treatment[$i]."','$explain','$dt','$physio','$history')";
			$res = $conn->query($ins);
	}
	if ($res === TRUE) {
		header("Location: ../current.php");
	}
	else {
		echo $conn->error;
	}
}
?>









