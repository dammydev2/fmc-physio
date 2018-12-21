<?php
include("assets/db.php");
ob_start();
session_start();
//error_reporting(E_ALL);
$servername = "localhost";
$username = "root";
$password = "";
$db = "fmcphy_gen";

// Create connection
$reg = new mysqli($servername, $username, $password,$db);

if (isset($_POST['Search'])) {
  $id = $_POST['id'];
  $sel = "SELECT * FROM reg WHERE p_id='$id'";
  $res = $reg->query($sel);
  if ($res->num_rows < 1) {
    echo "<script>
    alert('no record found');
    </script>";
  }
  else{
    while ($row = $res->fetch_array()) {
      $_SESSION['name'] = $row[1];
      $_SESSION['dob'] = $row[3];
    }
    $sel = "SELECT * FROM receipt";
    $res = $conn->query($sel);
    while ($row = $res->fetch_array()) {
      $rec = $row[1];
      $rec_num = $rec + 1;
      $_SESSION['rec'] = $rec;
      $_SESSION['num'] = $id;
      $upd = "UPDATE receipt SET num='$rec_num'";
      $res = $conn->query($upd);
      header("Location: fitness3.php");
    }
  }
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Light Bootstrap Dashboard by Creative Tim</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css?v=1.4.0" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">

    <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


        <?php include "nav.php" ;?>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Icons</a>
                </div>
                <div class="collapse navbar-collapse">
                    
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                           <a href="">
                               <p>Account</p>
                            </a>
                        </li>
                      
                        <li>
                            <a href="#">
                                <p>Log out</p>
                            </a>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title"></h4>
                                <form method="POST" class="col-sm-12">
                                    <label>Patient Physio Number</label>
                                    <input type="text" name="id" class="form-control">
                                    <p>&nbsp;</p>
                                    <input type="submit" name="Search" value="submit" class="btn btn-primary">
                                </form>
                            </div>
                            <div class="content all-icons">
                                <div class="row">
                                  
                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

     <?php include "footer.php" ;?>


    </div>
</div>


</body>

       <!--   Core JS Files   -->
    <script src="assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

    <!--  Charts Plugin -->
    <script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
    <script src="assets/js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    <!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
    <script src="assets/js/demo.js"></script>


</html>
