<?php  
include "assets/db.php";

if (isset($_POST['continue'])) {
	//$sel = "SELECT * FROM questionnaire ORDER BY id asc ";
	//$query = $conn->query($sel);
	//while ($res = $query-> fetch_assoc()) {
	//	$id = $res[id];
	//	$id = $id + 200;
	//	$idtwo = "roll-".$id."qst";
	//	$_SESSION['idtwo']=$idtwo;
	//}
	extract($_POST);
	$c = count($_POST['exerate']);
	for ($i=0; $i < $c; $i++) { 
		$ins = "INSERT INTO exerate(num,rec,exerate) VALUES('".$_SESSION['idtwo']."','".$_SESSION['rec']."','".$exerate[$i]."')";
		$res = $conn->query($ins);
	}
	$intermittent = $_POST['intermittent'];
	$heart  =$_POST['heart'];
	$breath = $_POST['breath'];
	$smoke = $_POST['smoke'];
	$drink = $_POST['drink'];
	$health = $_POST['health'];
	$regular = $_POST['regular'];
	$type = $_POST['type'];
	$day = $_POST['day'];
	$eat = $_POST['eat'];
	$like = $_POST['like'];
	$idtwo = $_SESSION['idtwo'];
	$ins = "INSERT INTO questionnaire2 VALUES (null,'$idtwo','$intermittent','$heart','$breath','$smoke','$drink','$health','$exercise','$regular','$type','$day','$eat','$like',null,'".$_SESSION['rec']."')";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;fitness5.php');
	}else{
		echo "<script>
		alert:('unable to submit');
		</script>";
		?>
		<meta http-equiv = "refresh" content="0;url=fitness4.php"> 
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
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST" action="" />
										<div class="col-sm-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>7. Intermittent claudication (lameness due to diseased blood flow)</b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="intermittent" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="intermittent" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="intermittent" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>8. Known heart murmur (abnormal heart sound) </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="heart" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="heart" value="no">
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="heart" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>9. Unusual fatigue or shortness of breath with usual activities </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="breath" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="breath" value="no" >
											<label class="w3-text-black"><b>NO</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="breath" value="unsure" >
											<label class="w3-text-black"><b>UNSURE</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-3" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>10. Do you smoke? </b></label><br>
											&nbsp;
											<input class="w3-radio" type="radio" name="smoke" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="smoke" value="no" >
											<label class="w3-text-black"><b>NO</b></label>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>11. Do you drink occasionally? </b></label><br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="drink"  value="yes">
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="drink" value="no" >
											<label class="w3-text-black"><b>NO</b></label>
										</div>
										<div class="col-md-5" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>12. Have you been a member of a health club before? </b></label><br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="health" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio"  name="health" value="no">
											<label class="w3-text-black"><b>NO</b></label>
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>13. Have you been exercising regularly for the past 6 months?                                                   </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="exercise" value="yes">
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="exercise" value="no">
											<label class="w3-text-black"><b>NO</b></label>
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>14. Pleas rate your exercise level on a scale of 1 to 5 (5 indicating very strenuous) for each age range through your present age,</b></label><br>
											<div  class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>AGE  &nbsp;15-20 </b></label>
											<select class="w3-select w3-border w3-round"  name="exerate[]">
												<option value="AGE 15-20 rate = 1" >1</option>
												<option value="AGE 15-20 rate = 2" >2</option>
												<option value="AGE 15-20 rate = 3" >3</option>
												<option value="AGE 15-20 rate = 4" >4</option>
												<option value="AGE 15-20 rate = 5" >5</option>
											</select>
											</div>
											<div  class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>AGE  &nbsp;21-30  </b></label>
											<select class="w3-select w3-border w3-round"  name="exerate[]">
												<option value="AGE 21-30 rate = 1" >1</option>
												<option  value="AGE 21-30 rate = 2">2</option>
												<option  value="AGE 21-30 rate = 3">3</option>
												<option value="AGE 21-30 rate = 4">4</option>
												<option value="AGE 21-30 rate = 5" >5</option>
											</select>
											</div>
											<div  class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>AGE  &nbsp;31-41  </b></label>
											<select class="w3-select w3-border w3-round" name="exerate[]" >
												<option value="AGE 31-40 rate = 1" >1</option>
												<option value="AGE 31-40 rate = 2" >2</option>
												<option value="AGE 31-40 rate = 3" >3</option>
												<option value="AGE 31-40 rate = 4" >4</option>
												<option value="AGE 31-40 rate = 5" >5</option>
											</select>
											</div>
											<div  class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>AGE  &nbsp;41-50   </b></label>
											<select class="w3-select w3-border w3-round" name="exerate[]">
												<option value="AGE 41-50 rate = 1" >1</option>
												<option value="AGE 41-50 rate = 2" >2</option>
												<option value="AGE 41-50 rate = 3" >3</option>
												<option value="AGE 41-50 rate = 4" >4</option>
												<option value="AGE 41-50 rate = 5" >5</option>
											</select>
											</div>
											<div  class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>AGE  &nbsp;51+   </b></label>
											<select class="w3-select w3-border w3-round" name="exerate[]" >
												<option value="AGE 50 + rate = 1" >1</option>
												<option value="AGE 50 + rate = 2" >2</option>
												<option value="AGE 50 + rate = 3" >3</option>
												<option value="AGE 50 + rate = 4" >4</option>
												<option value="AGE 50 + rate = 5" >5</option>
											</select>
											</div>
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>15. Are  you currently involved in regular endurance (cardiovascular) exercise?              </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-radio" type="radio" name="regular" value="yes" >
											<label class="w3-text-black"><b>YES</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											&nbsp;&nbsp;<input class="w3-radio" type="radio" name="regular" value="no" >
											<label class="w3-text-black"><b>NO</b></label>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>If yes, please specify the type of exercise(s)</b></label>
											<input class="w3-input w3-border w3-round" name="type" required="" type="text">
										</div>
										<div class="col-md-2" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>minutes/ day </b></label>
											<input class="w3-input w3-border w3-round" name="day" required="" type="text" required="" >
										</div>
										<div class="col-md-6" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>16. How often do you eat out? times per week.</b></label>
											<input class="w3-input w3-border w3-round" name="eat" required="" placeholder="Times Per Week" type="text">
										</div>
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>17. I would  like to</b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="like" value="Loose weight" >
											<label class="w3-text-black"><b>Loose weight     </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="like" value="Gain weight">
											<label class="w3-text-black"><b> Gain weight      </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="like" value="Feel better" >
											<label class="w3-text-black"><b>     Feel better    </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="like" value=" Look better" >
											<label class="w3-text-black"><b>     Look better       </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="like" value="Live healthier" >
											<label class="w3-text-black"><b>                Live healthier</b></label>
										</div>
										<br/>
										<p>&nbsp;</p>
										<button class="w3-btn w3-blue w3-round" name="continue" >Continue</button>
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
