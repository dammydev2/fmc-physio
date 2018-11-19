<?php
include('includes/db.php');
?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Fmc Physio</title>
  <!-- Core CSS - Include with every page -->
  <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
  <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet" />
  <link href="assets/css/w3.css" rel="stylesheet" media="all" />
  <link href="assets/css/main-style.css" rel="stylesheet" />

  <link rel="stylesheet" type="text/css" href="assets/css/buttons.dataTables.min.css">
  <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.min.css">

  <!-- datatables-->
  <script >
    $(document).ready(function() {
      $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
        'copyHtml5',
        'excelHtml5',
        'csvHtml5',
        'pdfHtml5'
        ]
      } );
    } );
  </script>
  <!-- datatables-->
</head>

<body>
  <!--  wrapper -->
  <div id="wrapper">
    <!-- navbar top -->
    <?php include('includes/header.php'); ?>
    <!-- end navbar top -->

    <!-- navbar side -->
    <?php include('includes/nav2.php'); ?>
    <!-- end navbar side -->
    <!--  page-wrapper -->

    <div id="page-wrapper" >
      <div class="row">
        <!-- page header-->
        <div class="col-lg-12">
          <h1 class="page-header"></h1>
        </div>
        <!-- end page header-->
      </div>
      <div class="row">
        <!-- Welcome -->
        <div class="col-lg-12">
          <div class="alert alert-info">
           <i class="fa fa-folder-open"></i><b>&nbsp;Dear </b> <b><?php echo $username;?> </b>
           note that you can view patient data by entering the patient number in the form below and click view 
         </div>
       </div>
       <!--end  Welcome -->
     </div>
     <!-- delete sections -->
     <div class="col-lg-12">

      <div class="panel panel-default">
        <div class="panel-heading">
          <i class="fa  fa-eye"></i> VIEW PATIENT DATA &nbsp;
        </div>
        <div class="panel-body">
          <div class="col-lg-12">

            <form method="POST">
              <div class="col-lg-8 ">
                <div class="form-group">
                  <div class="input-group w3_w3layouts col-lg-12">
                    <span class="input-group-addon" id="basic-addon1">PATIENT TYPE.</span>
                    <input type="text" name="ptype" value="OLD PATIENT" readonly class=" form-control">
                  </div>
                </div>
              </div>


              <div class="col-lg-2">
                <button name="continue" class="btn btn-lg btn-info btn-block">Next!</button>
              </div>

            </form>
          </div>
          <div class="col-lg-12"><p>&nbsp</p></div>
          <?php
          include('includes/db.php');
          if (isset($_POST['continue']))
          {
           $ptype = $_POST['ptype'];
           switch ($ptype) {
            case 'CHOOSE PATIENT TYPE':
            echo "<script>
            alert('please select a valid patient type');
            </script>";
            ?>
            <meta http-equiv="refresh" content="0;url='muscle.php'" />
            <?php
            break;
            case 'NEW PATIENT':
            echo "<script>
            alert('you will be redirected to create record for new patient');
            </script>";
            ?>
            <meta http-equiv="refresh" content="0;url='Dashboard.php'" />
            <?php
            break;
            case 'OLD PATIENT':

            $_SESSION['ptype'] = $ptype;
            ?>
            <div cslass="col-lg-12">

              <form method="POST">
                <div class="col-lg-6 ">
                  <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                      <span class="input-group-addon" id="basic-addon1">PHYSIO NUM.</span>
                      <input type="num" name="patientnum" class="form-control" placeholder="Patient number" aria-describedby="basic-addon1" required=""/>
                    </div>
                  </div>
                </div>
                <div class="col-lg-2 "></div>

                <div class="col-lg-2">
                  <button name="pnum" class="btn btn-lg btn-success btn-block">Continue!</button>
                </div>

              </form>
            </div>
            <?php
            break;

          }
        }
        ?>
        <?php 
        include('includes/db.php');
        $db ="fmcphy_gen";
        $gen = new Mysqli($servername, $username, $password, $db);
        if (isset($_POST['pnum'])) {
          $patientnum = $_POST['patientnum'];
          $sel = "SELECT * FROM reg where p_id = '$patientnum'";
          $request = $gen->query ($sel);
          if ($request-> num_rows > 0) {
            $_SESSION['patientnum'] = $patientnum;
            ?>
            <div class="col-lg-12">

              <form method="POST">
                <div class="col-lg-6 ">
                  <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                      <span class="input-group-addon" id="basic-addon1">TREATMENT TYPE.</span>
                      <select  name="ttype" class="form-control"  aria-describedby="basic-addon1"  required=""/>
                      <option ></option>
                      <option value="LOWER">LOWER LIMB</option>
                      <option value="UPPER">UPPER LIMB</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 "></div>
              <div class="col-lg-2">
                <button name="treatment" class="btn btn-lg btn-success btn-block">Continue!</button>
              </div>

            </form>
          </div>
          <?php
        }
      }
      ?>
      <?php
      $patientnum = $_SESSION['patientnum'];
      include('includes/db.php');
      if (isset($_POST['treatment'])) {
        $ttype = $_POST['ttype'];
        switch ($ttype) {
          case 'LOWER':
          $_SESSION['ttype'] = $ttype;
          ?>
          <meta http-equiv="refresh" content="0;url='lower.php'" />
          <?php
          break;

          case 'UPPER':
          $_SESSION['ttype'] = $ttype;
          ?>
          <meta http-equiv="refresh" content="0;url='lower.php'" />
          <?php
          break;
        }
      }
      ?>
    </div>
  </div>

</div>
<!-- delete section -->
</div>
<!-- end page-wrapper -->

</div>
<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="js/buttons.html5.min.js"></script>
<script src="js/dataTables.buttons.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jszip.min.js"></script>
<script src="js/pdfmake.min.js"></script>
<script src="js/vfs_fonts.js"></script>
<script src="assets/plugins/jquery-1.10.2.js"></script>
<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="assets/plugins/pace/pace.js"></script>
<script src="assets/scripts/siminta.js"></script>
<!-- Page-Level Plugin Scripts-->
<script src="assets/plugins/flot/jquery.flot.js"></script>
<script src="assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
<script src="assets/plugins/flot/jquery.flot.resize.js"></script>
<script src="assets/plugins/flot/jquery.flot.pie.js"></script>
<script src="assets/scripts/flot-demo.js"></script>

</body>

</html>
