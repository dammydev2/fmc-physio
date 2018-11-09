<?php
include("includes/db.php");
$user =  $_SESSION['username'];
$num = $_SESSION['patientnum'];
$rec = $_SESSION['rec'];
$type = $_SESSION['ttype'];
$date = $_SESSION['date'];
if(isset($_POST['submit'])){
    $num = $_POST['num'];
    $Analysis = $_POST['Analysis'];
    $diag = $_POST['diag'];
    $name = $_POST['name'];
    $upd = "UPDATE report SET analysis='$Analysis', diagnosis='$diag',physio='$name' WHERE num='$num' AND dt='$date'";
    $ins = "INSERT INTO receipt_num(num,rec) VALUES($num,$rec)";
    $res = $conn->query($ins);
    $res = $conn->query($upd);
    if($res === TRUE){
    header('Location: receipt.php');
}
else{
    echo $conn->error;
}
}
$sel = "SELECT * FROM physio WHERE user='$user'";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
    $name = $row[4];
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fmc Physio</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <style type="text/css">
        .form-control{
            border: 2px solid #000;
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
        <?php include('includes/navbar.php'); ?>
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

            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                     <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back <b><?php echo $username;?> </b>
                     make good use of this mobile app. 
                 </div>
             </div>
             <!--end  Welcome -->
         </div>
         <!-- pyhsioteraphy box -->
         <div class="col-lg-12">
            <!-- panel default -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa  fa-pencil">&nbsp</i>   PHYSIOTHERAPY FORM  
                </div>
                <!-- form --> 
                <div class="panel-body">
                    <form method="POST" class="col-lg-6">
                        Physiotheraphyst: <input type="text" name="name" class="form-control" value="<?php echo $name;?>" readonly><br />
                         Patient ID: <input type="text" name="num" class="form-control" value="<?php echo $num;?>" readonly><br />
                         Diagnosis: <input type="text" name="diag" class="form-control" ><br />
                        Analysis of Condition:<textarea class="form-control" name="Analysis" placeholder="Analysis of Condition" rows="12" required></textarea>
                        <p>&nbsp;</p>
                        <input type="submit" name="submit" value="Next" class="btn btn-success col-lg-12">
                    </form>






                </div>
                <!-- form ended-->
            </div>
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
