<?php
include("include/connect.php");
$num = $_SESSION['num'];
$rec_num = $_SESSION['rec'];
/**::::::::THE CONTINUE BUTTON::::::**/
?>
<style type="text/css">
    @media print {
      #printPageButton {
        display: none;
      }
    }

</style>
<div class="se-pre-con"></div>
<div class="wrapper">
  <div id="printPageButton">
  <?php include("include/sidebar.php");?>
</div>

  <!-- Page Content Holder -->
  <div id="content w3-light-grey">
    <!-- top-bar -->
    <?php
    //echo $rec_num;
    ?>
    <button onclick="window.print()" id="printPageButton">Print</button>
    <div style="background: #fff; margin-left: 30px; width: 800px; border: 1px solid #000;">
      <p>&nbsp;</p>
      <h3 class="text-center">FEDERAL MEDICAL CENTRE, ABEOKUTA</h3>
      <h4 class="text-center">OCCUPATIONAL THERAPY UNIT</h4>
      <h6 class="text-center">Occupational Therapy Initial Assessment</h6>
      <table class="table" border="1">
        <?php
          $sel = "SELECT * FROM assesment WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
              <th>Name</th>
              <td>".$row[1]."</td>
            </tr>
            <tr>
              <th>Date of Birth</th>
              <td>".$row[2]."</td>
            </tr>
            <tr>
              <th>Treatment Dx</th>
              <td>".$row[5]."</td>
            </tr>
            <tr>
              <th>Past Medical/surgical Hx</th>
              <td>".$row[6]."</td>
            </tr>
            <tr>
              <th>Medications</th>
              <td>".$row[7]."</td>
            </tr>
            <tr>
              <th>Date of Initial Assessment</th>
              <td>".$row[8]."</td>
            </tr>
            <tr>
              <th>Occupational Profile</th>
              <td>".$row[9]."</td>
            </tr>
            ";
          }
        ?>
      </table>
      <p>&nbsp;</p>
      <table class="table" border="1">
        <tr>
          <th colspan="3" class="text-center">Activities of Daily living(ADL Status)</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th>Comment</th>
        </tr>
        <?php
          $sel = "SELECT * FROM activity WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
                  <th>".$row[3]."</th>
                  <td>".$row[4]."</td>
                  <td>".$row[5]."</td>
                </tr>";
              }
            ?>
      </table>
      <p>&nbsp;</p>
      <table class="table" border="1">
        <tr>
          <th colspan="3" class="text-center">Instrumental ADL Status</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th>Comment</th>
        </tr>
        <?php
          $sel = "SELECT * FROM ADL WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
                  <th>".$row[3]."</th>
                  <td>".$row[4]."</td>
                  <td>".$row[5]."</td>
                </tr>";
              }
            ?>
      </table>
      <p>&nbsp;</p>
      <table class="table" border="1">
        <tr>
          <th colspan="3" class="text-center">Work/Leisure participation</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th>Comment</th>
        </tr>
        <?php
          $sel = "SELECT * FROM Leisure WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
                  <th>".$row[3]."</th>
                  <td>".$row[4]."</td>
                  <td>".$row[5]."</td>
                </tr>";
              }
            ?>
      </table>
      <p>&nbsp;</p>
      <table class="table" border="1">
        <tr>
          <th colspan="3" class="text-center">Client Factors</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th></th>
          <th>Comment</th>
        </tr>
        <?php
          $sel = "SELECT * FROM functional WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
                  <th>".$row[6]."</th>
                  <td><i>".$row[3]."</i></td>
                  <td>".$row[4]."</td>
                  <td>".$row[5]."</td>
                </tr>";
              }
            ?>
      </table>
      <p>&nbsp;</p>
      <table class="table" border="1">
        <tr>
          <th colspan="3" class="text-center">Performance skills</th>
        </tr>
        <tr>
          <th></th>
          <th></th>
          <th></th>
          <th>Comment</th>
        </tr>
        <?php
          $sel = "SELECT * FROM performance WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "<tr>
                  <th>".$row[6]."</th>
                  <td><i>".$row[3]."</i></td>
                  <td>".$row[4]."</td>
                  <td>".$row[5]."</td>
                </tr>";
              }
            ?>
      </table>
      <p>&nbsp;</p>
      <div class="container">
      <?php
      $sel = "SELECT * FROM patient WHERE num='$num' AND rec='$rec_num'";
          $res = $conn->query($sel);
          while ($row = $res->fetch_array()) {
            echo "
              <p><b>Patient/family goals: </b> $row[3]</p>
              <p><b>Comment: </b> $row[4]</p>
              <p><b>Analysis of Occupational performance: </b> $row[5]</p>
              <p><b>Short-term goals: </b> $row[6]</p>
              <p><b>Long-term goals: </b> $row[7]</p>
              <p><b>OT intervention plan: </b> $row[8]</p>
              <p><b>Frequency/duration: </b> $row[9]</p>
              <p>&nbsp;</p>
              <p>Theraphist Name: <b>$row[10]</b> <span style='margin-left: 50px;'>Signature: .................................</span> <span style='margin-left: 50px;'>Date: ".date("d/m/Y")."</span></p>
            ";
          }
          ?>
          <p>&nbsp;</p>
          <p></p>
        </div>
    </div>


    <!-- Simple-chart -->
    
    <!--// Simple-chart -->


    <!--// Three-grids -->

    <!--// Countdown -->
    <!-- Copyright -->
    <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center" id="printPageButton">
      <p>© 2018 Modernize . All Rights Reserved | Design by
        Computer Department FMCA
      </p>
    </div>
    <!--// Copyright -->
  </div>
