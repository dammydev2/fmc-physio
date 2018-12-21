<?php
include("includes/connect.php");
if (isset($_POST['nh'])) {
	$Physio = $_POST['Physio'];
	$sel2 = "SELECT * FROM goals WHERE num='$Physio' ";
	$res2 = $conn->query($sel2);
	if ($res2->num_rows < 1) {
		$err = "<dt style='color: red;'>No Record Found</dt>";
	}
	else{
		while ($row = $res2->fetch_array()) {
		}
	}
}

if (isset($_POST['submit'])) {
	$_SESSION['num'] = $_POST['Physio'];
	$_SESSION['rec'] = $_POST['rec'];
	header("Location: print.php");
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
							<h3 class="text-center">View History</h3>
							<p>&nbsp;</p>
							<div class="col-md-4"></div>
							<div class="col-md-4">
								<form method="POST">
									<div class="control-group">
										<?php echo $err; ?>
										<label class="control-label">System Physio NO</label>
										<div class="controls">
											<input type="text" name="Physio" id="required" required="required">
											<input type="submit" name="nh" value="Search Patient" class="btn btn-success">
										</div>
									</form>
									<form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
										<div class="control-group">
											<label class="control-label">Receipt Number</label>
											<div class="controls">
												<input type="text" name="Physio" id="required" required="required" value="<?php echo $Physio; ?>" style="display: none;">
												<?php 
                                    $query = ("SELECT * FROM goals WHERE num='$Physio' ORDER BY id DESC"); // Run your query
                    echo '<select name="rec" class="form-control">'; // Open your drop down box
                      // Loop through the query results,
                      //outputing the options one by one
                    echo "<option>Select here</option>";
                    $drg = $conn->query($query);
                    while ($row = $drg->fetch_array()) {
                    	echo '<option value="'.$row
                    	['rec'].'">'.$row
                    	['rec'].'</option>';
                    }
                    echo  '</select>';
                    ?>
                </div>
            </div>
            <div class="form-actions">
            	<input type="submit" name="submit" value="Check History" class="btn btn-success">
            </div>
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

