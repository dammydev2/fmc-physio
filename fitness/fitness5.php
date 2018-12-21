<?php  
include "assets/db.php";

if (isset($_POST['continue'])) {
	$name = $_POST['name'];
	$clinicnum = $_POST['clinicnum'];
	$age = $_POST['age'];
	$gender = $_POST['gender'];
	$occupation = $_POST['occupation'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$lying = $_POST['lying'];
	$walking = $_POST['walking'];
	$driving = $_POST['driving'];
	$standing = $_POST['standing'];
	$kneeling = $_POST['kneeling'];
	$bending  = $_POST['bending'];
	$walkinghrs = $_POST['walkinghrs'];
	$sleepinghrs = $_POST['sleepinghrs'];
	$leisure = $_POST['leisure'];
	$idtwo = $_SESSION['idtwo'];
	$ins = "INSERT INTO questionnaire3 VALUES (null,'$idtwo','$name','$clinicnum','$age','$gender','$occupation','$address','$phone','$lying','$walking','$driving ','$standing','$kneeling','$bending','$walkinghrs','$sleepinghrs','$leisure','".$_SESSION['rec']."')";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;fitness6.php');
	}else{
	echo $conn->error;
}
}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="icon" type="image/png" href="assets/img/favicon.ico">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Light Bootstrap Dashboard by Creative Tim</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
	<meta name="viewport" content="width=device-width" />


	<!-- Bootstrap core CSS     -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/w3.css" rel="stylesheet" />

	<!-- Animation library for notifications   -->
	<link href="assets/css/animate.min.css" rel="stylesheet"/>

	<!--  Light Bootstrap Table core CSS    -->
	<link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


	<!--  CSS for Demo Purpose, don't include it in your project     -->
	<link href="assets/css/demo.css" rel="stylesheet" />


	<!--     Fonts and icons     -->
	<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
	<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

			<!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


			<?php include "nav.php" ;?>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#"><i class="w3-text-black" ><b>PHYSIOTHERAPY AND FITNESS CLINIC - PHYSICAL FITNESS ASSESSMENT FORM</b> </i></a>
					</div>
					<div class="collapse navbar-collapse">

						<ul class="nav navbar-nav navbar-right">
							<li>
								<a href="">
									<p>Account</p>
								</a>
							</li>

							<li>
								<a href="#">
									<p>Log out</p>
								</a>
							</li>
							<li class="separator hidden-lg hidden-md"></li>
						</ul>
					</div>
				</div>
			</nav>


			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">202 Awesome Stroke Icons</h4>
								</div>
								<div class="content all-icons">
									<div class="row">
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST"  />
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>NAME</b></label>
											<input class="w3-input w3-border w3-round" value="<?php echo($_SESSION['name']) ?>" name="name" required="" readonly type="text">
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>CLINIC NUMBER</b></label>
											<input class="w3-input w3-border w3-round" name="clinicnum" required="" type="num" required="" >
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Date of Birth</b></label>
											<input class="w3-input w3-border w3-round" readonly value="<?php echo($_SESSION['dob']) ?>" name="age" required="" type="num">
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>GENDER </b></label>
											&nbsp;<br>
											<input class="w3-radio" type="radio" name="gender" value="m" >
											<label class="w3-text-black"><b>M</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="gender" value="f" >
											<label class="w3-text-black"><b>F</b></label>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>OCCUPATION</b></label>
											<input class="w3-input w3-border w3-round" name="occupation" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>ADDRESS</b></label>
											<input class="w3-input w3-border w3-round" name="address" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>PHONE</b></label>
											<input class="w3-input w3-border w3-round" name="phone" required="" type="text">
										</div>
										<div class="col-md-12" >
											<p class="w3-text-red" style="text-align: center;" ><b>Daily activities please assign numbers 1 to 7 to the following activities to indicate the relative amount of time you spend on each of them. Assign 7 to the activity/activities you are most involved in, and 1 to the one (s) you are least involved in during the walking hours of an average day. </b></p>
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>lying (not sleeping)</b></label>
											<input class="w3-input w3-border w3-round" name="lying" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>walking</b></label>
											<input class="w3-input w3-border w3-round" name="walking" required="" type="text">
										</div>
										
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>driving (within town, on high way)</b></label>
											<input class="w3-input w3-border w3-round" name="driving" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>standing (kitchen work, teaching etc.)           </b></label>
											<input class="w3-input w3-border w3-round" name="standing" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>kneeling (praying) </b></label>
											<input class="w3-input w3-border w3-round" name="kneeling" required="" type="text">
										</div>
										<div class="col-md-8" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>bending (sweeping, lacing/buckling shoes, bathing small children, changing baby’s diaper etc.) </b></label>
											<input class="w3-input w3-border w3-round" name="bending" required="" type="text">
										</div>
										<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>How do you share your 24 hour day between walking and sleeping?</b></label><br>
											<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Walking  Hours</b></label>
											<input class="w3-input w3-border w3-round" name="walkinghrs" required="" type="text">
											</div>
											<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>sleeping Hours</b></label>
											<input class="w3-input w3-border w3-round" name="sleepinghrs" required="" type="text">
											</div>
										</div>
										<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Leisure-time activities/sporting activities during last 12 months</b></label><br>&nbsp; <br>
											<textarea class="w3-input w3-border w3-round" name="leisure" required="" ></textarea>
										</div>
										<br/>
										<p>&nbsp;</p>
										<button class="w3-btn w3-blue w3-round" name="continue">Continue</button>
										<p>&nbsp;</p>
									</form>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<?php include "footer.php"; ?>
	</div>
</div>
</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>


</html>
