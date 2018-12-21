<?php  
include "assets/db.php";

if (isset($_POST['continue'])) {
	$sel = "SELECT * FROM questionnaire ORDER BY id asc ";
	$query = $conn->query($sel);
	while ($res = $query-> fetch_assoc()) {
		$id = $res[id];
		$id = $id + 200;
		$idtwo = "roll-".$id."qst";
		$_SESSION['idtwo']=$idtwo;
	}
	$date  = $_POST['date'];
	$firstname = $_POST['fname'];
	$lastname = $_POST['lname'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$state = $_POST['state'];
	$zip = $_POST['zip'];
	$homephone = $_POST['homephone'];
	$bussinessphone = $_POST['bussinessphone'];
	$age = $_POST['age'];
	$height = $_POST['height'];
	$weight = $_POST['weight'];
	$pain = $_POST['pain'];
	$shortness = $_POST['shortness'];
	$dizziness = $_POST['dizziness'];
	$orthopnea =$_POST['orthopnea'];
	$edema = $_POST['edema'];
	$palpitations = $_POST['palpitations'];
	$idtwo = $_POST['num'];
	$rec = $_POST['rec'];
	$ins = "INSERT INTO fmcphy_fitness.questionnaire VALUES (null,'$idtwo','$date','$firstname','$lastname','$address','$city','$state','$zip','$homephone','$bussinessphone','$age','$height','$weight','$pain','$shortness','$dizziness','$orthopnea','$edema','$palpitations',null,'$rec')";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;fitness4.php');
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
						<a class="navbar-brand" href="#"><i class="w3-text-black" ><b>FITNESS ASSESSMENT QUESTIONNAIRES AND WAIVER</b> </i></a>
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
									<h4 class="title">Please answer all questions accurately and honestly to allow us to fully determine your individual needs.</h4>
									
								</div>
								<div class="content all-icons">
									<div class="row">
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST"  />
										<input class="w3-input w3-border w3-round" readonly value="<?php echo($_SESSION['rec']) ?>" name="rec" required="" type="text" style="display: none;">
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>DATE</b></label>
											<input class="w3-input w3-border w3-round" name="date" required="" type="date">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b> NAME</b></label>
											<input class="w3-input w3-border w3-round" readonly value="<?php echo($_SESSION['name']) ?>" name="fname" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>System Physio Num</b></label>
											<input class="w3-input w3-border w3-round" readonly value="<?php echo($_SESSION['num']) ?>" name="num" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>ADDRESS</b></label>
											<input class="w3-input w3-border w3-round" name="address" required="" type="text" required="" >
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>CITY</b></label>
											<input class="w3-input w3-border w3-round" name="city" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>STATE</b></label>
											<input class="w3-input w3-border w3-round" name="state" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>ZIP</b></label>
											<input class="w3-input w3-border w3-round" name="zip" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>HOME PHONE</b></label>
											<input class="w3-input w3-border w3-round" name="homephone" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>BUSINESS / ALTERNATE PHONE</b></label>
											<input class="w3-input w3-border w3-round" name="bussinessphone" required="" type="num">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Date of Birth</b></label>
											<input class="w3-input w3-border w3-round" readonly value="<?php echo($_SESSION[dob]) ?>" name="age" required="" type="num" >
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>HEIGHT</b></label>
											<input class="w3-input w3-border w3-round" name="height" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>WEIGHT</b></label>
											<input class="w3-input w3-border w3-round" name="weight" required="" type="text">
										</div>
										<div class="col-md-12" ><h5 style="text-align: center;" ><b>
											For questions 1-9. Have you experienced:
										</b></h5></div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>1. Pain or discomfort (or angina equivalent) in the chest, neck, jaw, arms, or other areas
											That may be due to  ischemia (decreased blood flow) </b></label><br/>
											<div class="col-md-3" > </div>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="pain" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio"  name="pain" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio"  name="pain" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>2. Shortness of breath at rest or w/mild exertion </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="shortness" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="shortness" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="shortness" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>3. Dizziness or syncope at rest or w/mild exertion </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="dizziness" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="dizziness" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="dizziness" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>4. Orthopnea/paroxysmal nocturnal dyspnea (short of breath ) at rest or w/mild exertion </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="orthopnea" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="orthopnea" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="orthopnea" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>5. Edema (excessive accumulation of issue fluid) </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="edema" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="edema" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="edema" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>6. Palpitations or tachycardia (sudden rapid heartbeat) </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="palpitations" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="palpitations" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="palpitations" value="unsure">
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										
										<br/>
										<p>&nbsp;</p>
										<button class="w3-btn w3-blue w3-round col-md-12" name="continue" >Continue</button>
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
