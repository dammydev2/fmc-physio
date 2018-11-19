<?php
include("../includes/db.php");
 if (isset($_POST['register'])) {
    extract($_POST);
        $pname = $_POST['pname'];
        $address = $_POST['address'];
        $nhsnum = $_POST['nhs_num'];
        $hosp = $_POST['hosp_no'];
        $dob = $_POST['dob'];
        $gender = $_POST['sex'];
        $clinic = $_POST['clinic'];
        $admission = $_POST['addmission'];
        $con = $_POST['con'];
        $signature = $_POST['signature'];
        $date = $_POST['date'];
        $time = $_POST['time'];
        $phy_name = $_POST['phy_name'];
        $designation =$_POST['designation'];
        $idtwo = $_POST['idtwo'];
        $rec = $_POST['rec'];

 $upd = "UPDATE receipt SET receipt_no='$rec'";
        $res = $conn->query($upd);

        $ins = "INSERT INTO asp1 (idtwo,Patientname,address,nhs_no,hosp_no,dob,gender,phone,addmision_date,condition_type,signature,en_date,en_time,staffname,designation,rec) VALUES ('$idtwo','$pname','$address','$nhsnum','$hosp','$dob','$gender','$clinic','$admission','$con','$signature','$date','$time','$phy_name','$designation','$rec')";
        $result = $conn->query($ins);


        if ($result === TRUE && $res === TRUE) {
            echo "<script>
            alert('record submited successfully');
            </script>";
            $_SESSION['idtwo'] = $idtwo;
            $_SESSION['nhis'] = $nhsnum;
            $_SESSION['rec'] = $rec;
            header('refresh:0;../assprotocol2.php');
        }else{
           echo $conn->error;
           ?>
           <!--meta http-equiv = "refresh" content="0;url=../assprotocol.php"--> 
           <?php

       }
   }
?>