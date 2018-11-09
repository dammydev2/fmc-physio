<?php
include("include/connect.php");

$num = $_SESSION['num'];
$rec = $_SESSION['rec'];
?>

<style type="text/css">
.layout{
	width: 800px;
	border: 1px solid #000;
	margin: 0px auto;
}
.text-center{
	text-align: center;
}
.box{
	width: 90%;
	margin: 0px auto;
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
<a href="index.php" id="printPageButton">Return to Home</a>
<div class="layout">
	<p class="text-center"><b>INITIAL EVALUATION SUBJECTIVE HISTORY WORKSHEET</b></p>
	<?php
	$sel = "SELECT * FROM reg WHERE p_id='$num'";
	$res = $conn->query($sel);
	while ($row = $res->fetch_array()) {
		?>
		<p>Patient Name: <?php echo $row[1];?> <span style="margin-left: 100px;"> Date of Birth: <?php echo $row[3];?> </span> <span style="margin-left: 100px;"> Date of Eval: <?php echo $row[4];?> </span></p>
		<?php
	}
	?>
	<!--SUBJECTIVE STARTS FROM HERE-->
	<div class="box">
		<?php
		$sel = "SELECT * FROM subjective WHERE rec='$rec'";
		$res = $conn->query($sel);
		while ($row = $res->fetch_array()) {
			?>
			<p class="text-center">SUBJECTIVE</p>
			<p>
				Why are seeking treatment for your child?: <b><?php echo $row[2];?></b><br>
				<span>Has your child has any prior treatment and/in diagnostic testing for this condition? <b><?php echo $row[3];?></b></span><br>
				<span>Specification of prior treatment <b><?php echo $row[4];?></b></span><br>
				<span>Explanation of prior treatment <b><?php echo $row[5];?></b></span><br>
				<span>Date of Doctor's Next appointment <b><?php echo $row[6];?></b></span><br>
			</b>
			<p>I have reviewed the information provided and found it to be complete</p>
			<span>Subjective History <b><?php echo $row[8];?></b></span><br>
			<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $row[7];?></b></span></p>
			<?php
		}
		?>
	</div>
	<!--THE COMPLAIN LINE-->
	<div class="box">
		<?php
		$sel = "SELECT * FROM complain WHERE rec='$rec'";
		$res = $conn->query($sel);
		?>
		<p class="text-center">CURRENT COMPLAINT</p>
		<p>The following are the main issue reagarding your child</p>

		<?php
		while ($row = $res->fetch_array()) {
			?>
			<ul>
				<li><?php echo $row[2];?></li>
			</ul>
			<?php
			$info = $row[4];
			$physio = $row[3];
		}
		?>
		<p>I have reviewed the information provided and found it to be complete</p>
		<span>Other related information <b><?php echo $info;?></b></span><br>
		<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
	</div>
	<!--PREGNANCY AND BIRTH HISTORY-->
	<div class="box">
		<?php
		$sel = "SELECT * FROM preg WHERE rec='$rec'";
		$res = $conn->query($sel);
		?>
		<p class="text-center">PREGNANCY AND BIRTH HISTORY</p>		
		<?php
		while ($row = $res->fetch_array()) {
			echo $row[7]. ":<b> ".$row[8]. "</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comments: ".$row[9]. " <br/>";
			$weight = $row[3];
			$length = $row[2];
			$info = $row[6];
			$physio = $row[5];
		}
		?>
		<span>Birth weight: <b><?php echo $weight;?></b></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span>Birth length: <b><?php echo $length;?></b></span>
		<p>I have reviewed the information provided and found it to be complete</p>
		<span>Other related information <b><?php echo $info;?></b></span><br>
		<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
	</div>
	<!--GROWTH AND DEVELOPMENT-->
	<div class="box">
		<?php
		$sel = "SELECT * FROM growth_2 WHERE rec='$rec'";
		$res = $conn->query($sel);
		?>
		<p class="text-center">GROWTH AND DEVELOPMENT</p>
		<p>At what age did your child: </p>	
		<table border="1" width="50%">	
			<tr>
				<?php
				while ($row = $res->fetch_array()) {
			//echo $row[2]. ":<b> </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ".$row[3]. "</b> <br/>";
					echo "<td>".$row[2]."</td><td>".$row[3]."</td>";
					echo "</tr>";
				}
				?>
			</table>
			<p>Please describe your child: </p>
			<?php
			$sel = "SELECT * FROM growth_1 WHERE rec='$rec'";
			$res = $conn->query($sel);
			while ($row = $res->fetch_array()) {
				?>
				<ul>
					<li><?php echo $row[2];?></li>
				</ul>
				<?php
				$info = $row[4];
				$physio = $row[3];
			}
			?>
			<p>I have reviewed the information provided and found it to be complete</p>
			<span>Other related information <b><?php echo $info;?></b></span><br>
			<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
		</div>
		<!--PREVIOUS MEDICAL HISTORY-->
		<div class="box">
			<?php
			$sel = "SELECT * FROM prev_1 WHERE rec='$rec'";
			$res = $conn->query($sel);
			?>
			<p class="text-center">PREVIOUS MEDICAL HISTORY</p>		
			<?php
			while ($row = $res->fetch_array()) {
				echo "<ul>
				<li>".$row[3]."</li>
				</ul>";
			}
			?>
			<p>Other medical history</p>
			<table border="1" width="50%">
				<tr>
					<td></td>
					<th>Description</th>
				</tr> 
				<tr>
					<?php
					$sel = "SELECT * FROM prev_2 WHERE rec='$rec'";
					$res = $conn->query($sel);
					while ($row = $res->fetch_array()) {
						echo "<td>".$row[2]."</td>

						<td>".$row[3]."</td>";
						echo '</tr>';
						$info = $row[5];
						$physio = $row[4];
					}
					?>
				</table>
				<p>I have reviewed the information provided and found it to be complete</p>
				<span>Other medical history that may impact rate of recovery <b><?php echo $info;?></b></span><br>
				<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
			</div>
			<!--MEDICAL PRECAUTIONS AND CONTRADICTIONS-->
			<div class="box">
				<?php
				$sel = "SELECT * FROM precaution WHERE rec='$rec'";
				$res = $conn->query($sel);
				?>
				<p class="text-center">MEDICAL PRECAUTIONS/CONTRADICTIONS</p>
				<table border="1">	
					<tr>
						<th>Issue</th>
						<th></th>
						<th>comment</th>
					</tr>	
					<tr>
						<?php
						while ($row = $res->fetch_array()) {
							echo "<td>".$row[5]."</td>
							<td>".$row[6]."</td>
							<td>".$row[7]."</td>

							</tr>";
							$info = $row[4];
							$physio = $row[3];
						}
						?>
					</table>
					<p>I have reviewed the information provided and found it to be complete</p>
					<span>Other medical history that may impact rate of recovery: <b><?php echo $info;?></b></span><br>
					<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
				</div>

				<div class="box">
					<?php
					$sel = "SELECT * FROM medication WHERE rec='$rec'";
					$res = $conn->query($sel);
					?>
					<p class="text-center">MEDICATION AND COMMUNICATION HISTORY</p>		
					<?php
					while ($row = $res->fetch_array()) {
						?>
						<p>List of all medication currently being taken over-the-counter, prescription, herbals and vitamins: <b><?php echo $row[4];?></b></p>
						<p>Please describe any communication difficulties: <b><?php echo $row[5];?></b></p>
						<p>When was the problem first noticed: <b><?php echo $row[6];?></b></p>
						<p>Other language(s) besides english spoken at home: <b><?php echo $row[7];?></b></p>
						<?php
						$info = $row[3];
						$physio = $row[2];
					}
					?>
					<p>I have reviewed the information provided and found it to be complete</p>
					<span>Other related information: <b><?php echo $info;?></b></span><br>
					<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
				</div>
				<!--SOCIAL HISTORY/INTEREST/LIVING ENVIRONMENT-->
				<div class="box">
					<?php
					$sel = "SELECT * FROM social WHERE rec='$rec'";
					$res = $conn->query($sel);
					?>
					<p class="text-center">SOCIAL HISTORY/INTEREST/LIVING ENVIRONMENT</p>
					<?php
					while ($row = $res->fetch_array()) {
						echo "<p>Father's Name: <b>".$row[2]."</b> <span style='margin-left: 50px;'>Father's Age: <b>".$row[3]."</b></span> <span style='margin-left: 50px;'>Father's occupation: <b>".$row[4]."</b></span></p>

						<p>Mother's Name: <b>".$row[5]."</b> <span style='margin-left: 50px;'>Mother's Age: <b>".$row[6]."</b></span> <span style='margin-left: 50px;'>Mother's occupation: <b>".$row[7]."</b></span></p>
						<p>Is she Adopted: <b>".$row[8]."</b> <span style='margin-left: 50px;'> If yes at what age: <b>".$row[9]."</b> </span></p>
						<p>Parent Marital status: <b>".$row[10]."</b></p>
						<p>Who lives in the house with the child? <b>".$row[11]."</b></p>
						";
						$info = $row[14];
						$physio = $row[13];
					}
					?>
					<p>I have reviewed the information provided and found it to be complete</p>
					<span>Other related information: <b><?php echo $info;?></b></span><br>
					<p style="text-align: right; margin-right: 20px;"><span>Physiotherapist <b><?php echo $physio;?></b></span></p>
				</div>
				<div class="box">
					<?php
					$sel = "SELECT * FROM education WHERE rec='$rec'";
					$res = $conn->query($sel);
					?>
					<p class="text-center">EDUCATIONAL HISTORY</p>
					<table border="1" width="90%">
						<tr>
							<?php
							while ($row = $res->fetch_array()) {
								echo "
								<td>".$row[3]."</td>
								<td>".$row[4]."</td>
								<td>".$row[5]."</td>
								</tr>";
							}
							?>
						</table>kkk
						<?php
						$sel = "SELECT * FROM education2 WHERE rec='$rec'";
						$res = $conn->query($sel);
						while ($row = $res->fetch_array()) {
							echo "
							<p>What grade is your child in: <b>".$row[2]."</b></p>
							<p>How long does your child have special education or theraohy services in school?: <b>".$row[4]."</b></p>
							<p>Individual group of special education/theraphy: <b>".$row[5]."</b></p>
							<p>Additional cmments on special education/theraphy: <b>".$row[6]."</b></p>
							<p>The place your child receive theraphy service: <b>".$row[7]."</b></p>
							<p>From whom did your child receive theraphy service: <b>".$row[8]."</b></p>
							<p>Additional cmments on theraphy: <b>".$row[9]."</b></p>
							<p>Are there any religious or cultural issues that we should be aware of regarding your child's evaluation: <b>".$row[10]."</b></p>
							<p><h3 style='text-align: center'>PATIENT GOALS FOR THE THERAPHY</h3></p>
							<p>what goals are you hoping to have your child accomplish by participating in the theraphy?: <b>".$row[11]."</b></p>
							<p><h3 style='text-align: center'>ADDITIONAL RELEVANT INFORMATION</h3></p>
							<p>Theraphist use only: <b>".$row[13]."</b></p>
							";
						}
						?>
					</div>
					<div class="box">
						<h3 style="text-align: center;">GUARDIAN SIGNATURE</h3>
						<span style="text-align: center; font-size: 12px;">To the best of my knowledge, I have fully informed you of the history of my child's problrm and current status.</span>
						<p><b>Patient Guardian's signature:............................................................. Date:.............................</b></p>
						<p><b>Relationship to Patient: ..............................................................</b></p>
					</div>
					<div class="box">
						<h3 style="text-align: center;">THERAPIST SIGNATURE</h3>
						<span style="text-align: center;">The information represents all significant subjective findings.<br>Please refer to the enclosed objective findings and plan of core for my assesment, treatment goals and treatment plans</span>
						<p><b>Therapist's signature:................................... License # ...................... Date:.............................</b></p>
						<p><b>Therapist Name: <?php echo $physio; ?></b></p>
					</div>
				</div>
				<div style="height: 40px;"></div>


















