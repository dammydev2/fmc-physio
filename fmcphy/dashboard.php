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
                <form method="POST" action="controller/register.php">
                   <div class="form-group">
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">NHIS-NO.</span>
                                <input type="num" name="patientnum" class="form-control" placeholder="Patient number" aria-describedby="basic-addon1" required=""/>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">NAME</span>
                                <input type="text" name="name" class="form-control" placeholder="Name" aria-describedby="basic-addon1" required="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">REFERENCE NUMBER</span>
                                <input type="text" name="physician" class="form-control" placeholder="REFERENCE NUMBER" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">DATE OF BIRTH</span>
                                <input type="date" name="age" class="form-control" placeholder="Age" aria-describedby="basic-addon1" required=""/ >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">REFERRED FROM</span>
                                <input type="text" name="diagnosis" class="form-control" placeholder="e.g. fmc" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">SEX</span>
                                <input type="text" name="sex" class="form-control" placeholder="Sex" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">CLINIC/WARD</span>
                                <input type="text" name="clinic" class="form-control" placeholder="Clinic/Ward" " aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">ADDRESS</span>
                                <input type="text" name="address" class="form-control" placeholder="Address" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-lg-12" ><p></p></div>
                <div class="col-lg-12">
                    <div class="col-lg-4"></div><div class="col-lg-4"></div>
                    <div class="col-lg-4">
                     <button name="register" class="btn btn-lg btn-success btn-block">Regiter!</button>
                    </div>
                </div>
             <!-- submit button-->
         </form>

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
