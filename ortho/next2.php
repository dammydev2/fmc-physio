<?php
include("includes/connect.php");
//error_reporting(E_ALL);
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
  $num = $_POST['num'];
  $rec = $_POST['rec'];
  $worse = $_POST['worse'];
  $best = $_POST['best'];
  $current = $_POST['current'];
  $duration = $_POST['duration'];
  $aggravating = $_POST['aggravating'];
  $alleviating = $_POST['alleviating'];
  $behavior = $_POST['behavior'];
  $medication = $_POST['medication'];
  $home = $_POST['home'];
  $measures = $_POST['measures'];
  $joint = $_POST['joint'];
  $flexibility = $_POST['flexibility'];
  $ins = "INSERT INTO fmcphy_ortho.table_3 VALUES(NULL,'$num','$rec','$worse','$best','$current','$duration','$aggravating','$alleviating','$behavior','$medication','$home','$measures','$joint','$flexibility')";
  $res = $conn->query($ins);


//INSERTING MEDICAL HISTORY
  extract($_POST);
  $c = count($_POST['precautions']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.precautions VALUES(NULL,'$num','$rec','".$precautions[$a]."')";
    $res3 = $conn->query($ins);
  }
//INSERTING MEDICAL HISTORY
  extract($_POST);
  $c = count($_POST['living']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.living VALUES(NULL,'$num','$rec','".$living[$a]."')";
    $res4 = $conn->query($ins);
  }
  //INSERTING MEDICAL HISTORY
  extract($_POST);
  $c = count($_POST['home']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.home VALUES(NULL,'$num','$rec','".$home[$a]."')";
    $res5 = $conn->query($ins);
  }
  
  if ($res === TRUE) {
   ?>
   <meta http-equiv="refresh" content="0; URL=http:next3.php">
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
                    <h4>Intensity pain scale</h4>
                  </header>
                  <div class="panel-body">
                    <p></p>
                    <div class="form-group">
                      <label for="exampleInputEmail1">At worse</label>
                      <select name="worse" class="form-control">
                        <?php
                        for ($i=0; $i < 11; $i++) { 
                          echo "<option value".$i.">".$i."</option>";
                        }
                        ?>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">At best</label>
                      <select name="best" class="form-control">
                        <?php
                        for ($i=0; $i < 11; $i++) { 
                          echo "<option value".$i.">".$i."</option>";
                        }
                        ?>
                      </select>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">current</label>
                      <select name="current" class="form-control">
                        <?php
                        for ($i=0; $i < 11; $i++) { 
                          echo "<option value".$i.">".$i."</option>";
                        }
                        ?>
                      </select>
                    </div>
                  </div>
                  <p>&nbsp;</p>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Duration</label>
                  <input type="text" name="duration"  placeholder="For how long is the pain" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Aggravating Factors</label>
                  <input type="text" name="aggravating" placeholder="Aggravating Factors"  required  class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Alleviating Factors</label>
                  <input type="text" name="alleviating"  placeholder="Alleviating Factors" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">24-hour behavior of symptoms</label>
                  <input type="text" name="behavior"  placeholder="24-hour behavior of symptoms" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Medication/Allergies</label>
                  <input type="text" name="medication"  placeholder="Medication/Allergies" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b>Home Environment</b></label> <br>
                  <input type="radio" name="home"  value="Appropriate" required />Appropriate &nbsp;&nbsp;&nbsp;
                  <input type="radio" name="home"  value="Inppropriate" required />Inappropriate &nbsp;&nbsp;&nbsp;
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tests and Measures</label>
                  <input type="text" name="measures"  placeholder="Tests and Measures" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Joint Clearing</label>
                  <input type="text" name="joint"  placeholder="Joint Clearing" required class="form-control" id="exampleInputEmail1" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Flexibility</label>
                  <input type="text" name="flexibility"  placeholder="Flexibility" required class="form-control" id="exampleInputEmail1" />
                </div>
              </div>
              <div class="col-sm-12">
                
                <div class="col-sm-12">
                <div class="form-group">
                  <label for="exampleInputEmail1"><b>Precautions</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Use Gait Belt" />Use Gait Belt &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Fall Precautions" />Fall Precautions &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="THR Precautions" />THR Precautions &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Laminectomy Precautions" />TLaminectomy Precautions &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Proper Body Mechanics" />Proper Body Mechanics &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Other Functional Limitations" />Other Functional Limitations &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Amputation" />Amputation &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Hearing" />Hearing &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Ambulation" />Ambulation &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Paralysis" />Paralysis &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Dyspnea with Minimal Exertion" />Dyspnea with Minimal Exertion &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Contracture" />Contracture &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Bowel/Bladder" />Bowel/Bladder &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="precautions[]"  value="Endurance" />Endurance &nbsp;&nbsp;&nbsp;
                  <input type="text" name="precautions[]"  placeholder="Other (Specify)" /> &nbsp;&nbsp;&nbsp;
                </div>
                <div class="form-group" style="background: #fff;">
                  <p>&nbsp;</p>
                  <label for="exampleInputEmail1"><b>Living Situation</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="radio" name="living[]"  value="Independent" />Independent &nbsp;&nbsp;&nbsp;
                  <input type="radio" name="living[]"  value="Caregiver" />Caregiver &nbsp;&nbsp;&nbsp;<br>
                  <h4>Please choose from below if <b>caregiver is choose from above</b></h4>
                  <input type="checkbox" name="living[]"  value="Able to assist with program" />Able to assist with program &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="living[]"  value="Unable to assist with program" />Unable to assist with program &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="living[]"  value="Willing to assist with program" />Willing to assist with program &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="living[]"  value="Unwilling to assist with program" />Unwilling to assist with program &nbsp;&nbsp;&nbsp;
                  <p>&nbsp;</p>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1"><b>Equipment in Home</b></label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Walker" />Walker &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Cane" />Cane &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Wheelchair" />Wheelchair &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Bath/Shower Seat" />Bath/Shower Seat &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Grab Bars" />Grab Bars &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="3-in-1 Commode" />3-in-1 Commode &nbsp;&nbsp;&nbsp;
                  <input type="checkbox" name="home[]"  value="Raised Toilet Seat" />Raised Toilet Seat &nbsp;&nbsp;&nbsp;
                  <input type="text" name="home[]"  placeholder="other" />
                </div>
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
