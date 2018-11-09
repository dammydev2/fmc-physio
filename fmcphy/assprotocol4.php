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
            
     <!-- pyhsioteraphy box -->
     <div class="sub" >
        <h3>OBJECT ASSESSMENT</h3><br/>


    </div>
    <div class="col-lg-12 main">
        <!-- panel default -->
        <form method="POST" action="controller/last.php">
            <fieldset>
                <legend>SUMMARY OF PROBLEM COMPLICATION</legend>

                <div class="form-group">






                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="form-check">
                             <label class="form-check-label" for="exampleRadios1">At risk of respiratory complications</label>&nbsp;&nbsp;
                             <input class="form-check-input" type="radio" name="respiratory" id="exampleRadios1" value="Yes" checked>
                             <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                             <input class="form-check-input" type="radio" name="respiratory" id="exampleRadios1" value="no" checked>
                             <label class="form-check-label" for="exampleRadios1">No</label>
                         </div>
                     </div>
                 </div>
                 <div class="col-lg-6 ">
                    <div class="form-group">
                        <div class="form-check">
                         <label class="form-check-label" for="exampleRadios1">At risk of abdominal muscle tone and contractures</label>&nbsp;&nbsp;
                         <input class="form-check-input" type="radio" name="muscle_tone" id="exampleRadios1" value="yes" checked>
                         <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                         <input class="form-check-input" type="radio" name="muscle_tone" id="exampleRadios1" value="no" checked>
                         <label class="form-check-label" for="exampleRadios1">No</label>
                     </div>
                 </div>
             </div>
             <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="form-check">
                     <label class="form-check-label" for="exampleRadios1">At risk of shoulder pain</label>&nbsp;&nbsp;
                     <input class="form-check-input" type="radio" name="shoulder" id="exampleRadios1" value="yes" checked>
                     <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                     <input class="form-check-input" type="radio" name="shoulder" id="exampleRadios1" value="no" checked>
                     <label class="form-check-label" for="exampleRadios1">No</label>
                 </div>
             </div>
         </div>
         <div class="col-lg-6 ">
            <div class="form-group">
                <div class="form-check">
                 <label class="form-check-label" for="exampleRadios1"> sitting balance</label>&nbsp;&nbsp;
                 <input class="form-check-input" type="radio" name="sitting" id="exampleRadios1" value="Upstiars" checked>
                 <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                 <input class="form-check-input" type="radio" name="sitting" id="exampleRadios1" value="Downstiars" checked>
                 <label class="form-check-label" for="exampleRadios1">No</label>
             </div>
         </div>
     </div>
     <div class="col-lg-6 ">
        <div class="form-group">
            <div class="form-check">
             <label class="form-check-label" for="exampleRadios1">ability to transfer independenty?</label>&nbsp;&nbsp;
             <input class="form-check-input" type="radio" name="depend" id="exampleRadios1" value="yes" checked>
             <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
             <input class="form-check-input" type="radio" name="depend" id="exampleRadios1" value="no" checked>
             <label class="form-check-label" for="exampleRadios1">No</label>
         </div>
     </div>
 </div>

 <div class="col-lg-6 ">
    <div class="form-group">
        <div class="input-group w3_w3layouts col-lg-12">
            <span class="input-group-addon" id="basic-addon1">MOBILITY INDEX SCORE</span>
            <select name="mobility" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
                <option>CHOOSE A SCORE</option>
                <option value="normal" >0 = Unable to perform</option>
                <option value="independent" >1 = Assistance of two peoples</option>
                <option value="assistance of 1/2" >2 = Assistance of one person </option>
                <option value="immobile" >3 = Requires supervision or verbal instruction</option>
                <option>4 = Requires an aid or appliance </option>
                <option>5 = Independent </option>
            </select>
        </div>
    </div>
</div>
<div class="col-lg-10 ">
    <div class="form-group">
        <div class="input-group w3_w3layouts col-lg-12">
            <input type="text" name="nhis" value="<?php echo $nhis; ?>" class="form-control" aria-describedby="basic-addon1" required=""  style="display: none;" readonly/ >
            <label for="exampleFormControlTextarea1">ACTION TAKEN</label>
            <textarea name="actn_taken" class="form-control" placeholder="" aria-describedby="basic-addon1" rows="2" required="" / > </textarea>
        </div>
    </div>
</div>
<table class="table" border="1">
    <tr>
        <th>Item</th>
        <th>Score</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="turning over" style="display: none;">
            <b>Turning Over</b><br>
            Please turn over from your back to your side
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="lying or sitting" style="display: none;">
            <b>lying or sitting</b><br>
            Please sit uo on the side of the bed<br>
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="sitting balance" style="display: none;">
            <b>Sitting balance</b><br>
            Please sit on the edge of the bed<br>
            (the assesor time for the patient for 10 seconds)
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="sitting to standing" style="display: none;">
            <b>Sitting to standing</b><br>
            Please stand up from the chair<br>
            (the patient takes less than 15 seconds)
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="standing" style="display: none;">
            <b>standing</b><br>
            Please remain standing<br>
            (the assessor times the patient for 10 seconds)
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="transfer" style="display: none;">
            <b>transfer</b><br>
            Please go from your bed to the chair and back again<br>
            (the assessor places the chair on the patient's unaffected side)
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="Walking indoor" style="display: none;">
            <b>Walking indoor</b><br>
            Please walk for 10 metres in your usual way
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" name="question[]" value="stairs" style="display: none;">
            <b>Stairs</b><br>
            Please climb up and down the flight of stairs in your usual way
        </td>
        <td>
            <select name="answer[]" class="form-control">
                <option value="0">Unable to perform</option>
                <option value="1">assistance of two people</option>
                <option value="2">assistance of one people</option>
                <option value="3">requires supervision or verbal instruction</option>
                <option value="4">requires an aid or an appliance</option>
                <option value="5">independent</option>
            </select>
        </td>
    </tr>
</table>


</div>
<div class="col-lg-12" ><p></p></div>
<div class="col-lg-12">
    <div class="col-lg-4"></div><div class="col-lg-4"></div>
    <div class="col-lg-4">
     <button name="submit" class="btn btn-lg btn-success btn-block">Continue!</button>
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
.rail{
    float: right;
    margin-right: 10%;
}
.mult{
    margin-left: 6%s;
}

</style>