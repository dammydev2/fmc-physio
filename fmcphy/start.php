      <?php
      include('includes/db.php');
      extract($_POST);
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
        $id = $_POST['num'];
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
              $_SESSION['num'] = $num;
              $_SESSION['code2'] = $row['code2'];
              header("Location: assprotocol.php");
          }
      }
  }

  ?>

  <!DOCTYPE html>
  <html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fmc physio</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <style type="text/css">
    input{
        color: #000;
        font-weight: bold;
    }
</style>
</head>
<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->

        <?php include('includes/header.php'); ?>
        <!-- end navbar-header -->

        <!-- navbar side -->
        <?php include('includes/nav2.php'); ?>
        <!-- end navbar side -->

        <!--  page-wrapper -->
        <div id="page-wrapper">

            <div class="row">
                <!-- Page Header -->
                <div class="col-lg-12">
                    <h1 class="page-header"></h1>
                </div>
                <!--End Page Header -->
            </div>

            
            <!-- pyhsioteraphy box -->
            <div class="sub" >
                <h3>neurological assesssment</h3><br/>


            </div>
            <div class="col-lg-12 main">
                <!-- panel default -->
                <form method="POST">
                    <fieldset>
                        <legend>ASSESSMENT PROTOCOL</legend>
                        <div class="form-group">
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">PHYSIO NUMBER</span>
                                        <input type="text" name="num" class="form-control" placeholder="" aria-describedby="basic-addon1" required=""/>
                                    </div>
                                </div>
                            </div>



                        </div>
                        <div class="col-lg-12" ><p></p></div>
                        <div class="col-lg-12">
                            <div class="col-lg-4"></div><div class="col-lg-4"></div>
                            <div class="col-lg-4">
                               <button name="Search" class="btn btn-lg btn-success btn-block">Continue!</button>
                           </div>
                       </div>
                   </fieldset>
               </form>
               <!-- panel default ended -->
           </div>
           <!-- pyhsioteraphy box ended -->
       </div>

       <!-- end wrapper -->

       <!-- Core Scripts - Include with every page -->
       <script src="assets/plugins/jquery-1.10.2.js"></script>
       <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
       <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
       <script src="assets/plugins/pace/pace.js"></script>
       <script src="assets/scripts/siminta.js"></script>
       <!-- Page-Level Plugin Scripts-->
       <script src="assets/plugins/morris/raphael-2.1.0.min.js"></script>
       <script src="assets/plugins/morris/morris.js"></script>
       <script src="assets/scripts/dashboard-demo.js"></script>

   </body>

   </html>
   <style >
   .sub{

    border: 2px solid;
    width: 95%;
    height: ;
    padding: 0% 2% 0% 2%;
}
.sub h3{
    text-transform: uppercase;
    text-align: center;
    font-size: 30px;
}
.sub h4{
    text-transform: uppercase;
    text-align: center;
    font-size: 24px;
}
.main{
    border: 2px solid;
    width: 95%;
    margin: 0px auto;
    height:;
    padding: 2%;
}

</style>