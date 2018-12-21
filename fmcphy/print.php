<?php
include 'includes/db.php';
$nhis = $_SESSION['nhis'];
$num = $_SESSION['idtwo'];
$rec = $_SESSION['rec'];
?>
<style type="text/css">
	.layout{
		width: 800px;
		border: 1px solid #000;
		margin: 0px auto;
	}

	.box{
		border: 1px solid #000;
		padding: 5px;
	}
	@media print {
	#printPageButton {
		display: none;
	}
}
</style>
<button onclick="window.print();" id="printPageButton">Print</button>
<a href="start.php" id="printPageButton">Return to Home</a>
<div class="layout">
	<div class="box">
		<h2 style="text-align: center;">ASSESSMENT PROTOCOL</h2>
		<?php
		$sel = "SELECT * FROM asp1 WHERE idtwo='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>Patientame: <b>".$row[2]."</b> <span style='margin-left: 50px;'>Address: <b>".$row[3]."</b></span></p>
			<p>NHIS No: <b>".$row[4]."</b> <span style='margin-left: 50px;'>Hosp no: <b>".$row[5]."</b></span></p>
			<p>Date of Birth: <b>".$row[6]."</b> <span style='margin-left: 50px;'>Gender: <b>".$row[7]."</b></span></p>
			<p>Tel: <b>".$row[8]."</b> <span style='margin-left: 50px;'>Admission date: <b>".$row[9]."</b></span></p>
			<p>Admission date: <b>".$row[10]."</b> <span style='margin-left: 50px;'>Condition type: <b>".$row[11]."</b></span></p>
			<p>Date: <b>".$row[12]."</b> <span style='margin-left: 50px;'>Time: <b>".$row[13]."</b></span></p>
			<p>Staffname: <b>".$row['staffname']."</b> <span style='margin-left: 50px;'>Designation: <b>".$row[15]."</b></span></p>

			";
		}
		?>
	</div>
	<div class="box">
		<h2 style="text-align: center;">DIAGNOSIS / REASON FOR REFERRAL</h2>
		<?php
		$sel = "SELECT * FROM asp2 WHERE idtwo='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "<p>HCP: <b>".$row[2]."</b><span style='margin-left: 100px;'> DH: <b>".$row[4]."</b></p>
			<p>PMH: <b>".$row[3]."</b><span style='margin-left: 100px;'> SH: <b>".$row[5]."</b></p>
			<p>Habit: <b>".$row[6]."</b><span style='margin-left: 100px;'>  Accomodation: <b>".$row[7]."</b></p>
			<p>Did your house has stairs: <b>".$row[8]."</b><span style='margin-left: 100px;'> Did your house has handrails: <b>".$row[9]." handrails</b></p>
			<p>House type: <b>".$row[10]."</b><span style='margin-left: 100px;'> No of child: <b>".$row[11]." children</b></p>
			<p>No of children: <b>".$row[12]."</b><span style='margin-left: 100px;'> No of pregnancy: <b>".$row[13]." </b></p>
			<p>No of wives: <b>".$row[14]."</b><span style='margin-left: 100px;'> Mobility type: <b>".$row[15]." </b></p>
			<p>Aids type: <b>".$row[16]."</b></p>
			<p>Other related Information: <b>".$row[16]."</b></p>

			";
		}
			?>
	</div>
	<div class="box">
		<h2 style="text-align: center;">OBJECTIVE ASSESSMENT</h2>
		<?php
		$sel = "SELECT * FROM asp WHERE idtwo='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			echo "
			<p>Level of Alertness: <b>".$row[2]."</b> </p>
			<p>Respiratory function: <b>".$row[3]."</b> </p>
			<table border='1' width='80%'>
			<tr>
			<td>Cognition: ".$row[4]."</td>
			<td>Neglect: ".$row[5]."</td>
			<td>Communication: ".$row[6]."</td>
			</tr>
			<tr>
			<td>Swallow: ".$row[7]."</td>
			<td>Pain: ".$row[8]."</td>
			<td>Bed mobility: ".$row[9]."</td>
			</tr>
			</table>
			";
		}
		$sel = "SELECT * FROM aspques WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "<table border='1' width='50%'>
		<tr>";
		while ($row = $res->fetch_array()) {
			echo "
			
			<td>".$row[1]."</td>
			<td>".$row[2]."</td>
			</tr>
			
			";
		}
			?>
		</table>
		<p></p>
		<?php
		$sel = "SELECT * FROM aspques2 WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "<table border='1' width='70%'>
		<tr>";
		while ($row = $res->fetch_array()) {
			echo "
			
			<td>".$row[1]."</td>
			<td>".$row[2]."</td>
			<td>".$row[3]."</td>
			</tr>
			
			";
		}
			?>
		</table>
	</div>
	<div class="box">
		<h2 style="text-align: center;">OBJECT ASSESSMENT</h2>
		<?php
		$sel = "SELECT * FROM asp4 WHERE idtwo='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "<table border='1'>";
		while ($row = $res->fetch_array()) {
			echo "
			<tr>
			<td>At risk of respiratory complications: ".$row[2]."</td>
			<td>At risk of abdominal muscle tone and contractures: ".$row[3]."</td>
			<td>At risk of shoulder pain: ".$row[4]."</td>
			</tr>
			<tr>
			<td>sitting balance: ".$row[5]."</td>
			<td>ability to transfer independenty?: ".$row[6]."</td>
			<td>
			</tr>
			
			<p>Action to be taken: ".$row[8]."</p>
			";
		}
			?>
			</table>
			<?php
			echo "<table border='1'>";
		$sel = "SELECT * FROM object WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "<table border='1' width='60%'>
		<tr>
		<th>Item</th>
		<th>Score</th>
		</tr>";
		while ($row = $res->fetch_array()) {
			echo "
			<tr>
			<td>".$row[1]."</td>
			<td>".$row[2]."</td>
			</tr>";
		}
			?>
</table>

<?php
			echo "<table border='1'>";
		$sel = "SELECT * FROM ans WHERE num='$num' AND rec='$rec'";
		$res = $conn->query($sel);
		echo "<table border='1' width='60%'>";
		while ($row = $res->fetch_array()) {
			echo "
			<tr>
			<td>Analysis of Findings:<b> ".$row[3]."</b></td>
			<td>Physical Impressions:<b>  ".$row[4]."</b></td>
			</tr>
			<tr>
			<td>Plan of treatments:<b>  ".$row[5]."</b></td>
			<td>Intervention/Means of treatments:<b>  ".$row[6]."</b></td>
			</tr>";
		}
			?>
</table>
<p>&nbsp</p>
<p>Therapist Signature: ................................. <span style="margin-left: 100px;"> Date: <b><?php echo date("d/m/Y") ?></b></span></p>

	</div>
</div>









