<?php
include("include/connect.php");
$id = $_SESSION['num'];
$rec_num = $_SESSION['rec'];

/**::::::::THE CONTINUE BUTTON::::::**/
if (isset($_POST['submit'])) {
    extract($_POST);
    $c = count($_POST['question']);
    for ($a=0; $a < $c; $a++) {
        $ins = "INSERT INTO fmcphy_occp.nxt VALUES(NULL,'$num','$rec','".$question[$a]."','$Occupation')";
        $res = $conn->query($ins);
        if ($res === TRUE) {
            $_SESSION['num'] = $num;
            $_SESSION['rec'] = $rec;
            ?>
            <meta http-equiv="refresh" content="0; URL=http:pattern-tb.php">
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
            <h4 class="tittle-w3-agileits mb-4" style="width: 1000px;">Occupational Therapy Initial Assessment FOR MENTAL HEALTH</h4>
            <div style="width: 950px;">
                <div class="row">
                  <div class="col-sm-4"></div>

              </div>
              <p>&nbsp;</p>

              <div class="col-sm-12 w3-light-grey">
                <form method="POST">
                  <p>&nbsp;</p>
                  <div class="ro">
                      <form method="POST col-sm-12">
                        <div class="form-group">
                            <input type="text" name="num" style="display: none;" value="<?php echo($id) ?>" class="form-control" id="exampleInputEmail1" />
                            <input type="text" name="rec" style="display: none;" value="<?php echo($rec_num) ?>" class="form-control" id="exampleInputEmail1" />
                        </div>
                        <table class="table" border="1">
                            <tr>
                                <th class="text-center" colspan="3">PATTERN OF OCCUPATION</th>
                            </tr>
                            <tr>
                                <td>
                                    <b>Routine</b><br><input type="text" name="question[]" value="Routine" style="display: none;"> Balance Organization of habits Structure Productivity
                                </td>
                                <td>
                                    <select class="form-control" name="answer[]" style="width: 200px;">
                                        <option value="Not seen">Not seen</option>
                                        <option value="Facilitates occupational participation">Facilitates occupational participation</option>
                                        <option value="Allows occupational participation">Allows occupational participation</option>
                                        <option value="Inhibits occupational participation">Inhibits occupational participation</option>
                                        <option value="Restricts occupational participation">Restricts occupational participation</option>
                                    </select>
                                </td>
                                <td>
                                    Accurately assesses own capacity, recognizes strengths, aware of limitations Reasonable tendency to over/under estimate own abilities, recognizes some limitations Difﬁculty understanding strengths and limitations without support Does not reﬂect on skills, fails to realistically estimate own abilities
                                    <input type="text" name="comment[]" class="form-control" placeholder="comment">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Expectation of Success</b><br><input type="text" name="question[]" value="Expectation of Success" style="display: none;"> Optimism & hope Self-efﬁcacy, sense of control & self-identity
                                </td>
                                <td>
                                    <select class="form-control" name="answer[]">
                                        <option value="Not seen">Not seen</option>
                                        <option value="Facilitates occupational participation">Facilitates occupational participation</option>
                                        <option value="Allows occupational participation">Allows occupational participation</option>
                                        <option value="Inhibits occupational participation">Inhibits occupational participation</option>
                                        <option value="Restricts occupational participation">Restricts occupational participation</option>
                                    </select>
                                </td>
                                <td>
                                    Anticipates success and seeks challenges, optimistic about overcoming obstacles Has some hope for success, adequate self-belief but has some doubts, may need encouraging Requires support to sustain optimism about overcoming obstacles, poor self-efﬁcacy Pessimistic, feels hopeless, gives up in the face of obstacles, lacks sense of control
                                    <input type="text" name="comment[]" class="form-control" placeholder="comment">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Interest</b><br><input type="text" name="question[]" value="Interest" style="display: none;"> Expressed enjoyment Satisfaction Curiosity Participation
                                </td>
                                <td>
                                    <select class="form-control" name="answer[]">
                                        <option value="Not seen">Not seen</option>
                                        <option value="Facilitates occupational participation">Facilitates occupational participation</option>
                                        <option value="Allows occupational participation">Allows occupational participation</option>
                                        <option value="Inhibits occupational participation">Inhibits occupational participation</option>
                                        <option value="Restricts occupational participation">Restricts occupational participation</option>
                                    </select>
                                </td>
                                <td>
                                    Keen, curious, lively, tries new occupations, expresses pleasure, perseveres, appears content Has adequate interests that guide choices, has some opportunities to pursue interests Difﬁculty identifying interests, short-lived, ambivalent about choice of occupations Easily bored, unable to identify interests, apathetic, lacks curiosity even with support
                                    <input type="text" name="comment[]" class="form-control" placeholder="comment">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Choices</b><br><input type="text" name="question[]" value="Choices" style="display: none;"> Appropriate commitment Readiness for change Sense of value and meaning Preferences and goals
                                </td>
                                <td>
                                    <select class="form-control" name="answer[]">
                                        <option value="Not seen">Not seen</option>
                                        <option value="Facilitates occupational participation">Facilitates occupational participation</option>
                                        <option value="Allows occupational participation">Allows occupational participation</option>
                                        <option value="Inhibits occupational participation">Inhibits occupational participation</option>
                                        <option value="Restricts occupational participation">Restricts occupational participation</option>
                                    </select>
                                </td>
                                <td>
                                    Clear preferences & sense of what is important, motivated to work towards occupational goals Mostly able to make choices, may need encouragement to set and work towards goals Difﬁculties identifying what is important or setting and working towards goals, inconsistent Cannot set goals, impulsive, chaotic, goals are unattainable or based on anti-social values
                                    <input type="text" name="comment[]" class="form-control" placeholder="comment">
                                </td>
                            </tr>
                        </table>
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
