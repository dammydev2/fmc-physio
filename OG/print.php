<?php
include("includes/connect.php");
$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
?>
<a href="index.php">Return to Home</a>
<link rel="stylesheet" type="text/css" href="css/w3.css">
<div class="col-md-12 w3-sand" style="border: 2px solid #000; width: 900px; margin: 0px auto">
	<h4 style="text-align: center;">INITIAL EVALUATION SUBJECTIVE HISTORY WORKSHEET</h4>
	<h5 class="text-right">O & G</h5>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container col-md-12" style="border: 1px solid #000;">
		<h5 style="text-align: center;">SUBJECTIVE</h5>
		<?php
		$sel = "SELECT * FROM table_2 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			$reason = $row[1];
		}
		?>
		<p>What are you seeking treatment for?<b> <?php echo $reason; ?></b></p>
		<p>Patient condition include: </p>
		<?php
		$sel = "SELECT * FROM table_2 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<b style='margin-left: 200px;'>$row[4]</b><br>";
		}
		?>
		<p>&nbsp;</p>
		<p>Swellings of extremities: </p>
		<?php
		$sel = "SELECT * FROM limb WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<b style='margin-left: 200px;'>$row[3]</b><br>";
		}
		?>
		<p>&nbsp;</p>
		<?php
		$sel = "SELECT * FROM muscles WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			$freq = $row[1];
		}
		?>
		<p>Frequency of micturition: <b><?php echo $freq; ?></b></p>
		<?php
		$sel = "SELECT * FROM muscles WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<b style='margin-left: 200px;'>$row[4]</b><br>";
		}
		?>
		<p>&nbsp;</p>
		<?php
		$sel = "SELECT * FROM treatment WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			$prior = $row[1];
			$explain = $row[5];
			$date = $row[6];
			$physio = $row[7];
			$history = $row[8];
		}
		?>
		<p>Have you had any prior treatment and/or diagnostic testing for this condition?: <b><?php echo $prior; ?></b></p>
		<?php
		$sel = "SELECT * FROM treatment WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "If yes:";
		while ($row = $res->fetch_array()) {
			echo " <b style='margin-left: 200px;'>$row[4]</b><br>";
		}
		?>
		<p>If yes, please explain: <b><?php echo "$explain"; ?></b></p>
		<p>Date of next Doctor’s appointment: <b><?php echo "$date"; ?></b></p>
		<i>I have reviewed the information provided and information is complete</i>
		<p>Subjective history: <b><?php echo "$history"; ?></b></p>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
	</div>
	<div style="height: 270px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div>
		<h3 style="text-align: center;">CURRENT COMPLAINTS</h3>
		<?php
		$sel = "SELECT * FROM complaint WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "If yes:";
		while ($row = $res->fetch_array()) {
			echo "<p>What are your main concerns regarding your condition: <b>$row[3]</b><br></p>";
		}
		?>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
	</div>
	<div>
		<h3 style="text-align: center;">OBSTETRICS HISTORY</h3>
		<?php
		$sel = "SELECT * FROM history WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "If yes:";
		while ($row = $res->fetch_array()) {
			echo "<p>Gravida & Parity: <b>$row[3]</b><br></p>
			<p>Number of living children: Boys <b>$row[4]</b> &nbsp;&nbsp;&nbsp;&nbsp; girls <b>$row[5]</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; twins <b>$row[6]</b><br></p>
			<p>Multiple pregnancies: <b>$row[6]</b><br></p>
			<p>Duration between pregnancies: <b>$row[7]</b><br></p>
			<p>Were there any complications during pregnancy?: <b>$row[8]</b><br></p>
			<p>Comments: <b>$row[9]</b><br></p>
			<p>Was the pregnancy full term?: <b>$row[10]</b><br></p>
			<p>Were you on any drugs or medication during pregnancy? <b>$row[11]</b><br></p>
			<p>Was labour and delivery normal? <b>$row[12]</b><br></p>
			<p>Comments <b>$row[13]</b><br></p>
			";
			$related = $row[16];
		}
		?>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
		<p class="text-right">Other related information: <b><?php echo $related; ?></b></p>
	</div>
	<div style="height: 500px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container">
		<h5 style="text-align: center;">PREVIOUS MEDICAL HISTORY</h5>
		<?php
		$sel = "SELECT * FROM previous WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			$health = $row[3];
			$information = $row[5];
			$durable = $row[6];
			$explain = $row[8];
			$history = $row[9];
		}
		?>
		<p>How would you classify your general health? <b><?php echo "$health"; ?></b></p>
	</div>
	<div class="container">
		<i>Patient past medical history: <br></i>
		<?php
		$sel = "SELECT * FROM previous WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<b style='margin-left: 200px;'>$row[4]</b><br>";
		}
		?>
		<p>Is there any other information concerning your medical history that we should know about? <b><?php echo "$information"; ?></b></p>
		<p>Have you ever purchased or rented Durable Medical Equipments, Orthotocs, Prosthetics. Or Supplies? <b><?php echo "$durable"; ?></b></p>
		<p>Explanation on durable medical equipment <b><?php echo "$explain"; ?></b></p>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
		<p class="text-right">Other related information: <b><?php echo $history; ?></b></p>
	</div>
	<div style="height: 50px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM chest WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Do you have any movement restriction? <b>$row[3]</b></p>
			<p>If yes , please list? <b>$row[4]</b></p>
			<p>Do you have any difficulty in breathing? <b>$row[5]</b></p>
			<p>Do you cough? <b>$row[6]</b></p>
			<p>Do you produce sputum? <b>$row[7]</b></p>
			<p>If yes, describe.(colour, quantity, thickness, presence of blood stain): <b>$row[8]</b></p>
			";
			$info = $row[10];
			$medication = $row[11];
		}
		?>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
		<p class="text-right">Other related information: <b><?php echo $info; ?></b></p>

		<div style="text-align: center;">MEDICATIONS</div>
		<p>Please list all of  the medications[with specific NAME, DOSAGE , FREQUENCY and ROUTE(i.e : by mouth)] that you are currently taking [including over –the-counter, prescription, herbals and vitamins/mineral(s)]: <b><?php echo $medication; ?></b></p>
	</div>
	<div style="height: 50px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container">
		<h5 style="text-align: center;">COMMUNICATION HISTORY</h5>
		<?php
		$sel = "SELECT * FROM comm WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Please describe any communication difficulties: <b>$row[3]</b></p>";
			$related = $row[5];
		}
		?>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
		<p class="text-right">Other related information: <b><?php echo $related; ?></b></p>

	</div>
	<div style="height: 50px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container">
		<h5 style="text-align: center;">SOCIAL HISTORY/INTEREST/ LIVING ENVIRONMENT</h5>
		<?php
		$sel = "SELECT * FROM social WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Spouse name: <b>$row[3]</b><span style='margin-left: 100px;'>age <b>$row[4]</b></span><span style='margin-left: 100px;'>occupation <b>$row[5]</b></span></p>
			<p>Patients occupation: <b>$row[6]</b>
			<p>Type of apartment: <b>$row[7]</b>
			<p>Do you smoke?: <b>$row[8]</b>
			<p>Do you drink?: <b>$row[9]</b>
			";
			$related = $row[11];
		}
		?>
		<i>I have reviewed the information provided and information is complete</i><br>
		<span class="text-right">Therapist name: <?php echo "$physio"; ?></span>
		<p class="text-right">Other related information: <b><?php echo $related; ?></b></p>
	</div>
	<div style="height: 50px; border: 1px solid #000;"></div>
	<div class="container">
		<?php
		$sel = "SELECT * FROM table_1 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patient Name: <b>$row[1]</b><span style='margin-left: 100px;'> Date of Birth: <b>$row[4]</b></span></p>
			<p>Marital Status: <b>$row[6]</b><span style='margin-left: 100px;'> Duration of Marriage: <b>$row[7]</b></span><span style='margin-left: 100px;'> Date of Eval: <b>$row[5]</b></span></p>
			<p>Address: <b>$row[8]</b></p>
			<p>&nbsp;</p>
			";
		}
		?>
	</div>
	<div class="container">
		<h5 style="text-align: center;">PATIENT GOAL FOR THERAPY</h5>
		<?php
		$sel = "SELECT * FROM goals WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>What goals are you hoping to have accomplished by participating In therapy?: <b>$row[3]</b></p>
			<p>PLAN OF TREATMENT: <b>$row[5]</b></p>
			<p>MEANS OF TREATMENT: <b>$row[6]</b></p>
			";
		}
			?>
	</div>
	<div class="container">
		<h4 style="text-align: center;">PATIENT'S SIGNATURE</h4>
		<i>To the best of my knowledge I have fully informed you of the history of my problem and current status</i>
		<p>Signature of Patient ................................... <span style="margin-left: 100px;">Date: <?php echo date("d/m/Y"); ?></span></p>
	</div>
	<div style="height: 50px;"></div>
	<div class="container" style="border: 2px solid #000;">
		<h5 style="text-align: center;">THERAPIST SIGNATURE</h5>
		<i>The above information represents all significant subjective findings
Please refer to the enclosed objective findings and plan of care for my assessment, treatment goals and treatment plan</i>
	<p>Signature of Therapist: .................... <span style="margin-left: 100px;">Licence: .......................... <span style="margin-left: 100px;">Date: <?php echo date("d/m/Y"); ?></p>
		<p><h3><b>Printed Therapist Name : <?php echo $physio; ?></b></h3></p>
	</div>
	<div style="height: 200px;"></div>
</div>
</div>




