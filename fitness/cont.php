<?php  
include "assets/db.php";
error_reporting(E_ALL);

if (isset($_POST['continue'])) {
	/*$sel = "SELECT * FROM assessment ORDER BY id asc ";
	$query = $conn->query($sel);
	while ($res = $query-> fetch_assoc()) {
		$id = $res[id];
		$id = $id + 200;
		$idtwo = "roll-".$id."fit";
		$_SESSION['idtwo']=$idtwo;
	}
	$sel = "SELECT * FROM recieptnum ";
	$query = $conn->query($sel);
	while ($res = $query-> fetch_assoc()) {
		$rec = $res[num];
		$rec2 = $rec + 1;
		//$reciept = $rec; 
		$_SESSION['idtwo']=$idtwo;
	}*/
	$name = $_POST['name'];
	$age = $_POST['age'];
	$dob = $_POST['dob'];
	$complaint = $_POST['complaint'];
	$date = $_POST['date'];
	$history = $_POST['history'];
	$history2 = $_POST['history2'];
	$present_treat = $_POST['present_treat'];
	$major_ills = $_POST['major_ills'];
	$drug_history = $_POST['drug_history'];
	$surgical_history = $_POST['surgical_history'];
	$family = $_POST['family_history'];
	$idtwo = $_POST['idtwo'];
	$rec = $_POST['rec'];
	$ins = "INSERT INTO fmcphy_fitness.assessment VALUES (null,'$idtwo','$name','$age','$dob','$complaint','$date','$history','$history2','$present_treat','$major_ills','$drug_history','$surgical_history','$family',null,$rec)";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;fitness2.php');
	}else{
		echo "<script>
		alert:('unable to submit');
		</script>";

	}
	echo $conn->error;
}
?>