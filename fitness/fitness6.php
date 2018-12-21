<?php  
include "assets/db.php";

if (isset($_POST['submit'])) {
	//$sel = "SELECT * FROM questionnaire ORDER BY id asc ";
	//$query = $conn->query($sel);
	//while ($res = $query-> fetch_assoc()) {
	//	$id = $res[id];
	//	$id = $id + 200;
	//	$idtwo = "roll-".$id."qst";
	//	$_SESSION['idtwo']=$idtwo;
	//}
	$alcohol = $_POST['alcohol'];
	$quantity = $_POST['quantity'];
	$measurement = $_POST['measurement'];
	$nonalcohol = $_POST['nonalcoholic'];
	$amount = $_POST['amount'];
	$measurement2 = $_POST['measurement2'];
	$smoking = $_POST['smoking'];
	$packets = $_POST['packets'];
	$stimulants = $_POST['stimulants'];
	$cup = $_POST['cups'];
	$eating = $_POST['eating'];
	$freq = $_POST['freq'];
	$type = $_POST['type'];
 	$idtwo = $_SESSION['idtwo'];
	$ins = "INSERT INTO questionnaire4 VALUES (null,'$idtwo','$alcohol','$quantity','$measurement','$nonalcohol','$amount','$measurement2','$smoking','$packets','$stimulants','$cup','$eating','$freq','$type','".$_SESSION['rec']."')";
	$result = $conn->query($ins);
	if ($result === TRUE) {
		echo "<script>
		alert('record submited successfully');
		</script>";
		$_SESSION['idtwo'] = $idtwo;
		header('refresh:0;print2.php');
	}else{
		echo "<script>
		alert:('unable to submit');
		</script>";
		?>
		<meta http-equiv = "refresh" content="10000;url=fitness6.php"> 
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
									<h4 class="title">DRINKING HABIT</h4>
								</div>
								<div class="content all-icons">
									<div class="row">
										<form class="w3-container w3-light-grey w3-border w3-round" method="POST"  />
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Alcohol</b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="alcohol" value="Hot drink" >
											<label class="w3-text-black"><b>Hot drink</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="alcohol" value="Beer">
											<label class="w3-text-black"><b>Beer</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="alcohol" value="Palm wine" >
											<label class="w3-text-black"><b>Palm wine</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="alcohol" value="wine" >
											<label class="w3-text-black"><b>Wine</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="alcohol" value="None" >
											<label class="w3-text-black"><b>None</b></label>
										</div>
										<div class="col-md-5" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Amount per week   </b></label>
											<input class="w3-input w3-border w3-round" name="quantity" required="" type="text">
										</div>
										<div class="col-md-7" >
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="w3-text-black"><b></b></label><br>
											&nbsp;
											<input class="w3-radio" type="radio" name="measurement" value="Short" >
											<label class="w3-text-black"><b>Short </b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="measurement" value="Glass" >
											<label class="w3-text-black"><b>Glass</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="measurement" value="Bottles" >
											<label class="w3-text-black"><b>Bottles</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<!-- non alcoholic -->
										<div class="col-md-12" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Non-alcoholic (other than water or soda water): </b></label>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="nonalcoholic" value="Soft drinks" >
											<label class="w3-text-black"><b>Soft drinks</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="nonalcoholic"  value="Fruit juice">
											<label class="w3-text-black"><b>Fruit juice</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

											<input class="w3-check" type="checkbox" name="nonalcoholic" value="Fruit drink"  >
											<label class="w3-text-black"><b>Fruit drink</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-check" type="checkbox" name="nonalcoholic" value="None" >
											<label class="w3-text-black"><b>None</b></label>
										</div>
										<div class="col-md-5" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Amount per week   </b></label>
											<input class="w3-input w3-border w3-round" name="amount" required="" type="text">
										</div>
										<div class="col-md-7" >
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label class="w3-text-black"><b></b></label><br>
											&nbsp;
											
											<input class="w3-radio" type="radio" name="measurement2" value="Glass" >
											<label class="w3-text-black"><b>Glass</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<input class="w3-radio" type="radio" name="measurement2" value="Bottles" >
											<label class="w3-text-black"><b>Bottles</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										</div>
										<div class="col-md-12" >
											<div class="col-md-5" >
												&nbsp;&nbsp;<label class="w3-text-black"><b>Smoking </b></label>
												&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="smoking" value="Cigarette" >
												<label class="w3-text-black"><b>Cigarette</b></label>&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="smoking" value="Cigar" >
												<label class="w3-text-black"><b>Cigar</b></label>&nbsp;&nbsp;
												<input class="w3-check" type="checkbox" name="smoking" value="None" >
												<label class="w3-text-black"><b>None</b></label>
											</div>
											<div class="col-md-7" >

												&nbsp;&nbsp;<label class="w3-text-black"><b>Stimulants </b></label>
												&nbsp;&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="stimulants" value="Coffee" >
												<label class="w3-text-black"><b>Coffee</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="w3-check" type="checkbox" name="stimulants" value="tea" >
												<label class="w3-text-black"><b>Tea</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input class="w3-check" type="checkbox" name="stimulants" value="kolanut" >
												<label class="w3-text-black"><b> Kolanut</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input class="w3-check" type="checkbox" name="stimulants" value="bitter kola" >
												<label class="w3-text-black"><b> Bitter kola</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input class="w3-check" type="checkbox" name="stimulants" value="none" >
												<label class="w3-text-black"><b> None</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
											</div>
										</div>
										<div class="col-md-12" >
											<div class="col-md-3" >
												&nbsp;&nbsp;<label class="w3-text-black"><b>No of packs/sticks per week   </b></label>
												<input class="w3-input w3-border w3-round" name="packets" placeholder="For Smoking" required="" type="text">
											</div>
											<div class="col-md-2" >
												&nbsp;&nbsp;<label class="w3-text-black"><b>   </b></label>
												<input style="display: none;" class="w3-input w3-border w3-round" type="text">
											</div>
											<div class="col-md-3" >
												&nbsp;&nbsp;<label class="w3-text-black"><b>No of cups/nuts per week   </b></label>
												<input class="w3-input w3-border w3-round" name="cups" required="" placeholder="For Stimulants" type="text">
											</div>
											<div class="col-md-5">
												&nbsp;&nbsp;<label class="w3-text-black"><b>   </b></label>
												<input style="display: none;" class="w3-input w3-border w3-round" type="text">
											</div>
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Eating: No of major meals per day    </b></label>
											<input class="w3-input w3-border w3-round" name="eating" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Frequency of snacks in between meals per day   </b></label>
											<input class="w3-input w3-border w3-round" name="freq" required="" type="text">
										</div>
										<div class="col-md-4" >
											&nbsp;&nbsp;<label class="w3-text-black"><b>Types of snacks  </b></label>
											<input class="w3-input w3-border w3-round" name="type" required="" type="text">
										</div>
										&nbsp;
										<br/>
										&nbsp;<br>
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
