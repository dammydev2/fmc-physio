<?php
include("includes/connect.php");
if (isset($_POST['submit'])) {	
	extract($_POST);
	$ins = "INSERT INTO fmcphy_OG.history VALUES(NULL,'$num','$rec','$Parity','$boys','$Girls','$twins','$pregnancies','$Duration','$complications','$Comment','$term','$term_Comment','$labour','$labour_Comment','$physio','$related','$drug','$drug_Comment')";
	$res = $conn->query($ins);
	if ($res === TRUE) {
		header("Location: previous.php");
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
							<h3 class="text-center">OBSTRETIC HISTORY</h3>
							<p>&nbsp;</p>
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<form method="POST">
									<div class="form-group">
										<label for="exampleInputEmail1">Gravida & Parity</label>
										<input type="text" class="form-control" name="Parity">
										<input type="text" name="num" value="<?php echo($_SESSION['num']) ?>" style="display: none;">
										<input type="text" name="rec" value="<?php echo($_SESSION['rec']) ?>" style="display: none;">
										<p>&nbsp;</p>
									</div>
									<div class="form-group">
										<label>Number of living children</label><br>
										No of Boys<input type="text" name="boys"><br>
										No of Girls<input type="text" name="Girls"><br>
										No of Twins<input type="text" name="twins">
									</div>
									<div class="form-group">
										<label>Multiple pregnancies</label><br>
										Yes <input type="radio" name="pregnancies" value="Yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										No <input type="radio" name="pregnancies" value="no">
									</div>
									<div class="form-group">
										<label>Duration between pregnancies</label>
										<input type="text" name="Duration" class="form-control">
									</div>
									<div class="form-group">
										<label>Were there any complications during pregnancy?</label><br>
										Yes <input type="radio" name="complications" value="Yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										No <input type="radio" name="complications" value="no">
									</div>
									<div class="form-group">
										<label>Comment</label>
										<textarea class="form-control" name="Comment"></textarea>
									</div>
									<div class="form-group">
										<label>Was the pregnancy full term?</label><br>
										Yes <input type="radio" name="term" value="Yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										No <input type="radio" name="term" value="no">
									</div>
									<div class="form-group">
										<label>Comment</label>
										<textarea class="form-control" name="term_Comment"></textarea>
									</div>
									<div class="form-group">
										<label>Were you on any drug during pregnancy?</label><br>
										Yes <input type="radio" name="drug" value="Yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										No <input type="radio" name="drug" value="no">
									</div>
									<div class="form-group">
										<label>Comment</label>
										<textarea class="form-control" name="drug_Comment"></textarea>
									</div>
									<div class="form-group">
										<label>Was labour and delivery normal?</label><br>
										Yes <input type="radio" name="labour" value="Yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										No <input type="radio" name="labour" value="no">
									</div>
									<div class="form-group">
										<label>Comment</label>
										<textarea class="form-control" name="labour_Comment"></textarea>
									</div>
									<div class="form-group">
										<input type="checkbox" required name=""> I have reviewed the information provided and information are complete
									</div>
									<div class="form-group">
										<label>Therapist Name</label>
										<input type="physio" name="physio" class="form-control" readonly value="<?php echo($_SESSION['physio']) ?>">
									</div>
									<div class="form-group">
										<label>Other related information</label>
										<textarea name="related" class="form-control"></textarea>
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

