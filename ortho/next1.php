<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
  $num = $_POST['num'];
  $rec = $_POST['rec'];
  $BP = $_POST['BP'];
  $heart = $_POST['heart'];
  $respiration = $_POST['respiration'];
  $compliant = $_POST['compliant'];
  $history = $_POST['history'];
  $symptoms = $_POST['symptoms'];
  $onset = $_POST['onset'];
  $pain = $_POST['pain'];
  $des = $_POST['des'];
  extract($_POST);
  $c = count($_POST['additional']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.additional VALUES(NULL,'$num','$rec','".$additional[$a]."')";
    $res = $conn->query($ins);
  }
  $ins = "INSERT INTO fmcphy_ortho.table_2 VALUES(NULL,'$num','$rec','$BP','$heart','$respiration','$compliant','$history','$symptoms','$onset','$pain','$des')";
  $res = $conn->query($ins);
  if ($res === TRUE) {
   ?>
    <meta http-equiv="refresh" content="0; URL=http:next2.php">
    <?php
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
        <!-- /.container-fluid -->

        <div class="col-sm-12 w3-sand">
          <p>&nbsp;</p>
          <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4">
              <form method="POST">
                <!--the session collected-->
                <input type="text" name="num" style="display: none;" value="<?php echo($num) ?>" class="form-control" id="exampleInputEmail1" />
                <input type="text" name="rec" style="display: none;" value="<?php echo($rec) ?>" class="form-control" id="exampleInputEmail1" />
                <!--the session collected-->
                <div class="panel panel-primary  w3-card w3-sand">
                  <header class="w3-container w3-blue">
                    <h4>Vital sign</h4>
                  </header>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Blood Pressure</label>
                      <input type="text" name="BP" required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Heart Rate</label>
                      <input type="text" name="heart"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Respiration</label>
                      <input type="text" name="respiration"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Chief Compliant</label>
                  <input type="text" name="compliant"  placeholder="Enter compliant" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">History of present injury</label>
                  <input type="text" name="history" placeholder="History of present injury"  required  class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Current Symptoms</label>
                  <input type="text" name="symptoms"  placeholder="Current Symptoms" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Onset</label>
                  <input type="text" name="onset"  placeholder="Enter onset" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Pain</label>
                  <input type="text" name="pain"  placeholder="Enter pain" required class="form-control" id="exampleInputEmail1" />
                </div>
              </div>
              <div class="col-sm-12">
                <div class="form-group" style="margin-left: 130px;">
                  <label for="exampleInputEmail1"><b>Description</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="des"  value="Intermittent" required />Intermittent &nbsp;&nbsp;&nbsp;
                  <input type="radio" name="des"  value="Constant" required />Constant &nbsp;&nbsp;&nbsp;
                  <input type="radio" name="des"  value="Dull" required />Dull &nbsp;&nbsp;&nbsp;
                  <input type="radio" name="des"  value="Sharp" required />Sharp &nbsp;&nbsp;&nbsp;
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b>Additional Symptoms</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="Headache" />Headache &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="Radiating pain to UEs" />Radiating pain to UEs &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="numbness" />numbness &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="tingling" />tingling &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="dizziness" />dizziness &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="vision changes" />vision changes &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="hearing changes" />hearing changes &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="loss of balance" />loss of balance &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="additional[]"  value="nausea" />nausea &nbsp;&nbsp;&nbsp;
                  <input type="text" name="additional[]"  placeholder="add additional symptoms" /> &nbsp;&nbsp;&nbsp;
                </div>
                <div style="text-align: center;">
                  <button type="submit" class="btn btn-success col-sm-4" name="submit">Continue</button>
                </div>
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
