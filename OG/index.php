<?php
include("includes/connect.php");
include("includes/first-info.php");
ob_start();
session_start();
//error_reporting(E_ALL);
$servername = "localhost";
$username = "root";
$password = "damilola92";
$db = "fmcphy_gen";


//$_SESSION['physio'] = "Yakubu Damilola";
$physio = $_SESSION['user'];
// Create connection
$reg = new mysqli($servername, $username, $password,$db);

if (isset($_POST['Search'])) {
$id = $_POST['id'];
$sel = "SELECT * FROM reg WHERE p_id='$id'";
$res = $reg->query($sel);
if ($res->num_rows < 1) {
echo "<script>
	alert('no record found');
</script>";
}
else{
while ($row = $res->fetch_array()) {
$name = $row[1];
$dob = $row[3];
$code2 = $row['code2'];
}
$sel = "SELECT * FROM receipt";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
$rec_num = $row[1];
$rec_num = $rec_num + 1;
}
$msg = '

<div class="form-group">
	<label for="exampleInputEmail1">Patient Name</label>
	<input type="text" name="Pname" required readonly value=" '.$name.' " class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">physio Number</label>
	<input type="text" name="code2"  readonly value=" '.$code2.' " class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Date of birth</label>
	<input type="text" name="DOB"  required readonly value="'.$dob.'" class="form-control" id="exampleInputEmail1" />
	<input type="text" name="num" style="display: none;" value="'.$id.'" class="form-control" id="exampleInputEmail1" />
	<input type="text" name="rec" style="display: none;" value="'.$rec_num.'" class="form-control" id="exampleInputEmail1" />
	<input type="text" name="physio" style="display: none;" value="'.$physio.'" class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Date of evaluation</label>
	<input type="date" name="dt"  required  class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Marital status</label>
	<input type="text" name="Marital"  placeholder="Enter Marital status" required class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Diagnosis</label>
	<input type="text" name="Diagnosis"  placeholder="" required class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Duaration of marriage</label>
	<input type="text" name="Duration"  placeholder="e.g. 3 years" required class="form-control" id="exampleInputEmail1" />
</div>
<div class="form-group">
	<label for="exampleInputEmail1">Address</label>
	<input type="text" name="Address"  placeholder="Enter Address" required class="form-control" id="exampleInputEmail1" />
</div>
<button type="submit" class="btn btn-success" name="submit">Continue</button>
';


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
							<h3 class="text-center">INITIAL EVALUATION SUBJECTIVE HISTORY WORKSHEET</h3>
							<p>&nbsp;</p>
							<form method="POST">
								<p><b>Enter patient system number and click on search to continue</b></p>
								<p>&nbsp;</p>
								<div class="form-group col-md-4">
									<label for="exampleInputEmail1">Patient system num</label>
									<input type="text" name="id" required class="form-control" id="exampleInputEmail1" />
									<p>&nbsp;</p>
									<button type="submit" class="btn btn-primary" name="Search">Search</button>
								</div>
							</form>
							<div class="col-md-2"></div>
							<div class="col-md-4">
								<div class="col-sm-12">
									<form method="POST">
										
										<?php echo $msg; ?>

									</form>
									<div class="col-md-12" style="height: 20px;"></div>
								</div>
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

