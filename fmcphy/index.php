<?php
error_reporting(0);
if ($year=='2018' && $month < 10) {
    echo "<dt style='color: yellow; text-align:center;'>App need an upgrade</dt>";
}
elseif ($year=='2019' && $month > 1) {
    header("location: upgrade.php");
}
Include('includes/db.php');

if(isset($_POST['submit'])) 
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sel = "SELECT * FROM user WHERE username = '$username' and password = '$password'";
    $result = $conn->query($sel);
    if($result-> num_rows === 1){

    $_SESSION['username'] = $username;
     ?>
     <meta http-equiv = "refresh" content="0;url=dashboard.php"> 
     <?php
    }else{
      echo "user does not exist".$conn->error;
    }

}

 ?>

<!DOCTYPE html>

<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FMC Physio</title>
  <!-- Core CSS - Include with every page -->
  <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
  <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
  <link href="assets/css/style.css" rel="stylesheet" />
  <link href="assets/css/main-style.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/w2.css">
</head>

<body class="body-Login-back">

    <div class="container">

        <div class="row">
            <div class="col-md-4 col-md-offset-4 text-center logo-margin ">
              <img src="assets/img/logo.png" alt=""/>
          </div>
          <div class="col-md-4 col-md-offset-4">
            <h3 class="w3-text-white" style="text-align: center;">Admin Login</h3>
            <div class="login-panel panel panel-default">                  
                <div class="panel-heading">
                    <h3 class="panel-title">Please Sign In</h3>
                </div>
                <div class="panel-body">
                    <form role="form" method="POST" >
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Username" name="username" type="text" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" name="password" type="password" value="">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                </label>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <button name="submit" class="btn btn-lg btn-success btn-block">Login</button>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<meta >

<!-- Core Scripts - Include with every page -->
<script src="assets/plugins/jquery-1.10.2.js"></script>
<script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
<script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>

</body>

</html>
