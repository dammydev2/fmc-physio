<?php
include("includes/connect.php");
if (isset($_POST['submit'])) {	
	extract($_POST);
	$ins = "INSERT INTO fmcphy_OG.complaint VALUES(NULL,'$num','$rec','$concerns','$physio')";
	$res = $conn->query($ins);
	if ($res === TRUE) {
		header("Location: history.php");
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
							<h3 class="text-center">CURRENT COMPLAINTS</h3>
							<p>&nbsp;</p>
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<form method="POST">
									<div class="form-group">
										<label for="exampleInputEmail1">What are your main concerns regarding your condition?</label>
										<textarea class="form-control" name="concerns"></textarea>
										<input type="text" name="num" value="<?php echo($_SESSION['num']) ?>" style="display: none;">
										<input type="text" name="rec" value="<?php echo($_SESSION['rec']) ?>" style="display: none;">
										<p>&nbsp;</p>
									</div>
									<div class="form-group">
										<input type="checkbox" required name=""> I have reviewed the information provided and information are complete
									</div>
									<div class="form-group">
										<label>Therapist Name</label>
										<input type="physio" name="physio" class="form-control" readonly value="<?php echo($_SESSION['physio']) ?>">
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

