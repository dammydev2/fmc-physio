<?php
include("includes/db.php");
$num = $_SESSION['patientnum'];
$type = $_SESSION['ttype'];
$rec_num = $_SESSION['rec'];
#::::::::::::::GETTING THE PATIENT NAME:::::::::::::
$sel = "SELECT * FROM patient WHERE patientnum='$num'";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
  $name = $row[2];
  $age = $row[3];
  $addr = $row[4];
  $phy = $row[6];
  $ward = $row[7];
  $ref = $row[8];
}
#::::::::::::::GETTING THE PATIENT NAME:::::::::::::
$sel = "SELECT * FROM report WHERE receipt='$rec_num'";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
  $date = $row[4];
  $diag = $row[10];
  $physio = $row[11];
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FMC physio</title>
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
    b{
        text-transform: capitalize;
    }
    td{
        padding: 5px;
    }
    @media print {
      #printPageButton {
        display: none;
    }
}
</style>
</head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <div id="printPageButton">
            <?php include('includes/header.php'); ?>
            <!-- end navbar-header -->

            <!-- navbar side -->
            <?php include('includes/nav2.php'); ?>
            <!-- end navbar side -->
        </div>
        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row" id="printPageButton">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header"></h1>
                </div>
                <!--End Page Header -->
            </div>

            <div class="row" id="printPageButton">
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
                <div class="panel-heading" id="printPageButton">
                    <i class="fa  fa-pencil">&nbsp</i>   PHYSIOTHERAPY FORM  
                    <button onclick="window.print()" id="printPageButton">Print</button>
                </div>
                <!-- form --> 
                <div class="panel-body">



                    <div style="width: 700px; border: 2px solid black; margin: 0px auto; margin-top: 20px; margin-bottom: 30px; color: #000;">
                        <h2 style="text-align: center;">FEDERAL MEDICAL CENTRE</h2>
                        <h4 style="text-align: center;">IDI-ABA, ABEOKUTA</h4>
                        <table width="600" style="margin-left: 30px;">
                            <tr>
                              <td><span>DEPARTMENT: </span><b>PHYSIOTHERAPY DEPARTMRNT</b></td>

                              <td><span>PATIENT NUMBER: </span><b><?php echo $num;?></b></td
                              </tr>
                              <tr>
                                <td><span>Name of Patient: </span><b><?php echo $name;?></b></td>

                                <td><span>Age: </span><b><?php echo $age;?></b></td>
                            </tr>
                            <tr>
                                <td><span>Address: </span><b><?php echo $addr;?></b></td>

                                <td><span>Report Date: </span><b><?php echo $date;?></b></td>
                            </tr>
                            <tr>
                                <td><span>reference number: </span><b><?php echo $phy;?></b></td>

                                <td><span>Clinic/Ward: </span><b><?php echo $ward;?></b></td>
                            </tr>
                            <tr>
                                <td>Diagnosis: <?php echo $diag;?></td>

                                <td>Reference: <?php echo $ref;?></td>
                            </tr>
                        </table>
                        <span style="margin-left: 30px;">Physiotheraphyst: <?php echo $physio;?></span>
                        <p><b>Muscle report</b></p>
                        <table border="2" style="margin-left: 50px; width: 80%;">
                            <tr>
                                <td></td>
                                <td>Limb Type</td>
                                <td></td>
                            </tr>
                            <?php
                            $sel = "SELECT * FROM report WHERE receipt='$rec_num'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              ?>

                              <tr>
                                <td><?php echo $row[1];?></td>
                                <td><?php echo $row[3]." ".$row[6]." limb";?></td>
                                <td><?php echo $row[2];?></td>
                            </tr>
                            <?php
                        }
                        ?>
                    </table>
                    <p style="padding: 10px;"><b>NB </b>Attach photocopies of prescriptions, investigations and other neccesary records to substantiate your claim. Your claim will not be processed if such evidence is not found where applicable</p>
                    <p>&nbsp;</p>
                    <p>
                        <table width="90%" style="margin-left: 120px;">
                          <tr>
                            <td>_______________________</td>
                            <td>_______________________</td>
                        </tr>
                        <tr>
                            <td>Name, Sign & Stamp</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date</td>
                        </tr>
                    </table>
                </p>
            </div>



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
