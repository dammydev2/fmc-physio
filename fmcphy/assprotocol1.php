<?php
include('includes/db.php');
$nhis = $_SESSION['nhis'];
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
<body bgcolor="">
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


      <!-- pyhsioteraphy box -->
      <div class="sub" >
        <h3>OBJECT ASSESSMENT</h3><br/>


      </div>
      <div class="col-lg-12 main">
        <!-- panel default -->
        <form method="POST" action="#">
          <fieldset>
            <legend>ACUTE NEUROLOGICAL ASSESSMENT</legend>

            <div class="form-group">
             <div class="col-lg-6 ">
              <div class="form-group">
                <div class="input-group w3_w3layouts col-lg-12">
                  <span class="input-group-addon" id="basic-addon1">LEVEL OF ALERTNESS</span>
                  <select name="alert" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
                    <option>CHOOSE LEVEL</option>
                    <option value="alert" >Alert </option>
                    <option value="voice" >Voice </option>
                    <option value="pain" >Pain </option>
                    <option value="unresponsive" >Unresponsive</option>
                  </select>
                </div>
              </div>
            </div>
            <div class="col-lg-6 ">
              <div class="form-group">
                <div class="input-group w3_w3layouts col-lg-12">
                  <span class="input-group-addon" id="basic-addon1">RESP FUNCTION</span>
                  <input type="text" name="resp" class="form-control" placeholder="respiratory" aria-describedby="basic-addon1" required="" >  
                  <input type="text" name="nhis" value="<?php echo $nhis; ?>" class="form-control" aria-describedby="basic-addon1" required="" style="display: none;"  readonly/ >                   
                </div>
              </div>
            </div>
            <div class="col-lg-6 ">
              <div class="form-group">
                <div class="form-check">
                 <label class="form-check-label" for="exampleRadios1">Cognition</label>&nbsp;&nbsp;
                 <input class="form-check-input" type="radio" name="cognition" id="exampleRadios1" value="Yes" checked>
                 <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                 <input class="form-check-input" type="radio" name="cognition" id="exampleRadios1" value="no" checked>
                 <label class="form-check-label" for="exampleRadios1">No</label>
               </div>
             </div>
           </div>
           <div class="col-lg-6 ">
            <div class="form-group">
              <div class="form-check">
               <label class="form-check-label" for="exampleRadios1">Neglect</label>&nbsp;&nbsp;
               <input class="form-check-input" type="radio" name="neglect" id="exampleRadios1" value="absent" checked>
               <label class="form-check-label" for="exampleRadios1">Absent</label>&nbsp;
               <input class="form-check-input" type="radio" name="neglect" id="exampleRadios1" value="present" checked>
               <label class="form-check-label" for="exampleRadios1">Present</label>
             </div>
           </div>
         </div>
         <div class="col-lg-6 ">
          <div class="form-group">
            <div class="form-check">
             <label class="form-check-label" for="exampleRadios1">Communication</label>&nbsp;&nbsp;
             <input class="form-check-input" type="radio" name="comm" id="exampleRadios1" value="yes" checked>
             <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
             <input class="form-check-input" type="radio" name="comm" id="exampleRadios1" value="no" checked>
             <label class="form-check-label" for="exampleRadios1">No</label>
           </div>
         </div>
       </div>
       <div class="col-lg-6 ">
        <div class="form-group">
          <div class="form-check">
           <label class="form-check-label" for="exampleRadios1"> Swallow</label>&nbsp;&nbsp;
           <input class="form-check-input" type="radio" name="swallow" id="exampleRadios1" value="yes" checked>
           <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
           <input class="form-check-input" type="radio" name="swallow" id="exampleRadios1" value="no" checked>
           <label class="form-check-label" for="exampleRadios1">No</label>
         </div>
       </div>
     </div>

     <div class="col-lg-6 ">
      <div class="form-group">
        <div class="input-group w3_w3layouts col-lg-12">
          <span class="input-group-addon" id="basic-addon1">PAIN RATING</span>
          <select name="pain" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
            <option>CHOOSE LEVEL</option>
            <option value="0" >0 </option>
            <option value="1" >1 </option>
            <option value="2" >2 </option>
            <option value="3" >3</option>
            <option value="4" >4</option>
            <option value="5" >5</option>
            <option value="6" >6</option>
            <option value="7" >7</option>
            <option value="8" >8</option>
            <option value="9" >9</option>
            <option value="10" >10</option>
          </select>
        </div>
      </div>
    </div>


    <div class="col-lg-6 ">
      <div class="form-group">
        <div class="input-group w3_w3layouts col-lg-12">
         <label for="exampleFormControlTextarea1">Bed Mobility manual handling and positioning isues</label>
         <textarea name="bedmobility" class="form-control" placeholder="" aria-describedby="basic-addon1" rows="2" required="" / > </textarea>
       </div>
     </div>
   </div>
   <table class="table">
    <tr>
      <th>Safe Levels</th>
      <th>Patient value</th>
    </tr>
    <tr>
      <td><input type="text" name="question[]" value="BP" class="form-control" readonly></td>
      <td><input type="number" name="answer[]" placeholder="Enter patient value" min="99" max="180" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="question[]" value="HR" class="form-control" readonly></td>
      <td><input type="number" name="answer[]" placeholder="Enter patient value" min="39" max="100" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="question[]" value="Oxygen Saturation" class="form-control" readonly></td>
      <td><input type="number" name="answer[]" placeholder="Enter patient value" min="87" max="100" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="question[]" value="Level of connsiousness" class="form-control" readonly></td>
      <td><input type="number" name="answer[]" placeholder="Enter patient value" min="8" class="form-control"></td>
    </tr>
  </table>
  <table class="table" border="1" style="background: #000;">
    <tr style="color: #fff;">
      <th>Limb type</th>
      <th></th>
      <th>Value</th>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Range of Motion" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Muscle tone" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Power of Muscle" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="sensation" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>

    <tr>
      <td><input type="text" name="tp[]" value="RIGHT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Range of Motion" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Muscle tone" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Power of Muscle" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT UPPER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="sensation" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>

    <tr>
      <td><input type="text" name="tp[]" value="LEFT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Range of Motion" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Muscle tone" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Power of Muscle" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="LEFT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="sensation" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>

    <tr>
      <td><input type="text" name="tp[]" value="RIGHT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Range of Motion" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Muscle tone" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="Power of Muscle" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
    <tr>
      <td><input type="text" name="tp[]" value="RIGHT LOWER LIMB" class="form-control" readonly></td>
      <td><input type="text" name="issue[]" value="sensation" class="form-control" readonly></td>
      <td><input type="text" name="ans[]" placeholder="Enter value here" class="form-control"></td>
    </tr>
  </table>





