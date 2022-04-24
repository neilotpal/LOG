<?php
session_start();
?>
<?php
include("header.php");

if(isset($_POST['submit']))
{
	$description = mysqli_real_escape_string($con,$_POST['fund_raiser_description']);
	$banner_img = rand() . $_FILES["banner_img"]["name"];

	$curdate=date("Y-m-d");
	move_uploaded_file($_FILES["banner_img"]["tmp_name"],"imgfundraiser/".$banner_img);
	
	if(isset($_GET['editid']))
	{
		 $sql ="UPDATE fund_raiser SET title='$_POST[title]',fund_raiser_description='$description',fund_amount='$_POST[fund_amount]',start_date='$curdate', end_date='$_POST[end_date]',status='$_POST[status]'";
		 if($_FILES["banner_img"]["name"] != "")
		 {
			 $sql = $sql . " , banner_img='$banner_img' ";
		 }
		 $sql =$sql . " WHERE fund_raiser_id='$_GET[editid]'";
		$qsql = mysqli_query($con,$sql);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Fund Raiser Request updated successfully');</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
	}
	else
	{
		$sql ="INSERT INTO  fund_raiser(title,donor_id,fund_raiser_description,fund_amount,start_date,end_date,account_no,ifsc_code,branch_name,status,banner_img) VALUES('$_POST[title]','$_SESSION[donor_id]','$description','$_POST[fund_amount]','$curdate','$_POST[end_date]','$_POST[account_no]','$_POST[ifsc_code]','$_POST[branch_name]','Pending','$banner_img')";
		$qsql = mysqli_query($con,$sql);
		if(mysqli_affected_rows($con) == 1)
		{
			echo "<script>alert('Fundraiser Request added successfully');</script>";
			//echo "<script>window.location='fund.php';</script>";
		}
		else
		{
			echo mysqli_error($con);
		}
	}
}
?>

<?php
if(isset($_GET['editid']))
{
	$sqledit = "SELECT * FROM fund_raiser WHERE fund_raiser_id='$_GET[editid]'";
	$qsqledit = mysqli_query($con,$sqledit);
	$rsedit = mysqli_fetch_array($qsqledit);
}
?>


<div id="page-header">

<div class="section-bg" style="background-image: url(img/background-2.jpg);"></div>


<div class="container">
<div class="row">
<div class="col-md-12">
<div class="header-content">
<h1>Start your Fundraiser</h1>
</div>
</div>
</div>
</div>

</div>

</header>
<style>
	<?php include 'css\stylefund.css' ?>
</style>

<div class="section" style="padding-top: 1px;">

<div class="container">

<div class="row">

<main id="" class="col-md-12">

<div class="">



<div class="">


<div class="article-comments">

<div class="media">
<div class="media-left">
<img class="media-object" src="img/bleh.jpeg"  style="width: 100px;height: 100px;">
</div>
<div class="media-body">
	<div class="media-heading">
	<h4>Fund Raiser</h4>
	</div>
	<p>
<form method="post" action="" enctype="multipart/form-data" onsubmit="return validateform()">
<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Title </div>
	<div class="col-md-10">
		<input type="text" name="title"  id="title" class="form-control" value="<?php echo $rsedit['title']; ?>">
		<span id="errtitle" class="errorclass"></span>
	</div>
</div>

<br>
<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Banner Image </div>
	<div class="col-md-10">
		<input type="file" name="banner_img"  id="banner_img" class="form-control" >
		<span id="errbanner_img" class="errorclass"></span>
<?php
if($rsedit['banner_img'] == "")
{
}
else if(file_exists("imgfundraiser/".$rsedit['banner_img']))
{
	echo "<img src='imgfundraiser/".$rsedit['banner_img']. "' style='width: 250px;height: 250px;' >";
}
?>
	</div>
</div>

<br>



<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Description</div>
	<div class="col-md-10">
	<textarea name="fund_raiser_description" id="fund_raiser_description" class="form-control" rows="5" cols="40"><?php echo $rsedit['fund_raiser_description']; ?></textarea>
	<span id="errfund_raiser_description" class="errorclass"></span>
	</div>
</div>

<br>


<br>
<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">End Date </div>
	<div class="col-md-10">
		<input type="date" name="end_date"  id="end_date" class="form-control" value="<?php echo $rsedit['end_date']; ?>" min="<?php echo date("Y-m-d"); ?>">
		<span id="errend_date" class="errorclass"></span>
	</div>
</div>

<br>
<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Amount </div>
	<div class="col-md-10">
		<input type="text" name="fund_amount"  id="fund_amount" class="form-control" value="<?php echo $rsedit['fund_amount']; ?>">
		<span id="errfund_amount" class="errorclass"></span>
	</div>
</div>

<br>

<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Account Number </div>
	<div class="col-md-10">
		<input type="text" name="account_no"  id="account_no" class="form-control" value="<?php echo $rsedit['account_no']; ?>">
		<span id="erraccount_no" class="errorclass"></span>
	</div>
