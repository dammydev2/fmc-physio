<?php
include("includes/connect.php");
include("includes/eval1.php");
ob_start();
session_start();
//error_reporting(E_ALL);
$servername = "localhost";
$username = "root";
$password = "damilola92";
$db = "fmcphy_gen";

// Create connection
$reg = new mysqli($servername, $username, $password,$db);

if (isset($_POST['Search'])) {
  $id = $_POST['id'];
  $sel = "SELECT * FROM reg WHERE p_id='$id'";
  $res = $reg->query($sel);
  if ($res->num_rows < 1) {
    echo "<script>
    alert('no record found');
    </script>";
  }
  else{
    while ($row = $res->fetch_array()) {
      $name = $row[1];
      $dob = $row[3];
    }
    $sel = "SELECT * FROM receipt";
    $res = $conn->query($sel);
    while ($row = $res->fetch_array()) {
      $rec_num = $row[1];
      $rec_num = $rec_num + 1;
    }
  }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <?php
  include("includes/navbar.php");
  ?>


  <div id="wrapper">

    <!-- Sidebar -->
    <?php
    include("includes/sidebar.php");
    ?>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Add Evaluation </li>
        </ol>

        <!-- Icon Cards-->
        <div class="row">
          <div class="col-sm-4"></div>
          <form method="POST">
            <p><b>Enter patient number and click on search to continue</b></p>
            <div class="form-group">
              <label for="exampleInputEmail1">Patient num</label>
              <input type="text" name="id" required class="form-control" id="exampleInputEmail1" />
            </div>
            <button type="submit" class="btn btn-primary" name="Search">Search</button>
          </form>
        </div>
        <p>&nbsp;</p>
        <!-- /.container-fluid -->

        <div class="col-sm-12 w3-sand">
          <p>&nbsp;</p>
          <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
              <form method="POST">
                <div class="form-group">
                  <label for="exampleInputEmail1">Patient Name</label>
                  <input type="text" name="Pname" required readonly value="<?php echo($name) ?>" class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Date of birth</label>
                  <input type="text" name="DOB"  required readonly value="<?php echo($dob) ?>" class="form-control" id="exampleInputEmail1" />
                  <input type="text" name="num" style="display: none;" value="<?php echo($id) ?>" class="form-control" id="exampleInputEmail1" />
                  <input type="text" name="rec" style="display: none;" value="<?php echo($rec_num) ?>" class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Date</label>
                  <input type="date" name="dt"  required  class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Diagnosis</label>
                  <input type="text" name="diagnosis"  placeholder="Enter Diagnosis" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Onset (i.e date pain started)</label>
                  <input type="date" name="onset" placeholder="(i.e date pain started)"  required  class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Occupation</label>
                  <input type="text" name="occupation"  placeholder="Enter Occupation" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Patient Goals</label>
                  <input type="text" name="goals"  placeholder="Enter goals" required class="form-control" id="exampleInputEmail1" />
                </div>
                <button type="submit" class="btn btn-success" name="submit">Continue</button>
              </form>
            </div>
          </div>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </div>

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright © | Design by Computer Dept. FMCA</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

  </body>

  </html>
