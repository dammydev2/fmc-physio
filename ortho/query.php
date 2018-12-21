<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];

if (isset($_POST['submit'])) {
    $_SESSION['patientnum'] = $_POST['num'];
    $_SESSION['val'] = $_POST['val'];
    header("Location: print-diag.php");
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
              

                  <p>&nbsp;</p>
                  <p>&nbsp;</p>


                  <form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                      <div class="control-group">
                        <label class="control-label">Diagnosis</label>
                        <div class="controls">
                            <input type="text" name="Physio" id="required" required="required" value="<?php echo $Physio; ?>" style="display: none;">
                           <?php 
                                    $query = ("SELECT DISTINCT Diagnosis FROM table_1 ORDER BY Diagnosis DESC"); // Run your query
                    echo '<select name="val">'; // Open your drop down box
                      // Loop through the query results,
                      //outputing the options one by one
                    echo "<option>Select here</option>";
                    $drg = $conn->query($query);
                    while ($row = $drg->fetch_array()) {
                      echo '<option value="'.$row
                      ['Diagnosis'].'">'.$row
                      ['Diagnosis'].'</option>';
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
            <div style="height: 300px;"></div>
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
