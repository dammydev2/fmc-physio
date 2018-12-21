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
    $ins = "INSERT INTO fmcphy_ortho.Special_2 VALUES(NULL,'$num','$rec','".$test[$a]."','".$answer[$a]."')";
    $res = $conn->query($ins);
  }
  $ins = "INSERT INTO fmcphy_ortho.Special VALUES(NULL,'$num','$rec','$Circumference','$Endurance')";
  $res = $conn->query($ins);
  if ($res === TRUE) {
   ?>
   <meta http-equiv="refresh" content="0; URL=http:next8.php">
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
                      <label for="exampleInputEmail1">Muscle circumference</label>
                      <input type="text" name="Circumference" required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail1">Endurance</label>
                      <input type="text" name="Endurance"  required class="form-control" id="exampleInputEmail1" />
                    </div>
                    <table class="table" border="1">
                      <tr>
                        <th colspan="2" class="text-center">Special Tests</th>
                      </tr>
                      <tr>
                        <th colspan="2">Cervical</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Distraction Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Compression Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Spurling Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Movement Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Shoulder</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Empty Can Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Sulcus Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Drop Arm Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Elbow</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Valgus Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Varus Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Tinel Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Hand and Wrist</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Tinel’s Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Reverse Phalen’s Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Compression Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Hip</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Faber’s Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Ely’s Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Gaeslen Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Knee</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Valgus Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Varus Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Anterior Drawal Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Posterior Drawal Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Patella Grind Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <th colspan="2">Ankle and foot</th>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Talar Tilt Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="Anterior Drawal Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
                        </td>
                      </tr>
                      <tr>
                        <td><input type="text" name="test[]" value="External Rotator Test" readonly></td>
                        <td>
                          <select name="answer[]">
                            <option value="+ve">+ve</option>
                            <option value="-ve">-ve</option>
                          </select>
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
