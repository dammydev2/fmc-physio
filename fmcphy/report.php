<?php
include("includes/db.php");
$num = $_SESSION['patientnum'];
$type = $_SESSION['ttype'];
$date = $_SESSION['date'];
if (isset($_POST['nh'])) {
    $NHIS = $_POST['num'];
    $sel2 = "SELECT * FROM asp4 WHERE idtwo='$NHIS' ";
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
    $_SESSION['idtwo'] = $_POST['num'];
    $_SESSION['rec'] = $_POST['rec_num'];
    header("Location: print.php");
   }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FMC Physio</title>
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
                    <form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                      <div class="control-group">
                        <?php echo $err; ?>
                        <label class="control-label">PATIENT NO</label>
                        <div class="controls">
                          <input type="text" name="num" id="required" required="required">
                          <input type="submit" name="nh" value="Search Patient" class="btn btn-success">
                      </div>
                  </div>
              </form>

              <form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                <input type="text" name="num" id="required" value="<?php echo $NHIS?>" required="required" style="display: none;">
                  <div class="control-group">
                    <label class="control-label">Receipt Num</label>
                    <div class="controls">
                      <?php 
                                    $query = ("SELECT * FROM asp4 WHERE idtwo='$NHIS' ORDER BY rec DESC"); // Run your query
                    echo '<select name="rec_num">'; // Open your drop down box
                      // Loop through the query results,
                      //outputing the options one by one
                    echo "<option>Select here</option>";
                    $drg = $conn->query($query);
                    while ($row = $drg->fetch_array()) {
                      echo '<option value="'.$row
                      [10].'">'.$row
                      [10].'</option>';
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
