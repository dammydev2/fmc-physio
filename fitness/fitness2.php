<?php  
include "assets/db.php";
if (isset($_POST['submit'])) {
	$idtwo = $_SESSION['idtwo'];
    $partfit = $_POST['partfit'];
    $duration = $_POST['duration'];
    $rstop = $_POST['rstop'];
    $rfit = $_POST['rfit'];
    $others =$_POST['others'];
    $signature = $_POST['signature'];
    $ddate = $_POST['ddate'];
    $height = $_POST['height'];
    $weight = $_POST['weight'];
    $bm = $_POST['bm'];
    $vitals = $_POST['vitals'];
    $bp = $_POST['bp'];
    $pr = $_POST['pr'];
    $waist = $_POST['waist'];
    $hip = $_POST['hip'];
    $ratio = $_POST['ratio'];
    $heartrate = $_POST['heartrate'];
    $plan = $_POST['plan'];
    $means = $_POST['means'];
    $rec = $_POST['rec'];
	$ins = "INSERT INTO assessment2 VALUES (null,'$idtwo','$partfit',' $duration','$rstop','$rfit','$others',' $signature','$ddate','$height','$weight',' $bm','$vitals','$bp','$pr','$waist','$hip','$ratio','$heartrate','$plan','$means','$rec')";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;print.php');
	}else{
		echo "<script>
		alert:('unable to submit');
		</script>";
		?>
		<?php
	}
	echo $conn->error;
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
									<h4 class="title">HISTORY OF FITNESS PROGRAM</h4>
									
								</div>
								<div class="content all-icons">
									<div class="row">
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST" />
										<input type="text" name="rec" value="<?php echo($_SESSION['rec']) ?>" style="display: none;">
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Previous participant in fitness program(s)</b></label><br/>
											&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="partfit" value="yes" >
											<label class="w3-text-black"><b>Yes</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="partfit" value="no">
											<label class="w3-text-black"><b>No</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Duration of program</b></label>
											<input class="w3-input w3-border w3-round" name="duration"  required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Reason(s) for stopping</b></label>
											<input class="w3-input w3-border w3-round" name="rstop"  required="" type="text">
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Major reason(s) for wanting to participate in this fitness program:</b></label><br/>
											&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="rfit" value="want to shed some weight">
											<label class="w3-text-black"><b> want to shed some weight </b></label>&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="rfit" value="I want to be more fit">
											<label class="w3-text-black"><b>I want to be more fit</b></label>&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="rfit" value="want to improve my shape">
											<label class="w3-text-black"><b> want to improve my shape</b></label>&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="rfit" value="to regain my previous shape after child birth" >
											<label class="w3-text-black"><b>to regain my previous shape after child birth</b></label>
											
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Others </b></label>
											<textarea class="w3-input w3-border w3-round"  name="others" required=""></textarea>
										</div>
										<div class="col-md-12" >
											<p class="w3-text-black" style="text-align: center;" ><b>I hereby indicate my willingness to participate in the test and exercise program and to comply with all instructions I may be given. </b></p>
										</div>
										<div class="col-md-4" >
											<input class="w3-input" name="signature" type="text">
											&nbsp;&nbsp;<label class="w3-text-black" style="text-align: center;" ><b>Signature</b></label>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black" style="display: none;" ><b>Drug History</b></label>
											<input class="w3-input w3-border w3-round" style="display: none;" type="text">
										</div>
										<div class="col-md-4" >
											<input class="w3-input" type="text" name="ddate" required="" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Date</b></label>
										</div>
										<div class="col-md-12 w3-text-black" ><h5 style="text-align: center;" ><b>EXAMINATION</b>&nbsp;(ANTHROPOMETTRIC MEASUREMENT)</h5>
											
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Height (m)</b></label>
											<input class="w3-input w3-border w3-round" name="height" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Weight(Kg)</b></label>
											<input class="w3-input w3-border w3-round" name="weight" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>BMI(Kg/m2) </b></label>
											<input class="w3-input w3-border w3-round" name="bm" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>VITALS</b></label>
											<input class="w3-input w3-border w3-round" name="vitals" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>-BP (mmHg) </b></label>
											<input class="w3-input w3-border w3-round" name="bp" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>-PR(bpm) </b></label>
											<input class="w3-input w3-border w3-round" type="text" name="pr" required="" >
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Waist Circumference(cm) </b></label>
											<input class="w3-input w3-border w3-round" name="waist" required="" type="num" required="" >
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Hip Circumference (cm) </b></label>
											<input class="w3-input w3-border w3-round" name="hip" required="" type="num" required="" >
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Waist to Hip Ratio</b></label>
											<input class="w3-input w3-border w3-round" name="ratio" required="" type="num" required="" >
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Maximum Heart Rate(220-age) </b></label>
											<input class="w3-input w3-border w3-round" name="heartrate" required="" type="num" required="" >
										</div>
										<div class="col-md-12 w3-text-black" >
											<p style="text-align: center;"  ><b>NB: Target Heart Rate for Moderate Intensity= 60-65% of Max HR</b></p>
										</div>
										<div class="col-md-12 w3-text-black" ><h5  ><b>OUTFITS FOR FITNESS AND PRECAUTION</b></h5>
											
										</div>
										<div class="col-md-12 w3-text-black" >
											<p style="text-align: center;"  ><b>      -   Wear appropriate outfit    -     No food for 2 hours    -    No caffeinated beverages.
												-    No alcohol for 24 hours before assessment / testing  <br>  -  No smoking for 2 hours before testing.
											</b></p>
										</div>
										<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>PLAN OF TREATMENT </b></label>
											<textarea class="w3-input w3-border w3-round" name="plan" required=""></textarea>
										</div>
										<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>MEANS OF TREATMENT</b></label>
											<textarea class="w3-input w3-border w3-round" name="means" required="" ></textarea>
										</div>
										<br/>
										<p>&nbsp;</p>
										<button class="w3-btn w3-blue w3-round" name="submit">Submit</button>
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
