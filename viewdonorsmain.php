<?php
include("header.php");
?>
</header>
<div id="about" class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<div class="section-title">
			<h2 class="title text-center">View Donors</h2>
			</div>
			</div>
		</div>
	</div>
</div>


<div id="numbers" class="section">

<div class="container">

<div class="row">

<div class="col-md-12 col-sm-12">
	<div class="number">

<table id="datatable"  class="table table-striped table-bordered">
	<thead>
		<tr>
			<th>Donor details</th>
			<th style="width: 100px;">Donation Date</th>
			<th>Payment Type</th>
			<th style='text-align: right;'>Donated Amount</th>
		</tr>
	</thead>
	<tbody>
		<?php

	$sql = "SELECT * FROM fund_collection LEFT JOIN donor ON donor.donor_id=fund_collection.donor_id where fund_collection.status='Active' AND fund_collection.fund_raiser_id='$_GET[fund_raiser_id]'";

  $sql1 = "SELECT SUM(paid_amt) as total FROM fund_collection LEFT JOIN donor ON donor.donor_id=fund_collection.donor_id where fund_collection.status='Active' AND fund_collection.fund_raiser_id='$_GET[fund_raiser_id]'";
	$qsql = mysqli_query($con,$sql);
  $qsql1=mysqli_query($con,$sql1);


$row = mysqli_fetch_assoc($qsql1);
echo "<h4>Total Amount Collected: INR ".$row['total']."</h4>";
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>";

		echo "<td style='text-align: left;'>";

		echo "<b>". $rs['name'] . "</b><br>";
		echo $rs['address'] . ",<br>". $rs['city'] . "-". $rs['pin_code'] . "<br><b>Ph No.</b>". $rs['contact_no'] . "<br>";

		echo "</td>
			<td>" . date("d-M-Y",strtotime($rs['paid_date'])) . "</td>
			<td style='text-align: left;'>";
		$payment_detail =  unserialize($rs['payment_detail']);
		echo "<b>Payment Type -</b> " . $rs['payment_type'] . "<br>";
		echo "</td>
			<th style='text-align: right;'>₹$rs[paid_amt]</th>
			</tr>";
	}
?>
	</tbody>
</table>

	</div>
</div>

</div>

</div>

</div>

<?php
include("footer.php");
?>
<script>
function confirmdel()
{
	if(confirm("Are you sure want to delete this record?") == true)
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>
