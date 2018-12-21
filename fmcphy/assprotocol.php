      <?php
      include('includes/db.php');
      $num =  $_SESSION['num'];
      $name = $_SESSION['name'];
      $dob = $_SESSION['dob'];
   $sel = "SELECT * FROM receipt";
    $res = $conn->query($sel);
    while ($row = $res->fetch_array()) {
      $rec_num = $row[1];
      $rec_num = $rec_num + 1;
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
                <form method="POST" action="controller/asspro1.php">
                    <fieldset>
                        <legend>ASSESSMENT PROTOCOL</legend>
                        <div class="form-group">
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">PATIENT NAME</span>
                                        <input type="text" name="pname" readonly value="<?php echo $name; ?>" class="form-control" placeholder="Patient name" aria-describedby="basic-addon1" required=""/>
                                        <input type="text" name="idtwo" readonly value="<?php echo $num; ?>" class="form-control" placeholder="Patient name" aria-describedby="basic-addon1" style="display: none;"/>
                                    </div>
                                </div>
                            </div>


                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">ADDRESS</span>
                                        <input type="text" name="address" value="<?php echo $addr; ?>" class="form-control" placeholder="address" aria-describedby="basic-addon1" required="" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">Physio Number</span>
                                        <input type="text" name="code2" value="<?php echo $_SESSION['code2'] ?>" class="form-control" readonly placeholder="address" aria-describedby="basic-addon1" required="" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">Diagnosis</span>
                                        <input type="text" name="Diagnosis"  class="form-control" placeholder="" aria-describedby="basic-addon1" required="" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">NHIS NO</span>
                                        <input type="text" name="nhs_num" value="<?php echo $nhis_num; ?>" class="form-control" placeholder="nhs num" aria-describedby="basic-addon1" value="" required="" / >
                                        <input type="text" name="rec" value="<?php echo $rec_num; ?>" class="form-control" placeholder="nhs num" aria-describedby="basic-addon1" value="" style="display: none;" required="" / >
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">HOSP NO</span>
                                        <input type="num" name="hosp_no" class="form-control" placeholder="hosp number" aria-describedby="basic-addon1" required=""/ >
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">D.O.B</span>
                                        <input type="date" name="dob" readonly value="<?php echo $dob; ?>" readonly class="form-control" placeholder="date of birth" aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">SEX</span>
                                        <select name="sex" class="form-control" placeholder="Sex" aria-describedby="basic-addon1" required="" >
                                            <option>CHOOSE GENDER</option>
                                            <option value="male" >MALE</option>
                                            <option value="female" >FEMALE</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">PHONE NUMBER</span>
                                        <input type="num" name="clinic" class="form-control" placeholder="phone number" " aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">ADMISSION DATE</span>
                                        <input type="date" name="addmission" class="form-control" placeholder="" aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">CONSENT</span>
                                        <select name="con" class="form-control" placeholder="" aria-describedby="basic-addon1" required="" >
                                            <!-- <option>CHOOSE THE CONDITION</option> -->
                                            <option value="consent to exam obtained">CONSENT TO EXAM OBTAINED</option>
                                            <option value="unable to consent">UNABLE TO CONSENT</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">STAFF SIGNATURE</span>
                                        <input type="text" name="signature" class="form-control" placeholder="" aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">DATE</span>
                                        <input type="text" name="date" class="form-control"  value="<?php echo date('d/m/Y'); ?>" aria-describedby="basic-addon1" required="" readonly / >
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">TIME</span>
                                        <input type="text" name="time" class="form-control" value="<?php echo date("h:i:sa") ?>" aria-describedby="basic-addon1" required="" readonly / >
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">PRINT NAME</span>
                                        <input type="text" name="phy_name" class="form-control" style="text-transform: uppercase;" placeholder="print name" " aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 ">
                                <div class="form-group">
                                    <div class="input-group w3_w3layouts col-lg-12">
                                        <span class="input-group-addon" id="basic-addon1">DESIGNATION</span>
                                        <input type="text" name="designation" class="form-control" placeholder="designation" aria-describedby="basic-addon1" required="" / >
                                    </div>
                                </div>
                            </div>



                        </div>
                        <div class="col-lg-12" ><p></p></div>
                        <div class="col-lg-12">
                            <div class="col-lg-4"></div><div class="col-lg-4"></div>
                            <div class="col-lg-4">
                               <button name="register" class="btn btn-lg btn-success btn-block">Continue!</button>
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