<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
if (isset($_POST['submit'])) {
  $num = $_POST['num'];
  $rec = $_POST['rec'];
  extract($_POST);
  $ins = "INSERT INTO fmcphy_ortho.doc VALUES(NULL,'$num','$rec','$name','$dt')";
  $res = $conn->query($ins);
  if ($res === TRUE) {
   ?>
   <meta http-equiv="refresh" content="0; URL=http:print.php">
   <?php
 }
}
?>
<!DOCTYPE html>
<html lang="en">
<style type="text/css">
  @media print {
      #printPageButton {
        display: none;
      }
    }

</style>
<head>
  <div id="printPageButton">
  <?php
  include("includes/navbar.php");
  ?>
</div>


  <div id="wrapper">

    <!-- Sidebar -->
    <div id="printPageButton">
    <?php
    include("includes/sidebar.php");
    ?>
  </div>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active" id="printPageButton">Add Evaluation </li>
        </ol>

        <!-- Icon Cards-->
        <!-- /.container-fluid -->
<button onclick="window.print()" id="printPageButton">Print</button>
        <div class="col-sm-12 w3-sand">
          <p>&nbsp;</p>
          <div class="row">
            <div style="width: 900px; border: 1px solid #000;">
              <h3 class="text-center">FEDERAL MEDICAL CENTRE, ABEOKUTA <br>
                PHYSIOTHERAPY DEPARTMENT<br>

                ORTHOPAEDIC UNIT<br>

              JOINT EVALUATION FORM</h3>
              <div style="padding: 20px;">
                <?php
                $sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                while ($row = $res->fetch_array()) {
                  echo "
                  <p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'>DOB: <b>$row[2]</b></span></p>
                  <p>Age: <b>$row[1]</b><span style='margin-left: 100px;'>Date: <b>$row[5]</b></span></p>
                  <p>Diagnosis: <b>$row[6]</b><span style='margin-left: 100px;'>Onset: <b>$row[7]</b></span></p>
                  <p>Occupation: <b>$row[8]</b><span style='margin-left: 100px;'>Patient Goals: <b>$row[9]</b></span></p>
                  ";
                }
              //vital signs
                $sel = "SELECT * FROM table_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                while ($row = $res->fetch_array()) {
                  echo "
                  <p>Vital Signs (BP): <b>$row[3]</b><span style='margin-left: 100px;'>Heart Rate: <b>$row[4]</b></span><span style='margin-left: 100px;'>Respiration: <b>$row[5]</b></span></p>
                  <p>Chief Complaint: <b>$row[6]</b><span style='margin-left: 100px;'>History of present injury: <b>$row[7]</b></span></p>
                  <p>Current Symptoms: <b>$row[8]</b><span style='margin-left: 100px;'>Onset: <b>$row[9]</b></span></p>
                  <p>Pain: <b>$row[10]</b><span style='margin-left: 100px;'>Description: <b>$row[11]</b></span></p>
                  ";
                }
              //ADDITIONAL SYMPTOM
              //vital signs
                $sel = "SELECT * FROM additional WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>ADDITIONAL Symptoms</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                $sel = "SELECT * FROM table_3 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b>INTENSITY PAIN SCALE<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>At Worse: $row[3]</td>
                      <td>At best: $row[4]</td>
                      <td>Current: $row[5]</td>
                    </tr>
                    <tr>
                      <td>Duration: $row[6]</td>
                      <td>Aggravating Factors: $row[7]</td>
                      <td>Alleviating Factors: $row[8]</td>
                    </tr>
                    <tr>
                      <td>24-hour behavior of symptoms: $row[9]</td>
                      <td>Medication/Allergies: $row[10]</td>
                      <td>Home Environment: $row[11]</td>
                    </tr>
                    <tr>
                      <td>Tests and Measures: $row[12]</td>
                      <td>Observation: $row[13]</td>
                      <td>Joint Clearing: $row[14]</td>
                    </tr>
                    <tr>
                      <td>Flexibility: $row[15]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                //PAT MEDICAL HISTORY
                //vital signs
                $sel = "SELECT * FROM medical WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>PAST MEDICAL HISTORY</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM PRECAUTIONS WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>PRECAUTIONS</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM living WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>LIVING SITUATION</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM HOME WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>EQUIPMENT AT HOME</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                $sel = "SELECT * FROM range_1 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                    <tr>
                      <td colspan="7">RANGE OF MOTION</td>
                    </tr>
                    <tr>
                      <th></th>
                      <th colspan="3">Cervical</th>
                      <th colspan="3">Thoracic</th>
                    </tr>
                    <tr>
                      <th></th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                      <th>COMMENT</th>
                    </tr>
                  <?php
                  echo "<p><b>INTENSITY PAIN SCALE<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td> $row[3]</td>
                      <td>$row[4]</td>
                      <td>$row[5]</td>
                      <td> $row[6]</td>
                      <td>$row[7]</td>
                      <td>$row[8]</td>
                      <td> $row[9]</td>
                      <td>$row[10]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM range_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                    <tr>
                      <td colspan="7">RANGE OF MOTION</td>
                    </tr>
                    <tr>
                      <th></th>
                      <th colspan="3">L Upper extremity</th>
                      <th colspan="3">R Upper Extremity</th>
                    </tr>
                    <tr>
                      <th></th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                    </tr>
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td> $row[3]</td>
                      <td>$row[4]</td>
                      <td>$row[5]</td>
                      <td> $row[6]</td>
                      <td>$row[7]</td>
                      <td>$row[8]</td>
                      <td> $row[9]</td>
                    </tr>
                    ";
                    $comment = $row[10];
                  }
                  echo "<tr><td colspan='6'>Comment: $comment</td></tr>";

                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM range_3 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                    <tr>
                      <td colspan="7">RANGE OF MOTION</td>
                    </tr>
                    <tr>
                      <th></th>
                      <th colspan="3">L Lower extremity</th>
                      <th colspan="3">R Lower Extremity</th>
                    </tr>
                    <tr>
                      <th></th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                      <th>AROM</th>
                      <th>PROM</th>
                      <th>END FEEL</th>
                    </tr>
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td> $row[3]</td>
                      <td>$row[4]</td>
                      <td>$row[5]</td>
                      <td> $row[6]</td>
                      <td>$row[7]</td>
                      <td>$row[8]</td>
                      <td> $row[9]</td>
                    </tr>
                    ";
                    $comment = $row[10];
                  }
                  echo "<tr><td colspan='6'>Comment: $comment</td></tr>";

                  ?>
                  </table>
                </div>
                 <?php
                $sel = "SELECT * FROM posture WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>Scapular mobility: $row[3]</td>
                      <td>Neurological: $row[4]</td>
                      <td>Paresthesias: $row[5]</td>
                    </tr>
                    <tr>
                      <td>Sensation: $row[6]</td>
                      <td>Proprioception: $row[7]</td>
                      <td>Tone: $row[8]</td>
                    </tr>
                    <tr>
                      <td>Reflexes: $row[9]</td>
                      <td>Other: $row[10]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM Posture_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>POSTURE</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                $sel = "SELECT * FROM special WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>Muscle Circumference: $row[3]</td>
                      <td>Endurance: $row[4]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM special_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b>special test<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>$row[3]</td>
                      <td>$row[4]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM Mobility WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>Joint Mobility: $row[3]</td>
                      <td>Palpation: $row[4]</td>
                      <td>Functional Asseesment: $row[5]</td>
                    </tr>
                    <tr>
                      <td>Treatment provided during this visit: $row[6]</td>
                      <td>Response to treatment: $row[8]</td>
                      <td>Assessment: $row[9]</td>
                    </tr>
                    <tr>
                      <td>Rehab Potential/Prognosis: $row[10]</td>
                      <td>Short Term Goals: $row[11]</td>
                      <td>Long Term Goals: $row[12]</td>
                    </tr>
                    <tr>
                      <td>Frequency: $row[13]</td>
                      <td>Duration: $row[14]</td>
                      <td>Modalities: $row[15]</td>
                    </tr>
                    ";
                  }

                  ?>
                  </table>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM Posture_3 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>POSTURE</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                $sel = "SELECT * FROM Mobility_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b>Mobility<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>$row[3]</td>
                      <td>$row[4]</td>
                    </tr>
                    ";
                    $comment = $row[5];
                  }
                  echo "<tr>
                      <td colspan='2'>Comment: $comment</td>
                  </tr>";
                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM gait WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b>Gait<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>Weight Bearing: $row[3]</td>
                      <td>Assistive Device: $row[4]</td>
                      <td>Assistance: $row[5]</td>
                    </tr>
                    <tr>
                      <td>Distance: $row[6]</td>
                      <td>Deviations: $row[7]</td>
                    </tr>
                    ";
                    $comment = $row[5];
                  }
                  ?>
                  </table>
                </div>
                <?php
                //vital signs
                $sel = "SELECT * FROM gait_2 WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <?php
                  echo "<p><b>Deviations</b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "

                    <ul style='list-style: none;'>
                    <li>$row[3]</li>
                    </ul>
                    ";
                  }

                  ?>
                </div>
                <?php
                $sel = "SELECT * FROM Endurance WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b>Special test<b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>$row[3]</td>
                      <td>$row[4]</td>
                    </tr>
                    ";
                    $comment = $row[5];
                  }
                  echo "Endurance: $comment";
                  ?>
                  </table>
                </div>
                <?php
                $sel = "SELECT * FROM last WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                ?>
                <div style="border: 1px solid #000; padding: 5px;">
                  <table class="table" border="1">
                  <?php
                  echo "<p><b><b></p>";
                  while ($row = $res->fetch_array()) {
                    echo "
                    <tr>
                      <td>Joint Mobility: $row[3]</td>
                      <td>Palpation: $row[4]</td>
                      <td>Functional Tests: $row[5]</td>
                    </tr>
                    <tr>
                      <td>Treatment provided this visit: $row[6]</td>
                      <td>Response to treatment: $row[7]</td>
                      <td>Assessment: $row[8]</td>
                    </tr>
                    <tr>
                      <td>Rehab Potential: $row[10]</td>
                      <td>Short Term Goals: $row[11]</td>
                      <td>Long Term Goals: $row[12]</td>
                    </tr>
                    <tr>
                      <td>Frequency: $row[13]</td>
                      <td>Duration: $row[14]</td>
                      <td>Modalities: $row[15]</td>
                    </tr>
                    ";
                    $comment = $row[5];
                  }
                  ?>
                  </table>
                </div>
                <p>&nbsp;</p>
                <?php
                $sel = "SELECT * FROM doc WHERE num='$num' AND rec='$rec'";
                $res = $conn->query($sel);
                while ($row = $res->fetch_array()) {
                  echo "<p>Physiotherapist: $row[3]</p>
                  <p>Date: $row[4]</p>
                  ";
                }
                ?>



              </div>
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
            <div class="copyright text-center my-auto" id="printPageButton">
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
