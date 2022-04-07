<?php
session_start();
include("header.php");
//item_donor_id st-STATUS
if(isset($_GET['st']))
{
	$sqlupd = "UPDATE item_donor SET status='$_GET[st]' WHERE  item_donor_id='$_GET[item_donor_id]'";
	$qsqlupd = mysqli_query($con,$sqlupd);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Item donation request $_GET[st] ..');</script>";
		echo "<script>window.location='viewitemdonor.php';</script>";
	}
}
if(isset($_GET['delid']))
{
	$sql = "DELETE FROM item_donor WHERE item_donor_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Item donor record deleted successfully..');</script>";
		echo "<script>window.location='viewitemdonor.php';</script>";
	}
}
?>
</header>
<div id="about" class="section">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<div class="section-title">
			<h2 class="title text-center">View Item Donations</h2>
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
			<th>Donor</th>
			<th style="width: 135px;">Pickup Location</th>
			<th>Item Detail</th>
			<th>Pickup Date Time</th>
			<th>Quantity</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
			<?php
	$sql = "SELECT item_donor.*, donor.name, donor.email_id, donor.contact_no FROM item_donor LEFT JOIN donor ON donor.donor_id=item_donor.donor_id WHERE item_donor.status != 'Deleted' ";
	if(isset($_SESSION['donor_id']))
	{
		$sql = $sql . " AND item_donor.donor_id='$_SESSION[donor_id]' ";
	}
	$qsql = mysqli_query($con,$sql);
	echo mysqli_error($con);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr>
			<td style='text-align: left;'>
			$rs[name]<br>
			<b>Email:</b> $rs[email_id] <br>
			<b>Ph. No. :</b> $rs[contact_no]
			</td>
			<td style='text-align: left;'>$rs[address]<br>$rs[city]<br> <b>PIN: </b>$rs[pin_code]</td>
			<td style='text-align: left;'>$rs[item_detail]</td>
			<td style='text-align: left;'>" . date("d-M-Y",strtotime($rs['datetime'])) . "<br>".
					date("h:i A",strtotime($rs['datetime']))
			. "</td>
			<td>$rs[quantity]</td>
			<td><b>$rs[status]</b>";
			echo "</td>
			<td>";
		if($rs['status'] == 'Pending')
		{
echo "<a href='viewitemdonor.php?delid=$rs[0]' class='btn btn-danger' onclick='return confirmdel()' >Delete</a><br>";
		}
		if($rs['status'] == 'Pending')
		{
if(isset($_SESSION['staff_id']))
{
echo "<a href='viewitemdonor.php?item_donor_id=$rs[0]&st=Accepted'  class='btn btn-success' onclick='return confirmst()' >Accept</a><br>";
echo "<a href='viewitemdonor.php?item_donor_id=$rs[0]&st=Rejected'  class='btn btn-warning' onclick='return confirmst()' >Reject</a>";
}
		}
		echo "</td></tr>";
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
function confirmst()
{
	if(confirm("Are you sure?") == true)
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>
