<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>fmc Physio</title>
    <!-- Core CSS - Include with every page -->
    <link href="assets/plugins/bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/main-style.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="assets/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <style type="text/css">
        .form-control{
            border: 2px solid #000;
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
        <?php include('includes/navbar.php'); ?>
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

            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                    <div class="alert alert-info">
                     <i class="fa fa-folder-open"></i><b>&nbsp;Hello ! </b>Welcome Back <b><?php echo $username;?> </b>
                     make good use of this mobile app. 
                 </div>
             </div>
             <!--end  Welcome -->
         </div>
         <!-- pyhsioteraphy box -->
         <div class="col-lg-12">
            <!-- panel default -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa  fa-pencil">&nbsp</i>   PHYSIOTHERAPY FORM  
                </div>
                <!-- form --> 
                <div class="panel-body">
                    <div class="col-lg-6"> </div>
                    <div class="col-lg-6">
                    <div class="well well-sm">
                        <h4>Small Well</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue.</p>
                    </div>
                </div>
                <!--Different Wells-->
                    <div class="row">
                   <div class="form-group">
                    <form method="POST" >
                <div class="col-lg-6">
                    <div class="well">
                         
                            <label for="exampleFormControlInput1">Name:</label>
                         <input type="text" id="exampleFormControlInput1" name="name" class="form-control" value="<?php echo $name;?>" required /><br />
                          <label for="exampleFormControlInput1">Address:</label>
                        <textarea class="form-control" id="exampleFormControlInput1" name="Address" placeholder="Address" rows="2"  required></textarea><br />
                        <label for="exampleFormControlInput1">Date Of Birth:</label>
                        <input type="date" id="exampleFormControlInput1 calender" name="dob" class="form-control"  ><br />
                        <div class="form-check">
                         <label class="form-check-label" > Gender: &nbsp; &nbsp; </label>
                         <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="male" checked>
                          <label class="form-check-label" > Male </label>
                         <input class="form-check-input" type="radio" name="gender" id="exampleRadios1" value="Female" >
                          <label class="form-check-label" >Female</label>
                        </div>
                         <label for="exampleFormControlInput1">Telephone Number:</label>
                          <input type="num" name="phone" id="exampleFormControlInput1" class="form-control" placeholder="telephone number"><br />
                        <p>&nbsp;</p>
                     
                    
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="well">
                        
                        
                        <p>&nbsp;</p>
                        <input type="submit" name="submit" value="Next" class="btn btn-success ">
                    
                    </div>
                </div>
                
                 </form>
            </div>
        </div>
            <!--End Different Wells-->
                </div>
                <!-- form ended-->
            </div>
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
