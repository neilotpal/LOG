<?php
session_start();
?>
<?php
include("header.php");
if(!isset($_SESSION['staff_id']))
{
	echo "<script>window.location='index.php';</script>";
}
if(isset($_GET['st']))
{
	$sqlupd = "UPDATE fund_raiser SET status='$_GET[st]' WHERE  fund_raiser_id='$_GET[fund_raiser_id]'";
	$qsqlupd = mysqli_query($con,$sqlupd);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Fundraiser request $_GET[st] ..');</script>";
		echo "<script>window.location='viewfund.php';</script>";
	}
}
if(isset($_GET['delid']))
{
	$sql = "DELETE FROM fund_raiser WHERE fund_raiser_id='$_GET[delid]'";
	$qsql = mysqli_query($con,$sql);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Fund Record deleted successfully');</script>";
		echo "<script>window.location='viewfund.php';</script>";
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
			<center><h2 class="title">View Fund</h2></center>
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
			<th>Banner</th>
			<th>Title</th>
			<th style='text-align: right;'>Fund Amount</th>
			<th>Start Date</th>
			<th>End Date</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php
	$sql = "SELECT * FROM fund_raiser";
	$qsql = mysqli_query($con,$sql);
	while($rs = mysqli_fetch_array($qsql))
	{
		echo "<tr><td style='text-align: left;'>";

if($rs['banner_img'] == "")
{
	echo "<img src='img/no-image-icon.png' style='width: 100px;height: 100px;' >";
}
else if(file_exists("imgfundraiser/".$rs['banner_img']))
{
	echo "<img src='imgfundraiser/".$rs['banner_img']. "' style='width: 100px;height: 100px;' >";
}
else
{
	echo "<img src='img/no-image-icon.png' style='width: 100px;height: 100px;' >";
}

			echo "</td>
			<td style='text-align: left; width: 250px;'>$rs[title]</td>
			<td style='text-align: right;'>₹$rs[fund_amount]</td>
			<td>" . date("d-M-Y",strtotime($rs['start_date'])) . " </td>
			<td>" . date("d-M-Y",strtotime($rs['end_date'])) . " </td>
			<td><b>$rs[status]</b>";
echo "</td>
<td>";

if($rs['status'] == 'Pending')
{

echo "<a href='viewfund.php?fund_raiser_id=$rs[0]&st=Active'  class='btn btn-success' style='margin-right:10px' onclick='return confirmst()' >Accept</a>";
echo "<a href='viewfund.php?fund_raiser_id=$rs[0]&st=Rejected'  class='btn btn-warning' onclick='return confirmst()' >Reject</a>";

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
