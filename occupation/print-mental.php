<?php
include("include/connect.php");
$id = $_SESSION['num'];
$rec_num = $_SESSION['rec'];

if (isset($_POST['nh'])) {
    $Physio = $_POST['Physio'];
    $sel2 = "SELECT * FROM nxt WHERE num='$Physio' ";
    $res2 = $conn->query($sel2);
    if ($res2->num_rows < 1) {
      $err = "<dt style='color: red;'>No Record Found</dt>";
  }
  else{
      while ($row = $res2->fetch_array()) {

      }
  }
}
if (isset($_POST['submit'])) {
    $_SESSION['num'] = $_POST['Physio'];
    $_SESSION['rec_num'] = $_POST['rec'];
    header("Location: print2.php");
}
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
    <?php include("include/sidebar.php");?>

    <!-- Page Content Holder -->
    <div id="content w3-light-grey">
        <!-- top-bar -->


        <!-- Simple-chart -->
        <div class="outer-w3-agile mt-3">
            <h4 class="tittle-w3-agileits mb-4">Occupational Therapy Initial Assessment FOR MENTAL HEALTH</h4>
            <div style="width: 700px;">
                <div class="row">
                  <div class="col-sm-4"></div><?php echo $conn->error; ?>

              </div>
              <p>&nbsp;</p>

              <div class="col-sm-12 w3-light-grey">
                <form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                    <?php echo $err; ?>
                    <div class="control-group">
                        <label class="control-label">Physio NO</label>
                        <div class="controls">
                          <input type="text" name="Physio" id="required" required="required">
                          <input type="submit" name="nh" value="Search Patient" class="btn btn-success">
                      </div>
                  </form>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>


                  <form class="form-horizontal" method="POST" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                      <div class="control-group">
                        <label class="control-label">Receipt Number</label>
                        <div class="controls">
                            <input type="text" name="Physio" id="required" required="required" value="<?php echo $Physio; ?>" style="display: none;">
                          <?php 
                                    $query = ("SELECT * FROM nxt WHERE num='$Physio' ORDER BY id DESC"); // Run your query
                    echo '<select name="rec" class="form-control">'; // Open your drop down box
                      // Loop through the query results,
                      //outputing the options one by one
                    echo "<option>Select here</option>";
                    $drg = $conn->query($query);
                    while ($row = $drg->fetch_array()) {
                      echo '<option value="'.$row
                      ['rec'].'">'.$row
                      ['rec'].'</option>';
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
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</div>
</div>
</div>
<!--// Simple-chart -->


<!--// Three-grids -->

<!--// Countdown -->
<!-- Copyright -->
<div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
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
