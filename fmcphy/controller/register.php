<?php 
include('../includes/db.php');
error_reporting(E_ALL);
if(isset($_POST['register']))
{
    $patient = $_POST['patientnum'];
    $name = $_POST['name'];
    $age =$_POST['age'];
    $address = $_POST['address'];
    $sex = $_POST['sex'];
    $physician = $_POST['physician'];
    $clinic =$_POST['clinic'];
    $ref = $_POST['diagnosis'];

    $ins = "INSERT INTO patient (patientnum, name, DOB, address, sex, physician, ward, ref) VALUES ('$patient','$name','$age','$address','$sex','$physician','$clinic','$ref')";

    $result = $conn->query($ins);
    if($result === TRUE)
    {
        echo "<script>
        alert('registration successful');
        </script>";
        ?>
        <meta http-equiv="refresh" content="0;url=..\dashboard.php">
        <?php
    }else{
        echo "error".$conn->error;
    }
}

?>