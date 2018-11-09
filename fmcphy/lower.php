<?php
include("includes/db.php");
$num = $_SESSION['patientnum'];
$type = $_SESSION['ttype'];
#::::::::::::::GETTING THE PATIENT NAME:::::::::::::
$sel = "SELECT * FROM patient WHERE patientnum='$num'";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
  $name = $row[2];
}
#::::::::::::::GETTING THE PATIENT NAME:::::::::::::
$sel = "SELECT * FROM receipt";
$sel = "SELECT * FROM receipt";
$res = $conn->query($sel);
while ($row = $res->fetch_array()) {
  $rec_num = $row[1];
}
?>

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


          <div class="container-fluid">
            <div class="widget-title"> <span class="icon">
              <input type="checkbox" id="title-checkbox" name="title-checkbox" />
            </span>
            <h5>Select Drugs</h5>
            <div class="widget-content nopadding">
              <div class="control-group">
                <label class="control-label"></label>
                <div class="controls">
                  <input type="text" name="" class="col-sm-5 form-control" readonly value="<?php echo $name;?>">
                  <p>&nbsp;</p>
                  <select class='drugs form-control'>
                    <option>SELECT ISSUE</option>
                    <?php
                    $sql = "SELECT * FROM $type ORDER BY tp ASC";
                    $result = $conn->query($sql);
            #$selectLoco = "<select class='drugs'>";
                    while ($row = $result->fetch_array() ) {
                      $selectLoco .= "<option data-price='$row[6]' data-id='$row[0]' data-dosage='$row[3]' data-num='". $num."' data-type='". $type."' data-rec='". $rec_num."'> $row[1] </option>";
                    }
                    $selectLoco .= "</select>";
                    echo "$selectLoco";
            #echo $rec_num;
                    ?>
                  </div>
                </div>
              </div>
            </div>
            <hr>
            <div class="row-fluid">
              <div class="span12">
                <div class="widget-box">
                  <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>Main Description</h5>
                  </div>
                  <div class="widget-content nopadding">
                    <form method="post" action="includes/query.php">
                      <table class="table table-bordered table-striped list">
                        <thead>
                          <tr>
                            <th>Issue</th>
                            <th>    </th>
                            <th>Select Limb</th>
                            <th>Date</th>
                    <!--th>Price</th>
                      <th>Amount</th-->
                      </tr>
                    </thead>
                  </table>
                  <button type="submit" class="btn btn-success">Next</button>
                </form>
              </div>
            </div>
            <div class="widget-box">

              <div class="widget-content nopadding">

              </div>
              <div class="widget-box">
                <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
                  <!--h5>Data table</h5-->
                </div>
                <div class="widget-content nopadding">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

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


<!--SCRIPT TO CONTROL THE TABLE-->
<script type="text/javascript" src="js/jquery.js"></script>

<script type="text/javascript" src="js/jquery.min.js"></script>


<script type="text/javascript">
  $(".drugs").on("change",function()
  {
    price   = $(".drugs :selected").attr("data-price");
    dosage  = $(".drugs :selected").attr("data-dosage");
    num  = $(".drugs :selected").attr("data-num");
    type  = $(".drugs :selected").attr("data-type");
    rec  = $(".drugs :selected").attr("data-rec");
    name  = $(".drugs :selected").text();
    percent = new Date().toJSON().slice(0,10).replace(/-/g,'/');
    amount = price - percent;


    id    = $(".drugs :selected").attr("data-id");

    pData = {price: price, name: name}

    ht = "<tr class='even gradeA'><td><input type='hidden' name='issue[]' value='"+ name +"' />"+ name +"</td><td><input type='text' name='plain[]'  /></td><td><select class='form-control' name='limb[]'><option value='Right'>Right</option><option value='Left'>Left</option></select></td>                       <td><input type='hidden' name='date[]' value='"+ percent +"' />" + percent + "</td><td><input type='hidden' name='num[]' value='"+ num +"' /></td><td><input type='hidden' name='type[]' value='"+ type +"' /></td><td><input type='hidden' name='rec[]' value='"+ rec +"' /></td></tr>";

    $(".list").append(ht);
    $(".drugs :selected").remove();
  })
</script>
<!--SCRIPT TO CONTROL THE TABLE-->

</body>

</html>
