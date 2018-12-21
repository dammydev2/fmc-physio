<?php
include("includes/connect.php");


if (isset($_POST['submit'])) {
	$_SESSION['patientnum'] = $_POST['num'];
	$_SESSION['val'] = $_POST['val'];
	header("Location: print-diag.php");
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
								



								<form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
									<div class="control-group">
										<label class="control-label">Diagnosis</label>
										<div class="controls">
											<input type="text" name="Physio" id="required" required="required" value="<?php echo $Physio; ?>" style="display: none;">
											<?php 
                                    $query = ("SELECT DISTINCT Diagnosis FROM table_1 ORDER BY Diagnosis DESC"); // Run your query
                    echo '<select name="val">'; // Open your drop down box
                      // Loop through the query results,
                      //outputing the options one by one
                    echo "<option>Select here</option>";
                    $drg = $conn->query($query);
                    while ($row = $drg->fetch_array()) {
                    	echo '<option value="'.$row
                    	['Diagnosis'].'">'.$row
                    	['Diagnosis'].'</option>';
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

