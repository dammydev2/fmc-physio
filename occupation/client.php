<?php
include("include/connect.php");
$num = $_SESSION['num'];
$rec_num = $_SESSION['rec'];
/**::::::::THE CONTINUE BUTTON::::::**/
if (isset($_POST['submit'])) {
  $c = count($_POST['issue']);
  extract($_POST);
  for ($a=1; $a < $c; $a++) { 
    $ins = "INSERT INTO fmcphy_occp.Functional VALUES(NULL,'$num','$rec','".$issue[$a]."','".$answer[$a]."','".$Comment[$a]."','".$tp[$a]."')";
    $res = $conn->query($ins);
    if ($res === TRUE) {
      $_SESSION['num'] = $num;
      $_SESSION['rec'] = $rec;
      ?>
      <meta http-equiv="refresh" content="0; URL=http:performance.php">
      <?php
    }
  }
}
?>
<div class="se-pre-con"></div>
<div class="wrapper">
  <?php include("include/sidebar.php");?>

  <!-- Page Content Holder -->
  <div id="content w3-light-grey">
    <!-- top-bar -->


    <!-- Simple-chart -->
    <div class="outer-w3-agile mt-3">
      <h4 class="tittle-w3-agileits mb-4">Client Factors</h4>
      <div style="width: 700px;">

        <p>&nbsp;</p>

        <div class="col-sm-12 w3-light-grey">
          <p>&nbsp;</p>
          <div class="row">
            <div class="col-sm-12">
              <form method="POST">
                <input type="text" name="num" style="display: none;" value="<?php echo($num) ?>" class="form-control" id="exampleInputEmail1" />
                <input type="text" name="rec" style="display: none;" value="<?php echo($rec_num) ?>" class="form-control" id="exampleInputEmail1" />
                <table class="table" border="1">
                  <tr>
                    <th colspan="3">Functional Cognition</th>
                  </tr>
                  <tr>
                    <th></th>
                    <th></th>
                    <th>Comment</th>
                  </tr>
                  <tr>
                    <!--::::::::Functional Cognition:::::::::-->
                    <td style="width: 200px;">    (a) Sensory/Perceptual skill (position in space, body awareness, midline, neglect etc)<input type="text" name="issue[]" value="(a) Sensory/Perceptual skill (position in space, body awareness, midline, neglect etc)" style="display: none;"><input type="text" name="tp[]" value="Functional Cognition" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td> (b) Emotional regulation (behavior, coping, etc)r<input type="text" name="issue[]" value="(b) Emotional regulation (behavior, coping, etc)" style="display: none;"><input type="text" name="tp[]" value="Functional Cognition" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th colspan="3">Visual motor/perception</th>
                  </tr>
                  <tr>
                    <td>Short term Memory<input type="text" name="issue[]" value="Short term Memory" style="display: none;"><input type="text" name="tp[]" value="Visual motor/perception" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Long term Memory<input type="text" name="issue[]" value="Long term Memory" style="display: none;"></td><input type="text" name="tp[]" value="Memory" style="display: none;">
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Attention<input type="text" name="issue[]" value="Attention" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Problem Solving<input type="text" name="issue[]" value="Problem Solving" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Safety awareness<input type="text" name="issue[]" value="Safety awareness" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                    <tr>
                    <td>Vision/hearing<input type="text" name="issue[]" value="Vision/hearing" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Speech<input type="text" name="issue[]" value="Speech" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Pain<input type="text" name="issue[]" value="Speech" style="display: none;"><input type="text" name="tp[]" value="Memory" style="display: none;"></td>
                    <td>
                      Verbal Rating: 
                      <select name="answer[]" class="form-control">
                        <?php
                        for ($i=0; $i < 11; $i++) { 
                          echo "<option value=".$i.">$i</option>";
                        }
                        ?>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <th colspan="3">Range of motion</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Range of motion" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="full">full</option>
                        <option value="limited">limited</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Range of motion" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="impared">impared</option>
                        <option value="not impared">not impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <!--:::::STRENGTH:::::-->
                  <tr>
                    <th colspan="3">Strength</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Strength" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="1">1</option>
                        <option value="1+">1+</option>
                        <option value="2">2</option>
                        <option value="2+">2+</option>
                        <option value="3">3</option>
                        <option value="3+">3+</option>
                        <option value="4">4</option>
                        <option value="4+">4+</option>
                        <option value="5">5</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Strength" style="display: none;"></td>
                      <td>
                      <select name="answer[]" class="form-control">
                        <option value="1">1</option>
                        <option value="1+">1+</option>
                        <option value="2">2</option>
                        <option value="2+">2+</option>
                        <option value="3">3</option>
                        <option value="3+">3+</option>
                        <option value="4">4</option>
                        <option value="4+">4+</option>
                        <option value="5">5</option>
                      </select>
                    </td>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <!--:::::::::SENSATION::::::-->
                  <tr>
                    <th colspan="3">Sensation</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Sensation" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="intact">intact</option>
                        <option value="impared">impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Sensation" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="intact">intact</option>
                        <option value="impared">impared</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <!--:::::::::MUSCLE TONE:::::-->
                  <tr>
                    <th colspan="3">Muscle Tone</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Muscle Tone" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="normal">normal</option>
                        <option value="increased">increased</option>
                        <option value="reduced">reduced</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Muscle Tone" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="normal">normal</option>
                        <option value="increased">increased</option>
                        <option value="reduced">reduced</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <!--:::::::::Fine coordination:::::-->
                  <tr>
                    <th colspan="3">Fine coordination</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Fine coordination" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Fine coordination" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <!--:::::::::Selective muscle movement and control:::::-->
                  <tr>
                    <th colspan="3">Selective muscle movement and control</th>
                  </tr>
                  <tr>
                    <td>RUE<input type="text" name="issue[]" value="RUE" style="display: none;"><input type="text" name="tp[]" value="Selective muscle movement and control" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LUE<input type="text" name="issue[]" value="LUE" style="display: none;"><input type="text" name="tp[]" value="Selective muscle movement and control" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>Coordination/bilateral integration<input type="text" name="issue[]" value="Coordination/bilateral integration" style="display: none;"><input type="text" name="tp[]" value="Selective muscle movement and control" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                  <tr>
                    <td>LE Function<input type="text" name="issue[]" value="LE Function" style="display: none;"><input type="text" name="tp[]" value="Selective muscle movement and control" style="display: none;"></td>
                    <td>
                      <select name="answer[]" class="form-control">
                        <option value="Poor">Poor</option>
                        <option value="Fair">Fair</option>
                        <option value="Good">Good</option>
                      </select>
                    </td>
                    <td>
                      <textarea name="Comment[]" class="form-control" placeholder="Enter comment here"></textarea>
                    </td>
                  </tr>
                </table>
                <div style="text-align: center;">
                  <button type="submit" class="btn btn-success" name="submit">Continue</button>
                </div>
              </form>
            </div>

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
