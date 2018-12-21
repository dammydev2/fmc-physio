<?php
            include('../includes/db.php');
            session_start();
            ob_start();
            error_reporting(E_ALL);
            extract($_POST);
            if (isset($_POST['submit'])) {
              $resp = $_POST['respiratory'];
              $muscle = $_POST['muscle_tone'];
              $shoulder = $_POST['shoulder'];
              $sitting = $_POST['sitting'] ;
              $depend = $_POST['depend'];
              $mobility = $_POST['mobility'];
              $actn= $_POST['actn_taken'];
              //$idtwo = $_SESSION['idtwo'];
              $nhis = $_POST['nhis'];
              $rec = $_POST['rec'];

             echo $ins = "INSERT INTO asp4 (idtwo,complications,contractures,shoulderpain,sittingbal,independent, indexscore,actiontaken,nhis,rec) VALUES ('$idtwo','$resp','$muscle','$shoulder','$sitting','$depend','$mobility','$actn','$nhis','$rec')";
              $result = $conn->query($ins);

              extract($_POST);
              $c = 8;
              for($a = 0; $a < $c; $a++)
              { 
                $ins = "INSERT INTO fmcphy_neu.object VALUES(NULL,'".$question[$a]."','".$answer[$a]."','$nhis','$idtwo','$rec')";
                $res = $conn->query($ins);
            }
            

            if ($result === TRUE AND $res === TRUE) {
                echo "<script>
                alert('record submited successfully');
                </script>";
                $_SESSION['idtwo'] = $idtwo;
                $_SESSION['nhis'] = $nhis;
                echo "success";
                header('refresh:0;../ana.php');
            }
            else{
             //echo ;
             echo  $conn->error;

                    // header('refresh:0;assprotocol2.php');

         }
     }


     ?>
