<a href="index.php">Back</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="" onclick="window.print()">Print</a>
<table border="1" width="70%" style="padding: 5px;">
	<tr>
		<th>SN</th>
		<th>Name</th>
		<th>System Physio Number</th>
		<th>Physio Number</th>
		<th>Date Time</th>
	</tr>
	
		<?php
		$count = 1;
		include("assets/db.php");
		echo $val = $_SESSION['val'];
		 $query = ("SELECT * FROM assessment WHERE Diagnosis='$val' ORDER BY time DESC ");
		$res = $conn->query($query);
		while ($row = $res->fetch_array()) {
			?>
			<tr>
			<td><?php echo $count++; ?></td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row[1]; ?></td>
			<td><?php echo $row['code2']; ?></td>
			<td><?php echo $row['time']; ?></td>
			<?php
		}
		$count++;
		?>
	</tr>
</table>