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
      <link href="assets/css/w3.css" rel="stylesheet" media="all" />
      <link href="assets/css/main-style.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css" href="assets/css/buttons.dataTables.min.css">
      <link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.min.css">

<!-- datatables-->
<script >
  $(document).ready(function() {
    $('#example').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
    } );
} );
</script>
<!-- datatables-->

<body>
    <!--  wrapper -->
    <div id="wrapper">
        <!-- navbar top -->
        <?php include('includes/header.php'); ?>
        <!-- end navbar top -->

        <!-- navbar side -->
       <?php include('includes/navbar.php'); ?>
        <!-- end navbar side -->
        <!--  page-wrapper -->
        
        <div id="page-wrapper" >
            <div class="row">
                <!-- page header-->
                <div class="col-lg-12">
                    <h1 class="page-header"></h1>
                </div>
                 <!-- end page header-->
            </div>
            <div class="row">
                <!-- Welcome -->
                <div class="col-lg-12">
                   
               </div>
               <!--end  Welcome -->
           </div>
           <!-- delete sections -->
             <div class="col-lg-12">
            
            <div class="panel panel-default">
                <div class="panel-heading">
                  <i class="fa fa-upload">&nbsp</i>UPDATE PATIENT DATA &nbsp <i style="color: red;">enter the patient number only if you want to modify existing record</i>
               </div>
               <div class="panel-body">
                <div class="col-lg-12 ">
                   
                   
                    <form method="POST">
                      <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">PATIENT NUM.</span>
                                <input type="num" name="patientnum" class="form-control" placeholder="Patient number" aria-describedby="basic-addon1" required=""/>
                            </div>
                        </div>
                      </div>
                      <div class="col-lg-2 ">
                        
                      </div>
                      
                      <div class="col-lg-2">
                        <button name="view" class="btn btn-lg btn-success btn-block">Continue!</button>
                      </div>
                      
                    </form>
                    </div>
                  </div>

                    <!-- end of form div-->
                    <div class="col-lg-12"><p>&nbsp</p></div>
                    <?php
                    include('includes/db.php');

                    if (isset($_POST['view'])) {
                      $pat = $_POST['patientnum'];

                      $sel = " SELECT * FROM patient WHERE patientnum = '$pat'";
                      $query = $conn->query($sel);
                      if ($query-> num_rows > 0) {
                        while ($fetch = $query-> fetch_assoc()) {
                          $patient = $fetch['patientnum'];
                          $name = $fetch['name'];
                          $age = $fetch['age'];
                          $sex = $fetch['sex'];
                          $address = $fetch['address'];
                          $physician = $fetch['physician'];
                          $ward = $fetch['ward'];
                          $diagnosis = $fetch['ref'];
                        }
                        echo "<script>
                        alert('sucessful');
                        </script>";
                        $_SESSION['patientnum'] = $patient;
                        # code...
                      }else{
                        echo "<script>
                        alert('cannot find record related to the patient number supplied')
                        </script>";
                        header('refresh:0;updatedata.php');
                      }
                      ?>
                    

                 
                    <!-- top comment -->
                    <div class="panel panel-default">
                <div class="panel-heading">
                  <i class="fa fa-upload">&nbsp</i>update your desired field below  
               </div>
                    <!-- end of top comment -->
                   
                      <!-- form --> 
               <div class="panel-body">
                <form method="POST">
                   <div class="form-group">
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">PATIENT-NO.</span>
                                <input type="num" name="patientnum" class="form-control" value="<?php echo $patient ;?>" aria-describedby="basic-addon1" readonly required=""/>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">NAME</span>
                                <input type="text" name="name" class="form-control" value="<?php echo $name ; ?>" aria-describedby="basic-addon1" required="" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">PHYSICIAN</span>
                                <input type="text" name="physician" class="form-control" value="<?php echo $physician ; ?>" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">AGE</span>
                                <input type="num" name="age" class="form-control" value="<?php echo $age ; ?>" 
                                aria-describedby="basic-addon1" required=""/ >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">REFERRED FROM</span>
                                <input type="text" name="diagnosis" class="form-control" value="<?php echo $diagnosis ; ?>" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">SEX</span>
                                <input type="text" name="sex" class="form-control" value="<?php echo $sex ; ?>" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">CLINIC/WARD</span>
                                <input type="text" name="clinic" class="form-control" value="<?php echo $ward ; ?>" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">ADDRESS</span>
                                <input type="text" name="address" class="form-control" value="<?php echo $address ; ?>" aria-describedby="basic-addon1" required="" / >
                            </div>
                        </div>
                    </div>


                </div>
                <div class="col-lg-12" ><p></p></div>
                <div class="col-lg-12">
                    <div class="col-lg-4"></div><div class="col-lg-4"></div>
                    <div class="col-lg-4">
                     <button name="update" class="btn btn-lg btn-success btn-block">Update!</button>
                    </div>
                </div>
             <!-- submit button-->
         </form>

     </div>
     <!-- form ended-->
   </div>
                     <?php 
                      }
                      include('includes/db.php');
                      if (isset($_POST['update'])) {
                       $patient = $_POST['patientnum'];
                       $name = $_POST['name'];
                       $age =$_POST['age'];
                       $address = $_POST['address'];
                       $sex = $_POST['sex'];
                       $physician = $_POST['physician'];
                       $clinic =$_POST['clinic'];
                       $diagnosis = $_POST['diagnosis'];
                       

                       $up = " UPDATE patient SET patientnum = '$patient', name = '$name', age = '$age', address = '$address', sex = '$sex', physician = '$physician', ward = '$clinic', ref = '$diagnosis' WHERE patientnum = '$patient'";
                       $result = $conn->query($up);
                       if ($result === TRUE) {
                        echo "<script>
                        alert('record updated successfully');
                        </script>";
                       }else{
                        echo "<script>
                        alert('unable to update record ');
                        </script>";
                        echo $conn->error;
                       }
                      }
                      ?>
               </div>
           </div>
           
       </div>
       <!-- delete section -->
        </div>
        <!-- end page-wrapper -->

    </div>
  </div>

    <!-- end wrapper -->

    <!-- Core Scripts - Include with every page -->
        <script src="js/buttons.html5.min.js"></script>
    <script src="js/dataTables.buttons.min.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/jszip.min.js"></script>
    <script src="js/pdfmake.min.js"></script>
    <script src="js/vfs_fonts.js"></script>
    <script src="assets/plugins/jquery-1.10.2.js"></script>
    <script src="assets/plugins/bootstrap/bootstrap.min.js"></script>
    <script src="assets/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="assets/plugins/pace/pace.js"></script>
    <script src="assets/scripts/siminta.js"></script>
    <!-- Page-Level Plugin Scripts-->
    <script src="assets/plugins/flot/jquery.flot.js"></script>
    <script src="assets/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="assets/plugins/flot/jquery.flot.resize.js"></script>
    <script src="assets/plugins/flot/jquery.flot.pie.js"></script>
    <script src="assets/scripts/flot-demo.js"></script>

</body>

</html>
