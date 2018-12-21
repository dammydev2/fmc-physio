<?php  
include "assets/db.php";
$num = $_SESSION['idtwo'];
$rec = $_SESSION['rec'];
?>
<a href="index.php">Back to Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="" onclick="window.print()">Print</a>
<div style="width: 900px; border: 1px solid #000; margin: 0px auto; padding: 10px;">
	<h3 style="text-align: center;">FITNESS ASSESSMENT QUESTIONNAIRES AND WAIVER</h3>
	<?php
	$sel = "SELECT * FROM questionnaire WHERE rollnum='$num' AND rec='$rec'";
	$res = $conn->query($sel);
	while ($row = $res->fetch_array()) {
		echo "<p>Date: <b>$row[2]</b> <span style='margin-left: 40%;'>Name: <b>$row[3]</b></span></p>
		<p> Address: <b> $row[5]</b><span style='margin-left: 95px;'>City: <b>$row[6]</b></span><span style='margin-left: 120px;'>State: <b>$row[7]</b></span></p>
		<p>Zip <b>$row[8]</b><span style='margin-left: 34%;'>Home Phone: <b>$row[9]</b></span><span style='margin-left: 50px;'>Alternate Phone:  <b>$row[10]</b></span></p>
		<p>Age <b>$row[11]</b><span style='margin-left: 30%;'>Height <b>$row[12]</b></span><span style='margin-left: 170px;'>Weight <b>$row[13]</b></span></p>
		<p>&nbsp</p>
		<div style='border: 1px solid #000; padding: 5;'>
		<p style='text-align: center;'>For questions 1-9. Have you experienced:</p>
		<p>Pain or discomfort (or angina equivalent) in the chest, neck, jaw, arms,<br> or other areas
		That may be due to  ischemia (decreased blood flow): <b>&nbsp; $row[14]</b></p>
		<p>Shortness of breath at rest or w/mild exertion: <b> &nbsp; $row[15]</b></p>
		<p>Dizziness or syncope at rest or w/mild exertion: <b>&nbsp; $row[16]</b></p>
		<p>Orthopnea/paroxysmal nocturnal dyspnea (short of breath ) at rest or w/mild exertion: <b> &nbsp;$row[17]</b></p>
		<p>Edema (excessive accumulation of issue fluid): <b> &nbsp; $row[18]</b></p>
		<p>Palpitations or tachycardia (sudden rapid heartbeat): &nbsp; <b>$row[19]</b></p>
		
		";
	}
	?>
	<?php
	$sel = "SELECT * FROM questionnaire2 WHERE rollnum='$num' AND rec='$rec'";
	$res = $conn->query($sel);
	while ($row = $res->fetch_array()) {
		echo "<p>Intermittent claudication (lameness due to diseased blood flow): <b>&nbsp; $row[2]</b></p>
		<p>Known heart murmur (abnormal heart sound): <b> &nbsp; $row[3]</b></p>
		<p>Unusual fatigue or shortness of breath with usual activities: <b>&nbsp; $row[4]</b></p>
		<p>Do you smoke?: <b> &nbsp;$row[5]</b><span style='margin-left: 10%;'>Do you drink occasionally? <b>$row[6]</b></span><span style='margin-left: 10%;'>Have you been a member of a health club before? <b>$row[7]</b></span></p>
		<p>Have you been exercising regularly for the past 6 months? <b> &nbsp; $row[8]</b></p>
		<p>Pleas rate your exercise level on a scale of 1 to 5 (5 indicating very strenuous) for each age range through your present age, &nbsp; <b>$row[0]</b></p>
		<p>Are you currently involved in regular endurance (cardiovascular) exercise? <b> &nbsp; $row[9]</b></p>
		<p>type of exercise(s) <b> &nbsp; $row[10]</b><span style='margin-left: 10%;'>minutes/ day ? <b> &nbsp; $row[11] minutes</b> </span></p>
		<p>How often do you eat out?  <b> &nbsp; $row[12] times per week.</b><span style='margin-left: 10%;'>I would like to: <b> &nbsp; $row[13]</b> </span></p>
		</div>
		";
	}
	?>
	<div style='border: 1px solid #000; padding: 5;'>
		<p style='text-align: center;'>PHYSIOTHERAPY AND FITNESS CLINIC - PHYSICAL FITNESS ASSESSMENT FORM</p>
		<?php
		$sel = "SELECT * FROM questionnaire3 WHERE rollnum='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Name: <b>$row[2]</b> <span style='margin-left: 40%;'>Clinic No : <b>$row[3]</b></span></p>
			<p> Age: <b> $row[4]</b>years<span style='margin-left: 125px;'>Sex: <b>$row[5]</b></span><span style='margin-left: 227px;'>Occupation: <b>$row[6]</b></span></p>
			<p>Address: <b>$row[7]</b><span style='margin-left: 28%;'>Phone: <b>$row[8]</b></span></p>
			<p>&nbsp;</p>
			<p style='text-align: center' >Ratings of amount of time spent on the below activities. Assign 7 to the activity/activities you are most involved in, and 1 to the one (s) you are least involved in during the walking hours of an average day:</p>
			<p>Lying (not sleeping): <b>$row[9] </b><span style='margin-left: 3%;'>Walking: <b>$row[10]</b></span><span style='margin-left: 3%;'>Driving (within town, on high way): <b>$row[11]</b></span><span style='margin-left: 3%;'>standing (kitchen work, teaching etc.): <b>$row[12]</b></span></p>
			<p>kneeling (praying): <b>$row[13]</b><span style='margin-left: 3%;'>bending (sweeping, lacing/buckling shoes, bathing small children, changing baby’s diaper etc.): <b>$row[14]</b></span></p>
			<p></p><p>&nbsp;</p>
			<p>How you share your 24 hour day between walking and sleeping?<span style='margin-left: 8%;'> Walking <b> $row[15] hours</b></span><span style='margin-left: 8%;'>sleeping <b> $row[16] hours</b></span></p>
			<p>Leisure-time activities/sporting activities during last 12 months activities:  <b> $row[17] </b></p>

			";
		}
		?>
		<?php
		$sel = "SELECT * FROM questionnaire4 WHERE rollnum='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "
			<p style='text-align: center'>Drinking Habits</p>
			<p> Alcohol:<b> $row[2] </b><span style='margin-left: 4%;'>Amount per week <b> $row[3] </b><span style='margin-left: 2%;'> <b> $row[4] </b></span></span> </p>
			<p> Non-alcoholic (other than water or soda water):<b> $row[5] </b><span style='margin-left: 4%;'> Amount per week <b> $row[6] </b><span style='margin-left: 2%;'> <b> $row[7] </b></span> </span> </p>
			<p> Smoking : <b> $row[8] </b><span style='margin-left: 4%;'>No of packs/sticks per week  <b> $row[9] </b></span> </p>
			<p> Stimulants: <b> $row[10] </b><span style='margin-left: 4%;'>No of cups/nuts per week   <b> $row[11] </b></span> </p>
			<p> Eating: No of major meals per day : <b> $row[12] </b><span style='margin-left: 4%;'>Frequency of snacks in between meals per day  <b> $row[13] </b></span> </p>
			<p> Types of snacks : <b> $row[14] </b></p>
			";
			}
			?>
			</div>
			</div>