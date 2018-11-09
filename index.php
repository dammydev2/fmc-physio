<?php
include("db-connect.php");
if(isset($_POST['submit'])){
	extract($_POST);
	//echo $user;
	$sel = "SELECT * FROM login WHERE user='$User' AND pass='$password' AND type='$type'";
	$res = $gen->query($sel);
	if ($res->num_rows == 1) {
		if($type == "front"){
			header("Location: front");
		}
		if($type == "ped"){
			header("Location: new/ped/index.php");
		}
		if($type == "phy"){
			header("Location: fmcphy/muscle.php");
		}
		if($type == "occ"){
			header("Location: Occupation");
		}
		if($type == "ort"){
			header("Location: Ortho");
		}
	}
	else{
		echo "<script>
		alert('No record found');
		</script>";
	}
}
?>
<!DOCTYPE HTML>
<html>

<head>
	<title></title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Spin Login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<!-- Stylesheets -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link href="css/Bootstrap.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--fonts-->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:200,200i,300,300i,400,400i,600,600i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<!--//fonts-->
</head>

<body>
	<h1 style="color: #fff;">FMC physio Login</h1>
	<div class="clear-loading spinner">
		<span></span>
	</div>
	<div class="w3ls-login box box--big">
		<!-- form starts here -->
		<form action="#" method="POST">
			<div class="agile-field-txt">
				<label><i class="fa fa-user" aria-hidden="true"></i> User type &nbsp;&nbsp;&nbsp;&nbsp;</label>
				<select name="type" class="form-control col-sm-5">
					<option value="front">Front Desk</option>
					<option value="ped">Pedratic</option>
					<option value="phy">Neurology</option>
					<option value="occ">Occupation</option>
					<option value="ort">ORTHOPAEDIC</option>
				</select>
			</div>
			<div class="agile-field-txt">
				<label><i class="fa fa-user" aria-hidden="true"></i> Username </label>
				<input type="text" name="User" placeholder="Enter User Name" />
			</div>
			<div class="agile-field-txt">
				<label><i class="fa fa-unlock-alt" aria-hidden="true"></i> password </label>
				<input type="password" name="password" placeholder="Enter Password" id="myInput" />
				<div class="agile_label">
					<input id="check3" name="check3" type="checkbox" value="show password" onclick="myFunction()">
					<label class="check" for="check3">Show password</label>
				</div>
				<div class="agile-right">
					<a href="#">forgot password?</a>
				</div>
			</div>
			<!-- script for show password -->
			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
			</script>
			<!-- //end script -->
			<input type="submit" value="LOGIN" name="submit">
		</form>
	</div>
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<!--p>© 2018 Spin Login Form . All Rights Reserved | Design by
			<a href="http://w3layouts.com/" target="_blank">W3layouts</a>
		</p-->
	</div>
	<!--//copyright-->
</body>
</html>