<?php
include("header.php");

if(isset($_GET['delid']))
{
	$sql = "DELETE FROM fund_collection WHERE fund_collection_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Fund Collection Record deleted successfully');</script>";
		echo "<script>window.location='viewfundcollection.php';</script>";
	}
	else
	{
		echo mysqli_error($con);
	}
}
?>
</header>
<div id="about" class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<div class="section-title">
			<h2 class="title text-center">View Donations</h2>
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
			<th>Fund Raiser detail</th>
			<th style="width: 120px;">Donor detail</th>
			<th style="width: 120px;">Donation Date</th>
			<th>Payment Detail</th>
			<th style='text-align: right;'>Donated Amount</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php
	$sql = "SELECT * FROM fund_collection LEFT JOIN donor ON donor.donor_id=fund_collection.donor_id LEFT JOIN fund_raiser on fund_raiser.fund_raiser_id=fund_collection.fund_raiser_id where fund_collection.status='Active'";
	if(isset($_SESSION['donor_id']))
	{
		$sql = $sql . " AND fund_collection.donor_id='$_SESSION[donor_id]'";
	}

	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td style='text-align: left;'>";

		echo "<b>".$rs['title'] . "</b><br>";
		echo "<b>Starts -</b> " . date("d-M-Y",strtotime($rs['start_date'])) . "<br>";
		echo "<b>Ends -</b> " . date("d-M-Y",strtotime($rs['end_date'])) . "<br>";

		echo "</td>
		<td style='text-align: left;'>";

		echo "<b>". $rs['name'] . "</b><br>";
		echo $rs['address'] . ",<br>". $rs['city'] . "-". $rs['pin_code'] . "<br><b>Ph No.</b>". $rs['contact_no'] . "<br>";

		echo "</td>
			<td>" . date("d-M-Y",strtotime($rs['paid_date'])) . "</td>
			<td style='text-align: left;'>";
		echo "<b>Payment ID -</b> " . $rs['payementid'] . "<br>";
		echo "</td>
			<th style='text-align: right;'>???$rs[paid_amt]</th>
			<td>
			<a href='fundcollectionreceipt.php?fund_collection_id=$rs[0]'  class='btn btn-primary'>Print</a>
			<a href='viewfundcollection.php?delid=$rs[0]' class='btn btn-danger' onclick='return confirmdel()' style='margin-top:5px' >Delete</a>

			</td>

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
