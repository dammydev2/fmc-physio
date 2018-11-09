<?php 
include('..\includes/db.php');
error_reporting(E_ALL);
if(isset($_POST['register']))
{
	$Name = $_POST['name'];
	echo $User = $_POST['user'];
	$Pass = $_POST['pass'];
	$pass2 = $_POST['pass2'];
	if ($Pass != $pass2) {
		echo "<script>
		alert('Password Mismatched');
		</script>";
		?>
		<meta http-equiv="refresh" content="0;url=..\phy.php">
		<?php
	}
	else{
		$sel = "SELECT * FROM physio WHERE user='$User'";
		$res = $conn->query($sel);
		if ($res-> num_rows > 0) {
			echo "<script>
			alert('Username already exist');
			</script>";
			?>
			<meta http-equiv="refresh" content="0;url=..\phy.php">
			<?php
		}
		else{
			$ins = "INSERT INTO physio(name,user,pass) VALUES('$Name','$User','$Pass')";
			$res = $conn->query($ins);
			if ($res === TRUE) {
				echo "<script>
				alert('User added successfully');
				</script>";
				?>
				<meta http-equiv="refresh" content="0;url=..\phy.php">
				<?php
			}
		}
	}
}