<?php
include("includes/connect.php");
$physio = $_SESSION['physio'];
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
							<h3 class="text-center">SUBJECTIVE</h3>
							<p>&nbsp;</p>
							<form method="POST" action="includes/sub.php" class="col-md-12">
								<p>&nbsp;</p>
								<div class="form-group">
									<label for="exampleInputEmail1">What are you seeking treatment for?</label>
									<input type="text" name="reason" required class="form-control" id="exampleInputEmail1" />
									<input type="text" name="num" value="<?php echo($_SESSION['num']) ?>"  style="display: none;">
									<input type="text" name="rec" value="<?php echo($_SESSION['rec']) ?>" style="display: none;">
									<p>&nbsp;</p>
								</div>
								<div class="form-group">
									<label>Do you have any of the following conditions?</label>
									Nausea and vomiting: <input type="checkbox" name="conditions[]" value="Nausea and vomiting">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<p class="text-center text-bold"><b>Musculoskeletal problems:</b> </p>
									Low back pain: <input type="checkbox" name="conditions[]" value="Low back pain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									Radiating pain: <input type="checkbox" name="conditions[]" value="Radiating pain">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									Numbness or tingling sensations: <input type="checkbox" name="conditions[]" value="Numbness or tingling sensations">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									Cramps: <input type="checkbox" name="conditions[]" value="Cramps">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								</div>
								<div class="form-group w3-sand ">
									<h5 class="text-center text-bold">Swellings of extremities</h5>
									<table class="table container">
										<tr>
											<td>upper limb Right: <input type="checkbox" name="limb[]" value="upper limb Right"></td>
											<td>upper limb Left: <input type="checkbox" name="limb[]" value="upper limb Left"></td>
										</tr>
										<tr>
											<td>Lower limb Right: <input type="checkbox" name="limb[]" value="Lower limb Right"></td>
											<td>Lower limb Left: <input type="checkbox" name="limb[]" value="Lower limb Left"></td>
										</tr>
									</table>
								</div>
								<div class="form-group">
									<label>Frequency of micturition</label>
									<input type="text" name="Frequency" class="form-control">
								</div>
								<div class="form-group">
									<h5 class="text-center">Weakness of muscles</h5>
									<table class="table">
										<tr>
											<td>Facial right: <input type="checkbox" name="muscles[]" value="Lower limb right"></td>
											<td>upper limb Right: <input type="checkbox" name="muscles[]" value="upper limb Right"></td>
											<td>Lower limb Right: <input type="checkbox" name="muscles[]" value="lower limb Right"></td>
										</tr>
										<tr>
											<td>Facial left: <input type="checkbox" name="muscles[]" value="Lower limb Left"></td>
											<td>upper limb left: <input type="checkbox" name="muscles[]" value="upper limb left"></td>
											<td>Lower limb left: <input type="checkbox" name="muscles[]" value="lower limb left"></td>
										</tr>
										<tr>
											<td>Headache: <input type="checkbox" name="muscles[]" value="Headache"></td>
											<td>Epigastric pain: <input type="checkbox" name="muscles[]" value="Epigastric pain"></td>
											<td></td>
										</tr>
									</table>
								</div>
								<div class="w3-sand">
									<div class="form-group w3-sand">
										<label>Have you had any prior treatment and/or diagnostic testing for this condition? </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label>Yes<input type="radio" name="prior" value="yes"></label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label>No<input type="radio" name="prior" value="no"></label><br>&nbsp;&nbsp;&nbsp;&nbsp;
										If yes&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <label><input type="checkbox" name="treatment[]" value="x-rays">x-rays</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="treatment[]" value="MRI">MRI</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="treatment[]" value="EMG/Nerve conduction test"> EMG/Nerve conduction test</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										Enter other here <input type="text" name="treatment[]">
									</div>
									<div class="form-group w3-sand">
										<label class="text-left">if yes, please explain</label>
										<textarea class="form-control" name="explain"></textarea>
									</div>
								</div>
								<div class="form-group col-md-4">
									<label>Date of next Doctor’s appointment</label>
									<input type="date" name="dt" class="col-md-12">
								</div>
								<div class="form-group col-md-12">
									<label>I have reviewed the information provided and found it to be complete</label>
									<input type="text" readonly name="physio" value="<?php echo($physio) ?>" class="form-control">
								</div>
								<div class="form-group col-md-12">
									<label>Subjective history</label>
									<textarea class="form-control" name="history" placeholder="enter Subjective history here"></textarea>
								</div>
								<div class="form-group col-md-12">
									<button type="submit" class="btn btn-primary" name="submit">continue</button>
								</div>
							</form>
							<div class="col-md-2"></div>
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

