<?php
include('../includes/db.php');
session_start();
ob_start();
error_reporting(E_ALL);
/**
$sel = "SELECT * FROM asp2 ORDER BY id asc ";
$query = $conn->query($sel);
while ($res = $query-> fetch_assoc()) {
  $idtwo = $res['idtwo'];
  $_SESSION['idtwo']=$idtwo;
}
**/

if (isset($_POST['continue'])) {
  extract($_POST);
  
$alert = $alert1. " " . $alert2. ' ' .$alert3. " " .$alert4. " " .$alert5;
$cognition = $cognition. " ". $cognition2;

  $ins = "INSERT INTO fmcphy_neu.asp VALUES(NULL,'$idtwo','$alert','$resp','$cognition','$neglect','$comm','$swallow','$pain','$bedmobility','$nhis','$rec')";
  $result = $conn->query($ins);



  extract($_POST);
  $c = 4;
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_neu.aspques VALUES(NULL,'".$question[$a]."','".$answer[$a]."','$nhis','$idtwo','$rec')";
    $res = $conn->query($ins);
  }

  extract($_POST);
  $c = 16;
  for($a = 0; $a < $c; $a++)
  { 
    $ins = "INSERT INTO fmcphy_neu.aspques2 VALUES(NULL,'".$tp[$a]."','".$issue[$a]."','".$ans[$a]."','$nhis','$idtwo','$rec')";
    $res = $conn->query($ins);
  }



  if ($res === TRUE) {
    echo "<script>
    alert('record submited successfully');
    </script>";
    $_SESSION['idtwo'] = $idtwo;
    header('refresh:0;../assprotocol4.php');
  }
  else{
   echo  $conn->error;

                    // header('refresh:0;assprotocol2.php');

 } 
}


?>