<?php
include('includes/db.php');
if(isset($_POST['del']))
{
  $phy = $_POST['phynum'];
  $name = $_POST['name'];

  $sel = "SELECT * FROM patient WHERE phynum = '$phy' AND name = '$name'";
  $query = $conn->query($sel);
  if ($query-> num_rows === 1) {

   echo "<script>
        alert('successful');
        </script>";
  }else{
    echo "error".$conn->error;
  }
}
?>