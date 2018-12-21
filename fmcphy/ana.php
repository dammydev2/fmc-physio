<?php
include('includes/db.php');
$nhis = $_SESSION['nhis'];
$idtwo = $_SESSION['idtwo'];
$rec = $_SESSION['rec'];
extract($_POST);
if(isset($_POST['submit'])){
	ECHO $ins = "INSERT INTO fmcphy_neu.ans VALUES(NULL,'$idtwo','$rec','$findings','$impression','$treatment','$means')";
	$res = $conn->query($ins);
	if($res === TRUE){
                $_SESSION['idtwo'] = $idtwo;
                $_SESSION['nhis'] = $nhis;
				$_SESSION['rec'] = $rec;
                echo "success";
                header('Location:print.php');
	}
	else{
		echo $conn->error;
	}
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fmc physio</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <style type="text/css">
    input{
        color: #000;
        font-weight: bold;
    }
</style>
</head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->

        <?php include('includes/header.php'); ?>
        <!-- end navbar-header -->

        <!-- navbar side -->
        <?php include('includes/nav2.php'); ?>
        <!-- end navbar side -->

        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header"></h1>
                </div>
                <!--End Page Header -->
            </div>
            
     <!-- pyhsioteraphy box -->
     <div class="sub" >
        <h3>OBJECTIVE ASSESSMENT</h3><br/>


    </div>
    <div class="col-lg-12 main">
        <!-- panel default -->
        <form method="POST" action="">
            <fieldset>
                <legend>LAST SECTION</legend>

                <div class="form-group">
                    <input type="text" name="idtwo" value="<?php echo($idtwo) ?>" style="display: none;">
                    <input type="text" name="rec" value="<?php echo($rec) ?>"  style="display: none;">

 </div>
 <div class="form-group col-lg-6">
	<label>Analysis of Findings</label>
	<textarea class="form-control" name="findings"></textarea>
 </div>
 <div class="form-group col-lg-6">
	<label>Physical Impression</label>
	<textarea class="form-control" name="impression"></textarea>
 </div>
 <div class="form-group col-lg-6">
	<label>Plan of treatment</label>
	<textarea class="form-control" name="treatment"></textarea>
 </div>
 <div class="form-group col-lg-6">
	<label>Intervention/Means of treatment</label>
	<textarea class="form-control" name="means"></textarea>
 </div>

 <!--div class="col-lg-6 ">
    <div class="form-group">
        <div class="input-group w3_w3layouts col-lg-12">
            <span class="input-group-addon" id="basic-addon1">MOBILITY INDEX SCORE</span>
            <select name="mobility" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
                <option>CHOOSE A SCORE</option>
                <option value="normal" >0 = Unable to perform</option>
                <option value="independent" >1 = Assistance of two peoples</option>
                <option value="assistance of 1/2" >2 = Assistance of one person </option>
                <option value="immobile" >3 = Requires supervision or verbal instruction</option>
                <option>4 = Requires an aid or appliance </option>
                <option>5 = Independent </option>
            </select>
        </div>
    </div>
</div-->




</div>
<div class="col-lg-12" ><p></p></div>
<div class="col-lg-12">
    <div class="col-lg-4"></div><div class="col-lg-4"></div>
    <div class="col-lg-4">
     <button name="submit" class="btn btn-lg btn-success btn-block">Continue!</button>
 </div>
</div>
</fieldset>
</form>
<!-- panel default ended -->
</div>
<!-- pyhsioteraphy box ended -->
</div>

<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="assets/plugins/jquery-1.10.2.js"></script>
<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="assets/plugins/pace/pace.js"></script>
<script src="assets/scripts/siminta.js"></script>
<!-- Page-Level Plugin Scripts-->
<script src="assets/plugins/morris/raphael-2.1.0.min.js"></script>
<script src="assets/plugins/morris/morris.js"></script>
<script src="assets/scripts/dashboard-demo.js"></script>

</body>

</html>
<style >
.sub{

    border: 2px solid;
    width: 95%;
    height: ;
    padding: 0% 2% 0% 2%;
}
.sub h3{
    text-transform: uppercase;
    text-align: center;
    font-size: 30px;
}
.sub h4{
    text-transform: uppercase;
    text-align: center;
    font-size: 24px;
}
.main{
    border: 2px solid;
    width: 95%;
    margin: 0px auto;
    height:;
    padding: 2%;
}
.rail{
    float: right;
    margin-right: 10%;
}
.mult{
    margin-left: 6%s;
}

</style>