</div>


<!-- Required common Js -->
<script src='js/jquery-2.2.3.min.js'></script>
<!-- //Required common Js -->

<!-- loading-gif Js -->
<script src="js/modernizr.js"></script>
<script>
        //paste this code under head tag or in a seperate js file.
        // Wait for window load
        $(window).load(function () {
            // Animate loader off screen
            $(".se-pre-con").fadeOut("slow");;
          });
        </script>
        <!--// loading-gif Js -->

        <!-- Sidebar-nav Js -->
        <script>
          $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
              $('#sidebar').toggleClass('active');
            });
          });
        </script>
        <!--// Sidebar-nav Js -->

        <!-- Graph -->
        <script src="js/SimpleChart.js"></script>
        <script>
          var graphdata4 = {
            linecolor: "Random",
            title: "Thursday",
            values: [{
              X: "6",
              Y: 300.00
            },
            {
              X: "7",
              Y: 101.98
            },
            {
              X: "8",
              Y: 140.00
            },
            {
              X: "9",
              Y: 340.00
            },
            {
              X: "10",
              Y: 470.25
            },
            {
              X: "11",
              Y: 180.56
            },
            {
              X: "12",
              Y: 680.57
            },
            {
              X: "13",
              Y: 740.00
            },
            {
              X: "14",
              Y: 800.89
            },
            {
              X: "15",
              Y: 420.57
            },
            {
              X: "16",
              Y: 980.24
            },
            {
              X: "17",
              Y: 1080.00
            },
            {
              X: "18",
              Y: 140.24
            },
            {
              X: "19",
              Y: 140.58
            },
            {
              X: "20",
              Y: 110.54
            },
            {
              X: "21",
              Y: 480.00
            },
            {
              X: "22",
              Y: 580.00
            },
            {
              X: "23",
              Y: 340.89
            },
            {
              X: "0",
              Y: 100.26
            },
            {
              X: "1",
              Y: 1480.89
            },
            {
              X: "2",
              Y: 1380.87
            },
            {
              X: "3",
              Y: 1640.00
            },
            {
              X: "4",
              Y: 1700.00
            }
            ]
          };
          $(function () {
            $("#Hybridgraph").SimpleChart({
              ChartType: "Hybrid",
              toolwidth: "50",
              toolheight: "25",
              axiscolor: "#E6E6E6",
              textcolor: "#6E6E6E",
              showlegends: false,
              data: [graphdata4],
              legendsize: "140",
              legendposition: 'bottom',
              xaxislabel: 'Hours',
              title: 'Weekly Profit',
              yaxislabel: 'Profit in $'
            });
          });
        </script>
        <!--// Graph -->
        <!-- Bar-chart -->
        <script src="js/rumcaJS.js"></script>
        <script src="js/example.js"></script>
        <!--// Bar-chart -->
        <!-- Calender -->
        <script src="js/moment.min.js"></script>
        <script src="js/pignose.calender.js"></script>
        <script>
        //<![CDATA[
        $(function () {
          $('.calender').pignoseCalender({
            select: function (date, obj) {
              obj.calender.parent().next().show().text('You selected ' +
                (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                '.');
            }
          });

          $('.multi-select-calender').pignoseCalender({
            multiple: true,
            select: function (date, obj) {
              obj.calender.parent().next().show().text('You selected ' +
                (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                '~' +
                (date[1] === null ? 'null' : date[1].format('YYYY-MM-DD')) +
                '.');
            }
          });
        });
        //]]>
      </script>
      <!--// Calender -->

      <!-- profile-widget-dropdown js-->
      <script src="js/script.js"></script>
      <!--// profile-widget-dropdown js-->

      <!-- Count-down -->
      <script src="js/simplyCountdown.js"></script>
      <link href="css/simplyCountdown.css" rel='stylesheet' type='text/css' />
      <script>
        var d = new Date();
        simplyCountdown('simply-countdown-custom', {
          year: d.getFullYear(),
          month: d.getMonth() + 2,
          day: 25
        });
      </script>
      <!--// Count-down -->

      <!-- pie-chart -->
      <script src='js/amcharts.js'></script>
      <script>
        var chart;
        var legend;

        var chartData = [{
          country: "Lithuania",
          value: 260
        },
        {
          country: "Ireland",
          value: 201
        },
        {
          country: "Germany",
          value: 65
        },
        {
          country: "Australia",
          value: 39
        },
        {
          country: "UK",
          value: 19
        },
        {
          country: "Latvia",
          value: 10
        }
        ];

        AmCharts.ready(function () {
            // PIE CHART
            chart = new AmCharts.AmPieChart();
            chart.dataProvider = chartData;
            chart.titleField = "country";
            chart.valueField = "value";
            chart.outlineColor = "";
            chart.outlineAlpha = 0.8;
            chart.outlineThickness = 2;
            // this makes the chart 3D
            chart.depth3D = 20;
            chart.angle = 30;

            // WRITE
            chart.write("chartdiv");
          });
        </script>
        <!--// pie-chart -->

        <!-- dropdown nav -->
        <script>
          $(document).ready(function () {
            $(".dropdown").hover(
              function () {
                $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                $(this).toggleClass('open');
              },
              function () {
                $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                $(this).toggleClass('open');
              }
              );
          });
        </script>
        <!-- //dropdown nav -->

        <!-- Js for bootstrap working-->
        <script src="js/bootstrap.min.js"></script>
        <!-- //Js for bootstrap working -->
