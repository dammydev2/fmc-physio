<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
  $num = $_POST['num'];
  $rec = $_POST['rec'];
  extract($_POST);
  $c = count($_POST['test']);
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_ortho.Endurance VALUES(NULL,'$num','$rec','".$test[$a]."','".$answer[$a]."','$Endurance')";
    $res = $conn->query($ins);
  }
  if ($res === TRUE) {
   ?>
   <meta http-equiv="refresh" content="0; URL=http:doctor.php">
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
            <div class="col-sm-1"></div>
            <div class="col-sm-10">
              <form method="POST">
                <!--the session collected-->
                <input type="text" class="form-control" name="num" style="display: none;" value="<?php echo($num) ?>" class="form-control" id="exampleInputEmail1" />
                <input type="text" class="form-control" name="rec" style="display: none;" value="<?php echo($rec) ?>" class="form-control" id="exampleInputEmail1" />
                <!--the session collected-->
                <div class="panel panel-primary  w3-card w3-sand">
                  <header class="w3-container w3-blue">
                    <h4>   </h4>
                  </header>
                  <div class="panel-body">
                    <div class="form-group">
                      <label for="exampleInputEmail1">Endurance</label>
                      <input type="text" class="form-control" name="Endurance"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <table class="table" border="1">
                      <tr>
                        <th colspan="2" class="text-center">Special Tests</th>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Slump Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Straight Leg Raise Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Cram Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Sign of the Buttock Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Prone Knee Bending Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Valsalva’s Maneuver Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Segmental Instability Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Anterior Lumbar Instability Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="One-legged Standing Lumbar Extension Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Quadrant Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Trendelenberg Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Compression / Distraction" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" class="form-control" name="test[]" value="Other special test" readonly></td>
                        <td>
                          <input type="text" class="form-control" name="answer[]" class="form-control">
                        </td>
                      </tr>


                    </table>
                  </div>
                </div>

              </div>
              <div class="col-sm-12">

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
