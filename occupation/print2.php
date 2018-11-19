<?php
include("include/connect.php");
$id = $_SESSION['num'];
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


        <!-- Simple-chart -->
        <div class="outer-w3-agile mt-3">
            <h4 class="tittle-w3-agileits mb-4"></h4>
            <div style="width: 900px;">
                <div class="row">
                    <button onclick="window.print()" id="printPageButton">Print</button>
                  <div style="border: 1px solid #000; width: 900px; margin-left: 10px;">
                      <h3 class="text-center">Federal Medical Centre, Abeokuta</h3>
                      <h3 class="text-center">Occupational Therapy Initial Assessment FOR MENTAL HEALTH</h3>
                      <table class="table"  border="1">
                          <?php
                          $sel = "SELECT * FROM mental WHERE num='$id' AND rec='$rec_num'";
                          $res = $conn->query($sel);
                          while ($row = $res->fetch_array()) {
                              echo "
                              <tr>
                              <td>Client: <b>$row[1]</b></td>
                              <td>Name of Assessor: <b>$row[9]</b></td>
                              </tr>
                              <tr>
                              <td>Age: <b>$row[3]</b> <span>Date of birth: <b>$row[2]</b></span></td>
                              <td>Designation: <b>$row[10]</b></td>
                              </tr>
                              <tr>
                              <td>Gender: <b>$row[5]</b></td>
                              <td>Signature: <b>..................................</b></td>
                              </tr>
                              <tr>
                              <td>Identiﬁcation code: <b>$row[6]</b></td>
                              <td>Date of ﬁrst contact: <b>$row[11]</b></td>
                              </tr>
                              <tr>
                              <td>Ethnicity: <b>$row[7]</b></td>
                              <td>Date of assessment: <b>$row[12]</b></td>
                              </tr>
                              <tr>
                              <td>Health condition: <b>$row[8]</b></td>
                              <td>Treatment settings: <b>$row[13]</b></td>
                              </tr>

                              ";
                          }
                          $sel = "SELECT * FROM nxt WHERE num='$id' AND rec='$rec_num'";
                          $res = $conn->query($sel);
                          while ($row = $res->fetch_array()) {
                              echo "
                              <tr>
                              <td>Assessment environment: <b>$row[3]</b></td>
                              <td>Occupation being assessed: <b>$row[4]</b></td>
                              </tr>";
                          }
                          ?>
                      </table>
                      <table class="table" border="1">
                        <tr>
                            <td rowspan='4'><b>motivation</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='motivation'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                          <tr>
                            <td rowspan='4'><b>Pattern of occupation</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='Pattern'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                          <tr>
                            <td rowspan='4'><b>Communication and Inter - action Skills</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='Comm'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                          <tr>
                            <td rowspan='4'><b>Process skills</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='Process'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                          <tr>
                            <td rowspan='4'><b>Motor skills</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='Motor'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                          <tr>
                            <td rowspan='4'><b>Entertainment</b></td>
                            <?php
                            $sel = "SELECT * FROM motivation WHERE num='$id' AND rec='$rec_num' AND tp='Entertainment'";
                            $res = $conn->query($sel);
                            while ($row = $res->fetch_array()) {
                              echo "
                              <td>$row[3]</td>
                              <td>$row[4]</td>
                              </tr>
                              ";
                          }
                          ?>
                      </table>
                  </div>

              </div>
              

              

          </div>
      </div>
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
