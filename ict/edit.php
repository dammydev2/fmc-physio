<?php
require_once("dbcontroller.php");
$db_handle = new DBController();
if(!empty($_POST["submit"])) {
	$query = "UPDATE login set name = '".$_POST["name"]."', user = '".$_POST["Username"]."', pass = '".$_POST["Password1"]."', type = '".$_POST["type"]."' WHERE  id=".$_GET["id"];
	$result = $db_handle->executeQuery($query);
	if(!$result){
		$message = "Problem in Editing! Please Retry!";
	} else {
		header("Location:index.php");
	}
}
$id = $_GET["id"];
$result = $db_handle->runQuery("SELECT * FROM login WHERE id='" . $_GET["id"] . "'");
if (isset($_POST['submit'])) {
	echo "success";
}
?>
<!DOCTYPE HTML>
<html>
<head>
	<title>Pooled Admin Panel Category Flat Bootstrap Responsive Web Template | Home :: w3layouts</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- Bootstrap Core CSS -->
	<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
	<!-- Custom CSS -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/morris.css" type="text/css"/>
	<!-- Graph CSS -->
	<link href="css/font-awesome.css" rel="stylesheet"> 
	<!-- jQuery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jQuery -->
	<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<!-- lined-icons -->
	<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
	<!-- //lined-icons -->
	<!--link href="style.css" type="text/css" rel="stylesheet" /-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script>
		function validate() {
			var valid = true;	
			$(".demoInputBox").css('background-color','');
			$(".info").html('');

			if(!$("#name").val()) {
				$("#name-info").html("(required)");
				$("#name").css('background-color','#FFFFDF');
				valid = false;
			}
			if(!$("#code").val()) {
				$("#code-info").html("(required)");
				$("#code").css('background-color','#FFFFDF');
				valid = false;
			}
			if(!$("#category").val()) {
				$("#category-info").html("(required)");
				$("#category").css('background-color','#FFFFDF');
				valid = false;
			}	
			return valid;
		}
	</script>
</head> 
<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
				<!--heder end here-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a> <i class="fa fa-angle-right"></i>Front Desk</li>
				</ol>
				<!--four-grids here-->
				<div class="four-grids" style="height: 500px;">
					<div class=" w3-sand" style="background: #fff; padding: 5px; height: 400px;">
						<!--::::::CRUD STARTS:::::::::::::-->
						<p>&nbsp;</p>
						<h2><b>EDIT User</b></h2>
						<div class="col-sm-3"></div>
						<form name="frmToy" method="POST" class="col-sm-5" action="" id="frmToy" onClick="return validate();">
							<div id="mail-status"></div>
							<div class="form-group">
								<label style="padding-top:20px;">Name</label>
								<span id="name-info" class="info"></span><br/>
								<input type="text" name="name" id="name" class="demoInputBox form-control" value="<?php echo $result[0]["name"]; ?>">
							</div>
							<div class="form-group">
								<label >Username</label>
								<span id="name-info" class="info"></span><br/>
								<input type="text" name="Username" id="name" class="demoInputBox form-control" value="<?php echo $result[0]["user"]; ?>">
							</div>
							<div class="form-group">
								<label>Password</label>
								<span id="code-info" class="info"></span><br/>
								<input type="text" minlength="8" name="Password1" id="code" class="demoInputBox form-control" value="<?php echo $result[0]["pass"]; ?>">
							</div>
							<div class="form-group">
								<label>Category</label> 
								<span id="category-info" class="info"></span><br/>
								<select name="type" id="category" class="form-control col-sm-5">
									<option value="">Select Category</option>
									<option value="Front Desk">Front Desk</option>
									<option value="Paedratic">Paedratic</option>
									<option value="Neurology">Neurology</option>
									<option value="Occupation">Occupation</option>
									<option value="ORTHOPAEDIC">ORTHOPAEDIC</option>
								</select>
							</div>
							<div>
								<input type="submit" name="submit" id="btnAddAction" value="Save" />
							</div>
						</form>
					</div>
				</div>
				<!--::::::CRUD STOP HERE::::::::-->
			</div>

		</div>
		<!--//four-grids here-->
		<!--photoday-section-->	



		<div class="clearfix"></div>

		<!--//photoday-section-->	
		<!--w3-agileits-pane-->	

		<!--//w3-agileits-pane-->	
		<!-- script-for sticky-nav -->
		<script>
			$(document).ready(function() {
				var navoffeset=$(".header-main").offset().top;
				$(window).scroll(function(){
					var scrollpos=$(window).scrollTop(); 
					if(scrollpos >=navoffeset){
						$(".header-main").addClass("fixed");
					}else{
						$(".header-main").removeClass("fixed");
					}
				});

			});
		</script>
		<!-- /script-for sticky-nav -->
		<!--inner block start here-->
		<div class="inner-block">

		</div>
		<!--inner block end here-->
		<!--copy rights start here-->
		<?php include("include/footer.php"); ?>
		<!--COPY rights end here-->
	</div>
