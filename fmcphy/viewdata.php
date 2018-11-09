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
</head>

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
                    <div class="alert alert-info">
                       <i class="fa fa-folder-open"></i><b>&nbsp;Dear </b> <b><?php echo $username;?> </b>
                       note that you can view patient data by entering the patient number in the form below and click view 
                   </div>
               </div>
               <!--end  Welcome -->
           </div>
           <!-- delete sections -->
             <div class="col-lg-12">
            
            <div class="panel panel-default">
                <div class="panel-heading">
                  <i class="fa  fa-eye"></i> VIEW PATIENT DATA &nbsp 
               </div>
              <div class="panel-body">
                <div class="col-lg-12">
                <div class="col-lg-12" ><p>&nbsp</p></div>
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
                        <button name="del" class="btn btn-lg btn-success btn-block">View!</button>
                      </div>
                      
                    </form>
                    </div>
                    <div class="col-lg-12"><p>&nbsp</p></div>
                    <div class="col-lg-12">
                   
                            <?php
                            include('includes/db.php');
                            if(isset($_POST['del']))
                            {
                              ?>
                               <table id="example" class="display w3-table w3-border-blue w3-border" width="100%">
                        <thead>
                        <tr>
                          <th class='w3-border-blue w3-border'><strong>Patient No.</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Name</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Age</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Sex</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Address</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Physician</strong></th>
                          <th class='w3-border-blue w3-border'><strong>Clinic/Ward</strong></th>
                          <th class='w3-border-blue w3-border'><strong>REFERRRD FROM</strong></th>
                        </tr>
                        </thead>
                        <tbody>
                          <?php
                              $patient = $_POST['patientnum'];

                              $sel = "SELECT * FROM patient WHERE patientnum = '$patient'";
                              $query = $conn->query($sel);
                               if ($query-> num_rows > 0) {
                              while ($fetch = $query-> fetch_assoc()) {
                               
                               
                              
                             
                                echo "<tr>
                                        <td class='w3-border-blue w3-border'>".$fetch['patientnum']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['name']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['age']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['sex']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['address']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['physician']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['ward']."</td>
                                        <td class='w3-border-blue w3-border'>".$fetch['ref']."</td>
                                      </tr>";


                                 } }else{
                                    echo "<script>
                                    alert('cannot find such record in database');
                                    </script>" ;
                                    ?>
                                    <meta http-equiv="refresh" content="0;url='viewdata.php'" >
                                    <?php
                                  }
                                }
                                ?>
                              </tbody>
                            </table>
                          
                    </div>
                    
               </div>
           </div>
           
       </div>
       <!-- delete section -->
        </div>
        <!-- end page-wrapper -->

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
