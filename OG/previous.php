<?php
include("includes/connect.php");
if (isset($_POST['submit'])) {	
	extract($_POST);
	$c = count($_POST['apply']);
	for ($a=0; $a < $c; $a++) { 
		$ins = "INSERT INTO fmcphy_OG.previous VALUES(NULL,'$num','$rec','$health','".$apply[$a]."','$information','$Durable','$Explain','$physio','$history')";
		$res = $conn->query($ins);
		if ($res === TRUE) {
			header("Location: chest.php");
		}
	}
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<title> </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Minimal Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
</head>
<body>
	<div id="wrapper">

		<!----->

		<?php include("includes/sidebar.php"); ?>

		<div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="content-main">

				<!--banner-->	
				<div class="banner">

					<h2>
						<a href="index.html">Home</a>
						<i class="fa fa-angle-right"></i>
						<span>Dashboard</span>
					</h2>
				</div>
				<!--//banner-->
				<!--content-->

				<!----->
				<div class="content-bottom">
					<div class="col-md-12 post-top">
						<div class="post">
						</div>
						<div class="col-md-12" style="background-color: white;">
							<h3 class="text-center">PREVIOUS MEDICAL HISTORY</h3>
							<p>&nbsp;</p>
							<div class="col-md-12">
								<form method="POST">
									<div class="form-group">
										<label for="exampleInputEmail1">How would you classify your general health?</label>
										<label>Good: <input type="radio" name="health" value="Good" required></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Fair: <input type="radio" name="health" value="Fair" required></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Poor: <input type="radio" name="health" value="Poor" required></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="text" name="num" value="<?php echo($_SESSION['num']) ?>" style="display: none;">
										<input type="text" name="rec" value="<?php echo($_SESSION['rec']) ?>" style="display: none;">
										<p>&nbsp;</p>
									</div>
									<div class="form-group">
										<label>Please check all that apply:</label>
										<label>Allergies <input type="checkbox" name="apply[]" value="Allergies"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Multiple Sclerosis <input type="checkbox" name="apply[]" value="Multiple Sclerosis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Rheumatic fever <input type="checkbox" name="apply[]" value="Rheumatic fever"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Asthma /Breathing Difficulties <input type="checkbox" name="apply[]" value="Asthma /Breathing Difficulties"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Enlarged Glands <input type="checkbox" name="apply[]" value="Enlarged Glands"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Nausea/Vomiting <input type="checkbox" name="apply[]" value="Nausea/Vomiting"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Ringing of the ears <input type="checkbox" name="apply[]" value="Ringing of the ears"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Bronchitis <input type="checkbox" name="apply[]" value="Bronchitis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Fever  <input type="checkbox" name="apply[]" value="Fever"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Night Pain <input type="checkbox" name="apply[]" value="Night Pain"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Seizures/Epilepsy <input type="checkbox" name="apply[]" value="Seizures/Epilepsy"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Cancer <input type="checkbox" name="apply[]" value="Cancer"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Head injury <input type="checkbox" name="apply[]" value="Head injury"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Osteoarthritis <input type="checkbox" name="apply[]" value="Osteoarthritis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Sinusitis <input type="checkbox" name="apply[]" value="Sinusitis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Chest pain/Angina <input type="checkbox" name="apply[]" value="Chest pain/Angina"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Headaches <input type="checkbox" name="apply[]" value="Headaches"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Osteoporosis <input type="checkbox" name="apply[]" value="Osteoporosis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Smoking History <input type="checkbox" name="apply[]" value="Smoking History"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Heart Disease <input type="checkbox" name="apply[]" value="Heart Disease"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Pacemaker <input type="checkbox" name="apply[]" value="Pacemaker"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Stroke/TIA <input type="checkbox" name="apply[]" value="Stroke/TIA"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Chronic Colds <input type="checkbox" name="apply[]" value="Chronic Colds"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>High Blood Pressure <input type="checkbox" name="apply[]" value="High Blood Pressure"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Parkinson’s Disease <input type="checkbox" name="apply[]" value="Parkinson’s Disease"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Surgeries <input type="checkbox" name="apply[]" value="Surgeries"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Chronic Laryngitis <input type="checkbox" name="apply[]" value="Chronic Laryngitis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Hypoglycaemia <input type="checkbox" name="apply[]" value="Hypoglycaemia"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Physical Abnormalities <input type="checkbox" name="apply[]" value="Physical Abnormalities"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Thyroid Disease <input type="checkbox" name="apply[]" value="Thyroid Disease"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Measles <input type="checkbox" name="apply[]" value="Measles"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Depression <input type="checkbox" name="apply[]" value="Depression"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Meningitis <input type="checkbox" name="apply[]" value="Meningitis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Polio <input type="checkbox" name="apply[]" value="Polio"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Tuberculosis <input type="checkbox" name="apply[]" value="Tuberculosis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Diabetes: Type I or  II <input type="checkbox" name="apply[]" value="Diabetes: Type I or  II"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Metal Implants <input type="checkbox" name="apply[]" value="Metal Implants"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Pregnancy[Currently] <input type="checkbox" name="apply[]" value="Pregnancy[Currently]"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Whooping Cough <input type="checkbox" name="apply[]" value="Whooping Cough"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Dizziness/Fainting <input type="checkbox" name="apply[]" value="Dizziness/Fainting"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Mumps <input type="checkbox" name="apply[]" value="Mumps"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Rheumatoid Arthritis <input type="checkbox" name="apply[]" value="Rheumatoid Arthritis"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="form-group">
										<label>Is there any other information concerning your medical history that we should know about?</label>
										<textarea class="form-control" name="information"></textarea>
									</div>
									<div class="form-group">
										<label>Have you ever purchased or rented Durable Medical Equipments, Orthotocs, Prosthetics. Or Supplies?</label><br>
										<label>Yes <input type="radio" name="Durable" value="Yes"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>No <input type="radio" name="Durable" value="No"></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<div class="form-group">
										<label>Explain</label>
										<textarea class="form-control" name="Explain"></textarea>
									</div>
									<div class="form-group">
										<input type="checkbox" required name=""> I have reviewed the information provided and information are complete
									</div>
									<div class="form-group">
										<label>Therapist Name</label>
										<input type="physio" name="physio" class="form-control" readonly value="<?php echo($_SESSION['physio']) ?>">
									</div>
									<div class="form-group">
										<label>Please List Previous Medical History or Co-Morbidities that May Impact Rate of Recovery:</label>
										<textarea class="form-control" name="history"></textarea>
									</div>
									<button type="submit" class="btn btn-primary" name="submit">Next</button>
									<div style="height: 70px;"></div>
								</form>
							</div>
						</div>
						<div class="col-md-12" style="height: 30px;"></div>
						<div class="col-md-12" style="height: 30px; text-align: center; padding: 20px 0px 20px 20px;">
							&copy; &middot; <?php echo date("Y") ?> &middot; all rights reserved &middot; FMCA computer department &middot;
						</div>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<!---->
		<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
		<script src="js/bootstrap.min.js"> </script>
	</body>
	</html>

