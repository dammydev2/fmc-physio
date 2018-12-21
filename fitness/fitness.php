<?php 
session_start();
ob_start();

$name = $_SESSION['name'];
$dob = $_SESSION['dob'];
$rec = $_SESSION['rec'];
$num = $_SESSION['num'];
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
						<a class="navbar-brand" href="#"><i class="w3-text-black" ><b>PHYSICAL FITNESS ASSESSMENT</b> </i></a>
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
									<h4 class="title"></h4>
									
								</div>
								<div class="content all-icons">
									<div class="row">
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST" action="cont.php" />
										<input type="text" name="idtwo" value="<?php echo($num)?>" readonly style="display: none;">
										<input type="text" name="rec" value="<?php echo($rec)?>" readonly style="display: none;">
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>NAME  OF CLIENT</b></label>
											<input class="w3-input w3-border w3-round" value="<?php echo($name)?>" readonly name="name" required="" type="text">
											<!--input type="text" name="rec" value="<?php echo($rec) ?>"-->
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Age</b></label>
											<input class="w3-input w3-border w3-round" name="age" type="num" required="" >
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Date of Birth</b></label>
											<input class="w3-input w3-border w3-round" value="<?php echo($dob)?>" readonly name="dob" required="" type="date">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Present Complaint</b></label>
											<input class="w3-input w3-border w3-round" name="complaint" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Date of Assessment</b></label>
											<input class="w3-input w3-border w3-round" name="date" required="" type="date">
										</div>
										
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>History Source</b></label>
											<input class="w3-input w3-border w3-round" name="history" required="" type="text">
										</div>

										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>History</b></label>
											<textarea class="w3-input w3-border w3-round" name="history2" ></textarea>
										</div>
										<div class="col-md-12" ><h5 style="text-align: center;" ><b>MEDICAL HISTORY</b></h5></div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>a. Are you on treatment for any of the following? (Tick as many as applicable)</b></label><br/>
											&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="present_treat" value="high blood pressure" >
											<label class="w3-text-black"><b>High blood pressure</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="present_treat" value="Diabetes">
											<label class="w3-text-black"><b>Diabetes</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="present_treat" value="Asthma">
											<label class="w3-text-black"><b>Asthma</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="present_treat" value="Heart disease">
											<label class="w3-text-black"><b>Heart disease</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="present_treat" value="sickle cell disease" >
											<label class="w3-text-black"><b>Sickle cell disease</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="present_treat" value="others">
											<label class="w3-text-black"><b>Others</b></label>
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>b. Major illness/injuries during the last 12 months: </b></label>
											<textarea class="w3-input w3-border w3-round" name="major_ills" required=""></textarea>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Drug History</b></label>
											<input class="w3-input w3-border w3-round" name="drug_history" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Past Surgical History</b></label>
											<input name="surgical_history" class="w3-input w3-border w3-round" type="num" required="" >
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Family/Social History</b></label>
											<input class="w3-input w3-border w3-round" name="family_history" type="text" required="" >
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
