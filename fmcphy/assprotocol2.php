

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

            <?php
            include('include/db.php');
            session_start();
            ob_start();
            $nhis = $_SESSION['nhis'];
            $rec = $_SESSION['rec'];

            if (isset($_POST['reg'])) {
             $hcp = $_POST['hcp'];
             $pmh = $_POST['pmh'];
             $dh = $_POST['dh'];
             $sh = $_POST['sh'];
             $habit = $_POST['habit'];
             $accomodation = $_POST['accomodation'];
             $stairs = $_POST['Stiars'];
             $handrails =$_POST['Handrails'];
             $wc = $_POST['wc'];
             $child = $_POST['child'];
             $pregnancy = $_POST['pregnancy'];
             $wives = $_POST['wives'];
             $mobility = $_POST['mobility'];
             $aids = $_POST['aids'];
             $rel_info = $_POST['rel_info'];
             $idtwo = $_SESSION['idtwo'];
             $nhis = $_POST['nhis'];
             extract($_POST);

             $ins = "INSERT INTO asp2 (idtwo,hcp,pmh,dh,sh,habit,accomodation,stairs,handrails,wc,no_of_child,no_of_pregnancy,wives,mobility,aids,rel_info,nhis,rec) VALUES ('$idtwo','$hcp','$pmh','$dh','$sh','$habit','$accomodation','$stairs','$handrails','$wc','$child','$pregnancy','$wives','$mobility','$aids','$rel_info','$nhis','$rec')";
             $result = $conn->query($ins);

             if ($result === TRUE) {
                echo "<script>
                alert('record submited successfully');
                </script>";
                $_SESSION['idtwo'] = $idtwo;
                $_SESSION['nhis'] = $nhis;
                $_SESSION['rec'] = $rec;
                header('refresh:0;assprotocol1.php');
            }else{
               echo "<script>
               alert:('unable to submit');
               </script>";
               echo $conn->error;
                     //header('refresh:0;assprotocol2.php');

           }
       }


       ?>
       <!-- pyhsioteraphy box -->
       <div class="sub" >
        <h3>neurological assesssment</h3><br/>


    </div>
    <div class="col-lg-12 main">
        <!-- panel default -->
        <form method="POST" action="#">
            <fieldset>
                <legend>DIAGNOSIS / REASON FOR REFERRAL</legend>

                <div class="form-group">
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">H<sub>x</sub>PC</span>
                                <input type="text" name="hcp" class="form-control" placeholder="hcp" aria-describedby="basic-addon1" required=""/>
                            </div>
                        </div>
                    </div>


                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">PMH<sub>x</sub></span>
                                <input type="text" name="pmh" class="form-control" placeholder="pmh" aria-describedby="basic-addon1" required="" />
                                <input type="text" name="nhis" class="form-control" value="<?php echo $nhis; ?>" aria-describedby="basic-addon1" required="" style="display: none;" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">DH<sub>x</sub></span>
                                <input type="text" name="dh" class="form-control" placeholder="dh" aria-describedby="basic-addon1" required="" / >
                                <input type="text" name="rec" value="<?php echo($rec);?>" class="form-control" placeholder="dh" aria-describedby="basic-addon1" required="" style="display: none;" / >
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">SH<sub>x</sub></span>
                                <select name="sh" class="form-control" placeholder="Sex" aria-describedby="basic-addon1" required="" >
                                    <option>CHOOSE TYPE OF OCCUPATION</option>
                                    <option value="lives with spouse" >LIVES WITH SPOUSE</option>
                                    <option value="lives with relatives" >LIVES WITH RELATIVES</option>
                                    <option value="lives aone" >LIVES ALONE</option>
                                    <option value="lives with spouse and children" >ives with spouse and children</option>
                                    <option value="lives with children" >ives with children</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">HABIT</span>
                                drinking<input type="checkbox" name="habit" value="drinking">&nbsp;&nbsp;&nbsp;&nbsp;
                                smoking<input type="checkbox" name="habit" value="smoking">&nbsp;&nbsp;&nbsp;&nbsp;
                                snuffing<input type="checkbox" name="habit" value="snuffing">&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6 ">
                        <div class="form-group">
                            <div class="input-group w3_w3layouts col-lg-12">
                                <span class="input-group-addon" id="basic-addon1">ACCOMMODATION</span>
                                <select name="accomodation" class="form-control" placeholder="Sex" aria-describedby="basic-addon1" required="" >
                                    <option>CHOOSE TYPE OF HOUSE</option>
                                    <option value="bungalow" >BUNGALOW</option>
                                    <option value="flat" >FLAT</option>
                                    <option value="UPSTAIRS" >UPSTAIRS</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 mult  ">
                        <div class="form-group ">
                            <div class="form-check ">
                               <label class="form-check-label" for="exampleRadios1">Stairs ?</label>&nbsp;&nbsp;
                               <input class="form-check-input" type="radio" name="Stiars" id="exampleRadios1" value="yes" checked>
                               <label class="form-check-label" for="exampleRadios1">Yes</label>&nbsp;
                               <input class="form-check-input" type="radio" name="Stiars" id="exampleRadios1" value="no" checked>
                               <label class="form-check-label" for="exampleRadios1">No</label>
                               <div class="rail" >
                                   <label class="form-check-label" for="exampleRadios1">Handrails ?</label>&nbsp;&nbsp;
                                   <input class="form-check-input" type="radio" name="Handrails" id="exampleRadios1" value="0" checked>
                                   <label class="form-check-label" for="exampleRadios1">None</label>&nbsp;
                                   <input class="form-check-input" type="radio" name="Handrails" id="exampleRadios1" value="1" checked>
                                   <label class="form-check-label" for="exampleRadios1">1</label>&nbsp;
                                   <input class="form-check-input" type="radio" name="Handrails" id="exampleRadios1" value="2" checked>
                                   <label class="form-check-label" for="exampleRadios1">2</label>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="col-lg-6 ">
                    <div class="form-group">
                        <div class="form-check">
                           <label class="form-check-label" for="exampleRadios1">Wc ?</label>&nbsp;&nbsp;
                           <input class="form-check-input" type="radio" name="wc" id="exampleRadios1" value="Upstiars" checked>
                           <label class="form-check-label" for="exampleRadios1">Upstiars</label>&nbsp;
                           <input class="form-check-input" type="radio" name="wc" id="exampleRadios1" value="Downstiars" checked>
                           <label class="form-check-label" for="exampleRadios1">Downstiars</label>
                       </div>
                   </div>
               </div>
               <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                        <span class="input-group-addon" id="basic-addon1"> NUMBER OF CHILDREN</span>
                        <input type="num" name="child" class="form-control" placeholder="number of children" " aria-describedby="basic-addon1" required="" / >
                    </div>
                </div>
            </div>

            <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                        <span class="input-group-addon" id="basic-addon1">NUMBER OF PREGNANCY</span>
                        <input type="num" name="pregnancy" class="form-control" placeholder="number of pregnancy" aria-describedby="basic-addon1" required="" / >
                    </div>
                </div>
            </div>
            <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                        <span class="input-group-addon" id="basic-addon1">NUMBER OF WIVES</span>
                        <input type="num" name="wives" class="form-control" placeholder="number of wives" aria-describedby="basic-addon1" required="" / >
                    </div>
                </div>
            </div>
            <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                        <span class="input-group-addon" id="basic-addon1">MOBILITY</span>
                        <select name="mobility" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
                            <option>CHOOSE THE CONDITION</option>
                            <option value="normal" >NORMAL</option>
                            <option value="independent" >INDEPENDENT</option>
                            <option value="assistance of 1/2" >ASSISTANCE OF 1/2</option>
                            <option value="immobile" >IMMOBILE</option>
                            <option value="mobile with wheelchair" >mobile with wheelchair</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                        <span class="input-group-addon" id="basic-addon1">AIDS</span>
                        <select name="aids" class="form-control" placeholder="s" aria-describedby="basic-addon1" required="" >
                            <option>CHOOSE AIDS TYPE</option>
                            <option value="none" >NONE</option>
                            <option value="sticks 1/2" >STICKS 1/2</option>
                            <option value="frame" >FRAME</option>
                            <option value="frame with wheel" >FRAME WITH WHEELS</option>
                            <option value="delta fame" >DELTA FRAME</option>
                            <option value="wheelchair" >wheelchair</option>
                            <option value="tripods" >tripods</option>
                            <option value="tetrapods" >tetrapods</option>
                        </select>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 ">
                <div class="form-group">
                    <div class="input-group w3_w3layouts col-lg-12">
                       <label for="exampleFormControlTextarea1">OTHER RELEVANT INFORMATION</label>
                       <textarea name="rel_info" class="form-control" placeholder="" aria-describedby="basic-addon1" rows="2" required="" / > </textarea>
                   </div>
               </div>
           </div>






       </div>
       <div class="col-lg-12" ><p></p></div>
       <div class="col-lg-12">
        <div class="col-lg-4"></div><div class="col-lg-4"></div>
        <div class="col-lg-4">
           <button name="reg" class="btn btn-lg btn-success btn-block">Continue!</button>
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