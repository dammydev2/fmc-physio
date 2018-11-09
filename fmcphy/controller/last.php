<?php
            include('../includes/db.php');
            session_start();
            ob_start();
            $sel = "SELECT * FROM asp2 ORDER BY id asc ";
            $query = $conn->query($sel);
            while ($res = $query-> fetch_assoc()) {
                $idtwo = $res[idtwo];
                $_SESSION['idtwo']=$idtwo;
            }

            if (isset($_POST['submit'])) {
              $resp = $_POST['respiratory'];
              $muscle = $_POST['muscle_tone'];
              $shoulder = $_POST['shoulder'];
              $sitting = $_POST['sitting'];
              $depend = $_POST['depend'];
              $mobility = $_POST['mobility'];
              $actn= $_POST['actn_taken'];
              $idtwo = $_SESSION['idtwo'];
              $nhis = $_POST['nhis'];


              $ins = "INSERT INTO asp4 (idtwo,complications,contractures,shoulderpain,sittingbal,independent, indexscore,actiontaken,nhis) VALUES ('$idtwo','$resp','$muscle','$shoulder','$sitting','$depend','$mobility','$actn','$nhis')";
              $result = $conn->query($ins);

              extract($_POST);
              $c = 8;
              for($a = 0; $a < $c; $a++)
              { 
                $ins = "INSERT INTO fmcphy2.object VALUES(NULL,'".$question[$a]."','".$answer[$a]."','$nhis','$idtwo')";
                $res = $conn->query($ins);
            }
            

            if ($result === TRUE AND $res === TRUE) {
                echo "<script>
                alert('record submited successfully');
                </script>";
                $_SESSION['idtwo'] = $idtwo;
                $_SESSION['nhis'] = $nhis;
                echo "success";
                header('refresh:0;../print.php');
            }
            else{
             //echo ;
             echo  $conn->error;

                    // header('refresh:0;assprotocol2.php');

         }
     }


     ?>
