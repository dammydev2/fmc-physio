<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
  $num = $_POST['num'];
  $rec = $_POST['rec'];
  extract($_POST);
  $ins = "INSERT INTO fmcphy_ortho.gait VALUES(NULL,'$num','$rec','$Weight','$Assistive','$Assistance','$Distance','$pro')";
  $res = $conn->query($ins);
  $c = count($_POST['Posture']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.Posture_3 VALUES(NULL,'$num','$rec','".$Posture[$a]."')";
    $res = $conn->query($ins);
  }
  $ins = "INSERT INTO fmcphy_ortho.mobility VALUES(NULL,'$num','$rec','$mobility','$Palpation','$Functional','$Sensation','$Treatment','$Response','$Asseesment','$Rehab','$Short_goal','$Long_goal','$Frequency','$Duration','$Modalities')";
  $res = $conn->query($ins);
  if ($res === TRUE) {
   ?>
   <meta http-equiv="refresh" content="0; URL=http:next9.php">
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
                    <h4>   </h4>
                  </header>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Joint Mobility</label>
                      <input type="text" name="mobility" required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Palpation</label>
                      <input type="text" name="Palpation"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Functional Assesment</label>
                      <textarea name="Functional" class="form-control" placeholder="next line action following patient response to previous treatment"></textarea>
                    </div>
                    <div class="panel panel-primary  w3-card w3-sand">
                  <header class="w3-container w3-blue">
                    <h4>Gait   </h4>
                  </header>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Weight Bearing</label>
                      <select name="Weight" class="form-control">
                        <option value="partial">partial</option>
                        <option value="full">full</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Assistive Device</label>
                      <input type="text" name="Assistive"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Assistance</label>
                      <input type="text" name="Assistance"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Distance</label>
                      <input type="text" name="Distance"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Proprioception</label>
                      <input type="text" name="pro"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                </div>
                </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Clinical impression</label>
                      <textarea name="Asseesment" class="form-control" placeholder="to write  things being done before and they cant do now"></textarea>
                    </div>
                    <div class="form-group">
                      <h4 class="w3-blue">Treatment Plan</h4>
                      <label for="exampleInputEmail1">Treatment provided during this visit</label>
                      <input type="text" name="Treatment"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Response to treatment</label>
                      <select name="Response" class="form-control">
                        <option value="well tolerated">well tolerated</option>
                        <option value="not tolerated">not tolerated</option>
                        <option value="complain">complain</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Rehab Potential/Prognosis</label>
                      <input type="text" name="Rehab"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="w3-card">
                      <header class="w3-container w3-blue">
                        <h4>Goals</h4>
                      </header>
                      <div class="w3-container">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Short Term Goals</label>
                          <input type="text" name="Short_goal"  required class="form-control" id="exampleInputEmail1" />
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Long Term Goals</label>
                          <input type="text" name="Long_goal"  required class="form-control" id="exampleInputEmail1" />
                        </div>
                      </div>
                    </div>
                    <!--::::TREATMENT PLAN::::-->
                    <div class="w3-card">
                      <header class="w3-container w3-blue">
                        <h4>Treatment Plan</h4>
                      </header>
                      <div class="w3-container">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Frequency</label>
                          <input type="text" name="Frequency"  required class="form-control" id="exampleInputEmail1" />
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Duration</label>
                          <input type="text" name="Duration"  required class="form-control" id="exampleInputEmail1" />
                        </div>
                        <div class="form-group">
                          <label for="exampleInputEmail1">Modalities</label>
                          <input type="text" name="Modalities"  required class="form-control" id="exampleInputEmail1" />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                
              </div>
              <div class="col-sm-12">
                <div class="form-group" style="background: #fff;">
                  <p>&nbsp;</p>
                  <label for="exampleInputEmail1"><b>Posture</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="No Abnormality" />No Abnormality &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Forward Head" />Forward Head &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Genu Valgum/Varus/Recurvatum" />Genu Valgum/Varus/Recurvatum &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Kyphosis" />Kyphosis &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Protracted Shoulders" />Protracted Shoulders &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Ankle Pronation/Supination" />Ankle Pronation/Supination &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Scoliosis" />Scoliosis &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Leg Length" />Leg Length &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Discrepancy" />Discrepancy &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="Posture[]"  value="Lordosis" />Lordosis &nbsp;&nbsp;&nbsp;
                  <input type="text" name="Posture[]"  placeholder="add additional Posture" /> &nbsp;&nbsp;&nbsp;
                  <p>&nbsp;</p>
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