</div>
<?php include("include/sidebar.php"); ?>		
</div>
<script>
	var toggle = true;

	$(".sidebar-icon").click(function() {                
		if (toggle)
		{
			$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
			$("#menu span").css({"position":"absolute"});
		}
		else
		{
			$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
			setTimeout(function() {
				$("#menu span").css({"position":"relative"});
			}, 400);
		}

		toggle = !toggle;
	});
</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src="js/raphael-min.js"></script>
<script src="js/morris.js"></script>
<script>
	$(document).ready(function() {
		//BOX BUTTON SHOW AND CLOSE
		jQuery('.small-graph-box').hover(function() {
			jQuery(this).find('.box-button').fadeIn('fast');
		}, function() {
			jQuery(this).find('.box-button').fadeOut('fast');
		});
		jQuery('.small-graph-box .box-close').click(function() {
			jQuery(this).closest('.small-graph-box').fadeOut(200);
			return false;
		});

	    //CHARTS
	    function gd(year, day, month) {
	    	return new Date(year, month - 1, day).getTime();
	    }

	    graphArea2 = Morris.Area({
	    	element: 'hero-area',
	    	padding: 10,
	    	behaveLikeLine: true,
	    	gridEnabled: false,
	    	gridLineColor: '#dddddd',
	    	axes: true,
	    	resize: true,
	    	smooth:true,
	    	pointSize: 0,
	    	lineWidth: 0,
	    	fillOpacity:0.85,
	    	data: [
	    	{period: '2014 Q1', iphone: 2668, ipad: null, itouch: 2649},
	    	{period: '2014 Q2', iphone: 15780, ipad: 13799, itouch: 12051},
	    	{period: '2014 Q3', iphone: 12920, ipad: 10975, itouch: 9910},
	    	{period: '2014 Q4', iphone: 8770, ipad: 6600, itouch: 6695},
	    	{period: '2015 Q1', iphone: 10820, ipad: 10924, itouch: 12300},
	    	{period: '2015 Q2', iphone: 9680, ipad: 9010, itouch: 7891},
	    	{period: '2015 Q3', iphone: 4830, ipad: 3805, itouch: 1598},
	    	{period: '2015 Q4', iphone: 15083, ipad: 8977, itouch: 5185},
	    	{period: '2016 Q1', iphone: 10697, ipad: 4470, itouch: 2038},
	    	{period: '2016 Q2', iphone: 8442, ipad: 5723, itouch: 1801}
	    	],
	    	lineColors:['#ff4a43','#a2d200','#22beef'],
	    	xkey: 'period',
	    	redraw: true,
	    	ykeys: ['iphone', 'ipad', 'itouch'],
	    	labels: ['All Visitors', 'Returning Visitors', 'Unique Visitors'],
	    	pointSize: 2,
	    	hideHover: 'auto',
	    	resize: true
	    });


	});
</script>
</body>
</html>