</div>
<div class="col-lg-12" ><p></p></div>
<div class="col-lg-12">
  <div class="col-lg-4"></div><div class="col-lg-4"></div>
  <div class="col-lg-4">
   <button name="continue" class="btn btn-lg btn-success btn-block">Continue!</button>
 </div>
</div>
</fieldset>
</form>
<!-- panel default ended -->
</div>
<!-- pyhsioteraphy box ended -->
</div>
<?php
include('include/db.php');
session_start();
ob_start();

$sel = "SELECT * FROM asp2 ORDER BY id asc ";
$query = $conn->query($sel);
while ($res = $query-> fetch_assoc()) {
  $idtwo = $res[idtwo];
  $_SESSION['idtwo']=$idtwo;
}

if (isset($_POST['continue'])) {
  $alert = $_POST['alert'];
  $resp = $_POST['resp'];
  $cognition = $_POST['cognition'];
  $neglect = $_POST['neglect'];
  $comm = $_POST['comm'];
  $swallow = $_POST['swallow'];
  $pain = $_POST['pain'];
  $mobility = $_POST['bedmobility'];
  $nhis = $_POST['nhis'];

  $idtwo = $_SESSION['idtwo'];
  $_SESSION['nhis'] = $nhis;

  $ins = "INSERT INTO asp (idtwo,alert,respiratory,cognition,neglect,communication, swallow,pain,bedmobility,nhis) VALUES ('$idtwo','$alert','$resp','$cognition','$neglect','$comm','$swallow','$pain','$mobility','$nhis')";
  $result = $conn->query($ins);

  extract($_POST);
  $c = 4;
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy2.aspques VALUES(NULL,'".$question[$a]."','".$answer[$a]."','$nhis','$idtwo')";
    $res = $conn->query($ins);
  }

  extract($_POST);
  $c = 16;
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy2.aspques2 VALUES(NULL,'".$tp[$a]."','".$issue[$a]."','".$ans[$a]."','$nhis','$idtwo')";
    $res = $conn->query($ins);
  }

  if ($result === TRUE) {
    echo "<script>
    alert('record submited successfully');
    </script>";
    $_SESSION['idtwo'] = $idtwo;
    header('refresh:0;assprotocol4.php');
  }else{
   echo "<script>
   alert:('unable to submit');
   </script>";
   echo  $conn->error;

                    // header('refresh:0;assprotocol2.php');

 } echo  $conn->error;
}


?>
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
.rail{
  float: right;
  margin-right: 10%;
}
.mult{
  margin-left: 6%s;
}

</style>