<?php
require_once("perpage.php");	
	require_once("dbcontroller.php");
	$db_handle = new DBController();
	
	$name = "";
	$code = "";
	
	$queryCondition = "";
	if(!empty($_POST["search"])) {
		foreach($_POST["search"] as $k=>$v){
			if(!empty($v)) {

				$queryCases = array("name","code");
				if(in_array($k,$queryCases)) {
					if(!empty($queryCondition)) {
						$queryCondition .= " AND ";
					} else {
						$queryCondition .= " WHERE ";
					}
				}
				switch($k) {
					case "name":
						$name = $v;
						$queryCondition .= "name LIKE '" . $v . "%'";
						break;
					case "code":
						$code = $v;
						$queryCondition .= "p_id LIKE '" . $v . "%'";
						break;
				}
			}
		}
	}
	$orderby = " ORDER BY id desc"; 
	$sql = "SELECT * FROM reg " . $queryCondition;
	$href = 'index.php';					
		
	$perPage = 3; 
	$page = 1;
	if(isset($_POST['page'])){
		$page = $_POST['page'];
	}
	$start = ($page-1)*$perPage;
	if($start < 0) $start = 0;
		
	$query =  $sql . $orderby .  " limit " . $start . "," . $perPage; 
	$result = $db_handle->runQuery($query);
	
	if(!empty($result)) {
		$result["perpage"] = showperpage($sql, $perPage, $href);
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
	<style type="text/css">
		th{
			background: #000;
		}
	</style>
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
					<div class=" w3-sand" style="background: #fff; padding: 5px;">
						<!--::::::CRUD STARTS:::::::::::::-->
						<p>&nbsp;</p>
						<h2><b>REGISTERED PATIENT</b></h2>
						<div style="text-align:right;margin:20px 0px 10px;">
							<a id="btnAddAction" href="add.php" class="btn btn-primary">Add New Patient</a>
						</div>
						<div id="toys-grid">      
							<form name="frmSearch" method="post" action="index.php">
								<div class="search-box">
									<p><input type="text" placeholder="Name" name="search[name]" class="demoInputBox" value="<?php echo $name; ?>"	/><input type="text" placeholder="Physio Number" name="search[code]" class="demoInputBox" value="<?php echo $code; ?>"	/>&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="go" class="btnSearch btn btn-success" value="Search">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" class="btnSearch btn-danger btn" value="Reset" onclick="window.location='index.php'"></p>
								</div>

								<table cellpadding="10" cellspacing="1" class="table table-bordered">
									<thead>
										<tr>
											<th style="background: black; color: white;"><strong>Name</strong></th>
											<th style="background: black; color: white;"><strong>Physio Number</strong></th>  
											<th style="background: black; color: white;"><strong>Date of Birth</strong></th>

										</tr>
									</thead>
									<tbody>
										<?php
										if(!empty($result)) {
											foreach($result as $k=>$v) {
												if(is_numeric($k)) {
													?>
													<tr style="color: #000;">
														<td><?php echo $result[$k]["name"]; ?></td>
														<td><?php echo $result[$k]["p_id"]; ?></td>
														<td><?php echo $result[$k]["DOB"]; ?></td>
														<td>
															<a class="btnEditAction btn btn-success" href="edit.php?id=<?php echo $result[$k]["id"]; ?>">Edit</a> <a style="background: red; color: #fff;" class="btn btnDeleteAction" href="delete.php?action=delete&id=<?php echo $result[$k]["id"]; ?>">Delete</a>
														</td>
													</tr>
													<?php
												}
											}
										}
										if(isset($result["perpage"])) {
											?>
											<tr>
												<td colspan="6" align=right> <?php echo $result["perpage"]; ?></td>
											</tr>
										<?php } ?>
										<tbody>
										</table>
									</form>	
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