</div>

<br>

<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">IFSC Code </div>
	<div class="col-md-10">
		<input type="text" name="ifsc_code"  id="ifsc_code" class="form-control" value="<?php echo $rsedit['ifsc_code']; ?>">
		<span id="errifsc_code" class="errorclass"></span>
	</div>
</div>

<br>

<div class="row">
	<div class="col-md-2" style="padding-top: 5px;">Branch Name </div>
	<div class="col-md-10">
		<input type="text" name="branch_name"  id="branch_name" class="form-control" value="<?php echo $rsedit['branch_name']; ?>">
		<span id="errbranch_name" class="errorclass"></span>
	</div>
</div>

<br>



<br>

<div class="row">
	<div class="col-md-2" style="padding-top: 5px;"></div>
	<div class="col-md-10">
		<input type="submit" name="submit" id="submit" class="form-control btn btn-success" style="width: 200px;">
	</div>
</div>
</form>
	</p>
	</div>
</div>


</div>


</div>

</main>

</div>

</div>

<br>
<br>
<div class="container">
	<h2 class="faq-heading">Frequently Asked Questions</h2>
	<hr>
	<details class="faq-card">
		<summary>What is LOG?<span class="faq-open-icon">+</span></summary>
		<span class="faq-card-spoiler">Life Of Giving(LOG) Foundation is a donation + crowdfunding platform that allows donors to donate funds that are required by the fundraisers.
	</details>
	<details class="faq-card">
		<summary>Who can start a fundraiser on LOG?<span class="faq-open-icon">+</span></summary>
		<span class="faq-card-spoiler">
			Anyone with a requirement of funds i.e., NGO's and people currently being treated for a medical condition at hospital can create a fundraiser at the platform.
		</span>
	</details>
	<details class="faq-card">
		<summary>Can the funds be transferred to my personal bank account?<span class="faq-open-icon">+</span></summary>
		<span class="faq-card-spoiler">
			At this moment, funds raised for any medical emergency can only be transferred to relevant hospital's bank account (subject to verification).
	</details>
	<details class="faq-card">
		<summary>Does LOG charge any fees?<span class="faq-open-icon">+</span></summary>
		<span class="faq-card-spoiler">
			LOG charges 0% fees for all fundraising/crowdfunding campaigns. However all online donations are subject to a small payment processing fee to cover third party and bank charges to ensure your donations are processed securely by our payment partners.
	</details>

	<details class="faq-card">
		<summary>When will I start recieving the funds collected?<span class="faq-open-icon">+</span></summary>
		<span class="faq-card-spoiler">Domestic donations are usually credited every 15 days and international donations will be credited within a maximum of 3 weeks.</span>
	</details>

	<br>
	<h2 class="faq-heading">Still have questions?</h2>
	<p class="faq-aftertext">If you cannot find answer to your question in our FAQ, you can always<br>
		<a href="contact.php">Contact Us</a>
	</p>
</div>

</div>
<?php
include("footer.php");
?>


<script>
function validateform()
{
	var i = 0;
	$('.errorclass').html('');

	var numericExp = /^[0-9]+$/;
	var alphaExp = /^[a-zA-Z]+$/;
	var alphaSpaceExp = /^[a-zA-Z\s]+$/;
	var alphaNumericExp = /^[0-9a-zA-Z]+$/;
	var alphaSpaceNumericExp = /^[0-9a-zA-Z\s]+$/;
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;

	if(document.getElementById("title").value=="")
	{
		document.getElementById("errtitle").innerHTML = "Kindly enter title";
		i = 1;
	}
	if(document.getElementById("banner_img").value=="")
	{
		document.getElementById("errbanner_img").innerHTML = "Kindly enter banner image";
		i = 1;
	}
	if(document.getElementById("fund_raiser_description").value=="")
	{
		document.getElementById("errfund_raiser_description").innerHTML = "Kindly enter fund raiser description";
		i = 1;
	}

	if(document.getElementById("end_date").value=="")
	{
		document.getElementById("errend_date").innerHTML = "Kindly enter End date";
		i = 1;
	}

	if(!document.getElementById("fund_amount").value.match(numericExp))
	{
		document.getElementById("errfund_amount").innerHTML = "Entered Fund Amount is not valid";
		i = 1;
	}
	if(document.getElementById("account_no").value=="")
	{
		document.getElementById("erraccount_no").innerHTML = "Kindly enter your Account Number";
		i = 1;
	}
	if(document.getElementById("ifsc_code").value=="")
	{
		document.getElementById("errifsc_code").innerHTML = "Kindly enter IFSC Code";
		i = 1;
	}
	if(document.getElementById("branch_name").value=="")
	{
		document.getElementById("errbranch_name").innerHTML = "Kindly enter Branch Name";
		i = 1;
	}

	if(i == 0)
	{
		return true;
	}
	else
	{
		return false;
	}
}
</script>
