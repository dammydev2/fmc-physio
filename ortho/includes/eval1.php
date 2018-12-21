<?php
include("connect.php");
if (isset($_POST['submit'])) {
	$name = $_POST['Pname'];
	$DOB = $_POST['DOB'];
	$num = $_POST['num'];
	$rec = $_POST['rec'];
	$dt = $_POST['dt'];
	$diagnosis = $_POST['diagnosis'];
	$onset = $_POST['onset'];
	$occupation = $_POST['occupation'];
	$goals = $_POST['goals'];
	$ins = "INSERT INTO fmcphy_ortho.table_1 VALUES(NULL,'$name','$DOB','$num','$rec','$dt','$diagnosis','$onset','$occupation','$goals','$code2',NULL)";
	$res = $conn->query($ins);
	$_SESSION['num'] = $num;
	$_SESSION['rec'] = $rec;
	if ($res === TRUE) {	
		$upd = "UPDATE receipt SET rec_num='$rec'";
		$res = $conn->query($upd);
		?>
		<meta http-equiv="refresh" content="0; URL=http:next1.php">
		<?php
	}
}
?>