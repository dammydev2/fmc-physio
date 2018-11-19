<?php
include("include/connect.php");

$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
	$num2 = $_POST['id'];
	$physio = $_POST['physio'];
	$info = $_POST['info'];
	$rec = $_POST['rec'];
	$health = $_POST['health'];
	extract($_POST);
	$c = count($_POST['describe']);
	//$c = 4;
	for($a = 0; $a < $c; $a++)
	{ 
		$complain[$a];
		$ins = "INSERT INTO fmcphy_ped.prev_1 VALUES(NULL,'$num2','$health','".$describe[$a]."','$physio','$info','$rec')";
		$res = $conn->query($ins);
		/**
		if ($res === TRUE) {
			?>
			<meta http-equiv="refresh" content="0; URL=http:preg.php">
			<?php
		}
		**/
	}
	extract($_POST);
	$c = 3;
	//$c = 4;
	for($a = 0; $a < $c; $a++)
	{ 
		$complain[$a];
		$ins = "INSERT INTO fmcphy_ped.prev_2 VALUES(NULL,'$num2','".$other[$a]."','".$comment[$a]."','$physio','$info','$rec')";
		$res2 = $conn->query($ins);
	}
	if ($res === TRUE AND $res2 === TRUE) {
		?>
		<meta http-equiv="refresh" content="0; URL=http:precautions.php">
		<?php
	}

}
?>
<!--meta http-equiv="refresh" content="0; URL=http:subjective.php"-->
<?php


?>
<!DOCTYPE HTML>
<html>
<head>
	<title></title>
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
	.panel-body{
		background: #fff;
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
					<li class="breadcrumb-item"><a href="index.html">Home</a> <i class="fa fa-angle-right"></i>Add Report</li>
				</ol>
				<!--four-grids here-->
				<div class="four-grids" style="height: 500px;">
					<h3>Report</h3>
					<div class="col-sm-12">
						<div class="col-sm-4"></div>
						<div class="panel panel-primary col-sm-4">
							<div class="panel-heading">Previous Medical History</div>
							<div class="panel-body">
								<form method="POST">
									<div class="form-group">
										<label for="exampleInputEmail1">Patient id</label>
										<input type="text" name="id" value="<?php echo $num; ?>" readonly class="form-control" id="exampleInputEmail1" />
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">How would you classify your child's general health?</label>
										<input type="radio" name="health" required value="Good" id="exampleInputEmail1" /> Good &nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" name="health" required value="fair" id="exampleInputEmail1" /> fair &nbsp;&nbsp;&nbsp;&nbsp;
										<input type="radio" name="health" required value="poor" id="exampleInputEmail1" /> poor &nbsp;&nbsp;&nbsp;&nbsp;
									</div>
									<p>&nbsp;</p>
									<p>Please describe your child</p>
									<div class="form-group">
										<label><input type="checkbox" name="describe[]" value="allergies"> allergies</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="encephalitis"> encephalitis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="multiple scierosis"> multiple scierosis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Rheumatic fever"> rheumatic fever</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Asthma / breathing difficulties"> Asthma / breathing difficulties</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Enlarged Glands"> Enlarged Glands</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Nausea/vomiting"> Nausea/vomiting</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Ringing of the ear"> Ringing of the ear</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Bronchitis"> Bronchitis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Fever"> fever</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Night pain"> night pain</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Seizures/Epilepsy"> Seizures/Epilepsy</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="cancer"> cancer</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Head injury"> Head injury tantrums</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Osteoarthritis"> Osteoarthritis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Smoking history"> Smoking History</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Chicken pox"> Chiken pox</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="heart Disease"> Heart disease</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Peacemaker"> Peacemaker</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Stroke/TIA"> Stroke/TIA</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Chronic colds"> Chronic colds</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="High blood Pressure"> High blood pressure</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="Parkinson Disease"> Parkinson disease</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="surgeries"> Surgeries</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="chronic laryngitis"> chronic laryngitis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="hypoglycemia"> hypoglycemia</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="physical abnormalities"> Physical abnormalities</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="thyroid disease"> thyroid disease</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="cogenital defects"> cogenital defects</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="measeles"> measeles</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="pnemonia"> pnemonia</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="tonsilitis"> tonsilitis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="depresion"> depresion</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="meningitis"> meningitis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="polio"> polio</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="tuberculosis"> tuberculosis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="diabetis type I and II"> diabetis (Type I and II)</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="metal implant"> metal implant</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="pregnancy"> Prgnancy (currently)</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="whopping cough"> whooping cough</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="dizziness/fainting"> dizziness/fainting</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="mumps"> mumps</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<label><input type="checkbox" name="describe[]" value="rheumatoid Arthritis"> rheumatoid Arthritis</label>&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="text" name="describe[]" placeholder="Enter other here">&nbsp;&nbsp;&nbsp;&nbsp;
										
									</div>
									<div class="form-group">
										<p>&nbsp;</p>
										<p>Does your child have any of the following, If yes please explain in the space provided</p>
										<table class="table" border="1">
											<tr>
												<td><input type="checkbox" name="other[]" value="Earache/Ear defection"> Earache/Ear defection</td>
												<td><input type="text" class="form-control" name="comment[]" placeholder="Describe"></td>
											</tr>
											<tr>
												<td><input type="checkbox" name="other[]" value="Earing difficulties"> Earing difficulties</td>
												<td><input type="text" class="form-control" name="comment[]" placeholder="if yes. Aided?"></td>
											</tr>
											<tr>
												<td><input type="checkbox" name="other[]" value="PE ear tubes inserted"> PE ear tubes inserted</td>
												<td><input type="text" class="form-control" name="comment[]" placeholder="if yes. Describe?"></td>
											</tr>
											<tr>
												<td><input type="checkbox" name="other[]" value="Vision problems"> PE ear Vision problems</td>
												<td><input type="text" class="form-control" name="comment[]" placeholder="if yes. treatment?"></td>
											</tr>
											<tr>
												<td><textarea name="other[]" readonly="" class="form-control">have you ever purchased or rented durable Medical Equipment, orthortics, prosthetics or supplies?</textarea></td>
												<td><input type="text" class="form-control" name="comment[]" placeholder="iPlease explain"></td>
											</tr>
										</table>
									</div>
									<div class="checkbox">
										<label><input type="checkbox" required> I have reviewed the information provided above and I found them to be complete</label>
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">Physiotherapist (Name)</label>
										<input type="text" name="physio" value="<?php echo($_SESSION['user']); ?>" readonly required class="form-control" id="exampleInputEmail1" />
										<input type="text" name="rec" value="<?php echo($rec); ?>" required class="form-control" id="exampleInputEmail1" style="display: none;" />
									</div>
									<p>&nbsp;</p>
									<textarea name="info" placeholder="Please list medical history or co-morbidities that may impact Rate of recovery" class="form-control"></textarea>
									<p>&nbsp;</p>
									<button type="submit" class="btn btn-primary" name="submit">Continue</button>
								</form>
							</div>

						</div>
						<div class="col-sm-4">
						</div>
					</div>
				</div>
				<!--//four-grids here-->
				<!--photoday-section-->	



				<div class="clearfix"></div>
				<script type="text/javascript">
					$(document).ready(function () {
						$(".css-checkbox").click(function () {
							if ($(this).attr('id') == "one") {
								$('#a').show();
								$('#b').hide();
								$("#myForm").attr('action','one.php');
							} else {
								$('#a').hide();
								$('#b').show();
								$("#myForm").attr('action','two.php');
							}
						});

					});
				</script>
				<style type="text/css">
				#b{
					display:none;  
				}
			</style>

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