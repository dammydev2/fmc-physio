<?php  
include "assets/db.php";
$rec = $_SESSION['rec'];
$num = $_SESSION['idtwo'];
?>
<a href="index.php">Back to Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="" onclick="window.print()">Print</a>
<div style="width: 900px; border: 1px solid #000; margin: 0px auto; padding: 10px;">
	<h3 style="text-align: center;">PHYSICAL FITNESS ASSESSMENT IN PHYSIOTHERAPY DEPARTMENT FMCA</h3>
	<?php
	$sel = "SELECT * FROM assessment WHERE rollnum='$num' AND rec='$rec'";
	$res = $conn->query($sel);
	while ($row = $res->fetch_array()) {
		echo "<p>NAME  OF CLIENT <b>$row[2]</b></p>
		<p>Age <b>$row[3]</b><span style='margin-left: 100px;'>D.O.B: <b>$row[4]</b></span><span style='margin-left: 100px;'>Date of Assessment <b>$row[6]</b></span></p>
		<p>Present Complaint <b>$row[5]</b></p>
		<p>History Source <b>$row[7]</b></p>
		<p>History <b>$row[8]</b></p>
		<p>&nbsp</p>
		<div style='border: 1px solid #000; padding: 5;'>
		<p style='text-align: center;'>MEDICAL HISTORY</p>
		<p>Treatment as applied to patient: <b>$row[9]</b></p>
		<p>Major illness/injuries during the last 12 months: <b>$row[10]</b></p>
		<p>Drug History: <b>$row[11]</b></p>
		<p>Past Surgical History: <b>$row[12]</b></p>
		<p>Family/Social History: <b>$row[13]</b></p>
		</div>
		";
	}
	?>
	<div style='border: 1px solid #000; padding: 5;'>
		<p style='text-align: center;'>HISTORY OF FITNESS PROGRAM</p>
		<?php
	$sel = "SELECT * FROM assessment2 WHERE rollnum='$num' AND rec='$rec'";
	$res = $conn->query($sel);
	while ($row = $res->fetch_array()) {
		echo "<p>Previous participant in fitness program(s) <b>$row[2]</b><span style='margin-left: 100px;'>Duration of program <b>$row[3] Weeks</b></span></p>
		<p>Reason(s) for stopping: <b>$row[4]</b></p>
		<p>Major reason(s) for wanting to participate in this fitness program: <b>$row[5]</b></p>
		<p>Others: <b>$row[6]</b></p>
		<p><b>Consent</b><br> I hereby indicate my willingness to participate in the test and exercise program and to comply with all instructions I may be given. </p>
		<p>&nbsp;</p>
		<p>Signature: ............................................ <span style='margin-left: 200px;'>Date: ".date('d/m/Y') ."</span></p>
		<p>&nbsp;</p>
		<p style='text-align: center'><b>EXAMINATION</b></p>
		<p>ANTHROPOMETTRIC MEASUREMENT</p>
		<p>Height (m): <b>$row[9] m</b></p>
		<p>Weight(Kg): <b>$row[10] Kg</b></p>
		<p>Waist Circumference(cm): <b>$row[15] cm</b></p>
		<p>Hip Circumference (cm): <b>$row[16] cm</b></p>
		<p>Waist to Hip Ratio: <b>$row[17] cm</b></p>
		<p>BMI(Kg/m<sup>2</sup>) <b>$row[11] cm</b></p>
		<p>VITALS <b>$row[12] cm</b></p>
		<p>BP (mmHg) <b>$row[13] cm</b></p>
		<p>PR(bpm) <b>$row[14] cm</b></p>
		<p>Maximum Heart Rate(220-age) <b>$row[18] cm</b></p>
		<p>NB: Target Heart Rate for Moderate Intensity= 60-65% of Max HR</p>
		<p>&nbsp;<p>
		<p style='text-align: center;'><b>OUTFITS FOR FITNESS AND PRECAUTION</b><br>
		<span>Wear appropriate outfit</span>
		<span style='margin-left: 100px;'>No food for 2 hours</span>
		<span style='margin-left: 100px;'>No caffeinated beverages</span><br>
		<span>No alcohol for 24 hours before assessment / testing</span>
		<span style='margin-left: 100px;'>No smoking for 2 hours before testing</span></p>
		<p>&nbsp;</p>
		<p>PLAN OF TREATMENT: <b>$row[19]</b></p>
		<p>MEANS OF TREATMENT: <b>$row[20]</b></p>

		";
	}
		?>
	</div>
</div>













