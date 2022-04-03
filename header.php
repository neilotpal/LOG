<?php
if(!isset($_SESSION)) { session_start(); }
error_reporting(E_ALL & ~E_NOTICE  &  ~E_STRICT  &  ~E_WARNING);
$dt = date("Y-m-d");
$rupeesymbol= "₹";
include("databaseconnection.php");
if(isset($_POST['btndonorregister']))
{
	$sql ="INSERT INTO donor(name,email_id,password,contact_no,status) VALUES ('$_POST[name]','$_POST[donoremailid]','$_POST[donornpassword]','$_POST[contactno]','Active')";
	$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('User Registration done successfully..');</script>";
		echo "<script>window.location='index.php';</script>";
	}
}
if(isset($_POST['btndonorlogin']))
{
	$sql  ="SELECT * FROM donor WHERE email_id='$_POST[donoremail_id]' AND password='$_POST[donorpassword]' AND status='Active'";
	$qsql =mysqli_query($con,$sql);
	if(mysqli_num_rows($qsql)  == 1)
	{
		$rs = mysqli_fetch_array($qsql);
		$_SESSION['donor_id'] = $rs['donor_id'];
		echo "<script>window.location='index.php';</script>";
	}
	else
	{
		echo "<script>alert('You have entered Invalid Login credentials..');</script>";
	}
}
if(isset($_POST['btnstafflogin']))
{
	$sql  ="SELECT * FROM staff WHERE login_id='$_POST[staffloginid]' AND password='$_POST[staffpassword]' AND status='Active'";
	$qsql =mysqli_query($con,$sql);
	if(mysqli_num_rows($qsql)  == 1)
	{
		$rs = mysqli_fetch_array($qsql);
		$_SESSION['staff_id'] = $rs['staff_id'];
		echo "<script>window.location='dashboard.php';</script>";
	}
	else
	{
		echo "<script>alert('You have entered Invalid login credentials..');</script>";
	}
}
if(isset($_SESSION['donor_id']))
{
	$sqldonor  ="SELECT * FROM donor WHERE donor_id='$_SESSION[donor_id]'";
	$qsqldonor =mysqli_query($con,$sqldonor);
	echo mysqli_error($con);
	$rsdonor = mysqli_fetch_array($qsqldonor);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>LIFE OF GIVING</title>

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400%7CSource+Sans+Pro:700" rel="stylesheet">

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />
<link rel="stylesheet" href="css/font-awesome.min.css">
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/styles.css">
<link type="text/css" rel="stylesheet" href="css/jquery.dataTables.min.css" />
<style>
@import "compass/css3";

/Be sure to look into browser prefixes for keyframes and annimations/
.errorclass {
   animation-name: flash;
    animation-duration: 0.2s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    animation-play-state: running;
}

@keyframes flash {
    from {color: red;}
    to {color: black;}
}
</style>
</head>
<body>
<?php
if(basename($_SERVER['PHP_SELF']) == "index.php")
{
?>
<header id="home">
<?php
}
else
{
?>
	<header >
<?php
}
?>
<nav id="main-navbar" style="position: fixed;  top: 0;">
<div class="container">
<div class="navbar-header">

<div class="navbar-brand">
<a class="logo" href="index.php"><img src="img/charity/logos (1).png" alt="logo"></a>
<span style="font-size : 25px;"><strong>Life Of Giving</strong></span>
</div>

<button class="navbar-toggle-btn">
<i class="fa fa-bars"></i>
</button>




</div>

<ul class="navbar-menu nav navbar-nav navbar-right">

<?php
if(isset($_SESSION['donor_id']))
{
?>
<li><a href="index.php">Home</a></li>
<li><a href="about.php">About</a></li>
<li class="has-dropdown"><a href="#">Donate</a>
	<ul class="dropdown">
		<li><a href="fundraiser.php" >Donate Funds</a></li>
		<li><a href="viewfundcollection.php">Fund Donation Report</a></li>
		<li><a href="itemdonor.php">Donate Items</a></li>
		<li><a href="viewitemdonor.php">Item Donation Report</a></li>
	</ul>
</li>

<li class="has-dropdown"><a href="#">Fundraiser</a>
	<ul class="dropdown">
		<li><a href="fundmain.php">Start Your Fundraiser</a></li>
		<li><a href="viewfundmain.php">Fundraiser Report</a></li>
	</ul>
</li>

<li><a href="contact.php">Contact</a></li>


<li class="has-dropdown"><a href="#">Account</a>
	<ul class="dropdown">
		<li><a href="donorprofile.php">User Profile</a></li>
		<li><a href="donorchangepassword.php" >Change password</a></li>
		<li><a href="logout.php" >Logout</a></li>
	</ul>
</li>
<?php
}
else if(isset($_SESSION['staff_id']))
{
?>
<li><a href="dashboard.php">Dashboard</a></li>

<li class="has-dropdown"><a href="#">Fund Raiser</a>
	<ul class="dropdown">
		<li><a href="fund.php" >Add Fund Raiser</a></li>
		<li><a href="viewfundcollection.php" >View fund collection</a></li>
		<li><a href="viewfund.php" >View fund Raiser</a></li>
	</ul>
</li>


<li class="has-dropdown"><a href="#">Report</a>
	<ul class="dropdown">

		<li><a href="viewdonor.php" >View Donor</a></li>
		<li><a href="viewitemdonor.php" >View Item Donor</a></li>

	</ul>
</li>


<li class="has-dropdown"><a href="#">Account</a>
	<ul class="dropdown">
		<li><a href="staffprofile.php">Admin Profile</a></li>
		<li><a href="staffchangepassword.php" >Change password</a></li>
		<!--<li><a href="staff.php" >Add Staff  </a></li>
		<li><a href="viewstaff.php" >View profile </a></li>-->
		<li><a href="logout.php" >Logout</a></li>
	</ul>
</li>
<?php
}
else
{
?>
<li><a href="index.php">Home</a></li>
<li><a href="about.php">About</a></li>
<li><a href="fundraiser.php">Fund Donation</a></li>
<li><a href="contact.php">Contact</a></li>
<li class="has-dropdown"><a href="#">User</a>
	<ul class="dropdown">
		<li><a href="" onclick="return false;"  data-toggle="modal" data-target="#DonorLoginModal" >User Login</a></li>
		<li><a href="" onclick="return false;" data-toggle="modal" data-target="#DonorRegisterModal">User Register</a></li>
	</ul>
</li>
<?php
}
?>
</ul>

</div>
</nav>
