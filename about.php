<?php
include("header.php");

?>
<script defer src="https://friconix.com/cdn/friconix-0.2248.js"> </script>
<div id="home-owl" class="owl-carousel owl-theme">

<div class="home-item">

<div class="section-bg" style="background-image: url(img/charity/pic2.png);"></div>


<div class="home">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="home-content">
<h1>Life Of Giving</h1>
<p class="lead">Help India’s children find their true potential. Donate now!.</p>
</div>
</div>
</div>
</div>
</div>

</div>


<div class="home-item">

<div class="section-bg" style="background-image: url(img/IMG_20191210_124518.jpg);"></div>


<div class="home">
<div class="container">
<div class="row">
<div class="col-md-8">
<div class="home-content">
<h1>Life Of Giving</h1>
<p class="lead">Fundraise or donate with JustGiving, the worlds leading online fundraising platform, helping charities to make more with GiftAid.</p>
</div>
</div>
</div>
</div>
</div>

</div>

</div>

</header>


<div id="about" class="section">

<div class="container">

<div class="row">

<div class="col-md-5">
<div class="section-title">
<h2 class="title">Welcome to LIFE OF GIVING</h2>
<p class="sub-title">Life Of Giving is a charitable fundraising platform with the noble objective of providing “Ashraya” (shelter) with “Abhaya” (sense of protection), rehabilitation and care for the destitutes, the elderly, orphans, beggars, physically handicapped and mentally challenged, irrespective of cast, creed and sex.</p>
</div>
</div>

<div class="col-md-offset-1 col-md-6">
<img src="img/charity/IMG_20191210_133502.jpg" style="heighT: 300px;">
</div>

</div>

</div>

</div>


<div id="numbers" class="section">

	<div class="container">

		<div class="row">

			<div class="col-md-3 col-sm-6">
				<div class="number">
					<i class="fa fa-smile-o"></i>
					<h3>
						<?php
						$sql = "SELECT * FROM donor";
						$qsql = mysqli_query($con, $sql);
						echo mysqli_num_rows($qsql);
						?>
					</h3>
					<span>Donors</span>
				</div>
			</div>


			<div class="col-md-3 col-sm-6">
				<div class="number">
					<i class="fa fa-heartbeat"></i>
					<h3>
						<?php
						$sql = "SELECT * FROM fund_raiser";
						$qsql = mysqli_query($con, $sql);
						echo mysqli_num_rows($qsql);
						?>
					</h3>
					<span>Fund Raisers</span>
				</div>
			</div>


			<div class="col-md-3 col-sm-6">
				<div class="number">
					<i class="fa fa-money"></i>
					<h3><?php
						$sql = "SELECT sum(paid_amt) FROM fund_collection";
						$qsql = mysqli_query($con, $sql);
						$rs = mysqli_fetch_array($qsql);
						echo "₹" . round($rs[0]);
						?></h3>
					<span>Donated</span>
				</div>
			</div>


			<div class="col-md-3 col-sm-6">
				<div class="number">
					<i class="fa fa-handshake-o"></i>
					<h3><?php
						$sql = "SELECT * FROM item_donor";
						$qsql = mysqli_query($con, $sql);
						$rs = mysqli_fetch_array($qsql);
						echo mysqli_num_rows($qsql);
						?></h3>
					<span>Item donors</span>
				</div>
			</div>

		</div>

	</div>

</div>


<hr>

<div id="cta" class="section">

<div class="section-bg" style="background-image: url(img/background-1.jpg);"></div>


<div class="container">

<div class="row">

<div class="col-md-offset-2 col-md-8">
<div class="cta-content text-center">
<h1>Join with Us</h1>
<p class="lead">Your support is important to our work at this platform. There are many ways you can contribute towards our causes, and every little bit that you commit goes a long way in helping us fulfill our mission. Learn more about how you can get involved and take advantage of the opportunity to do some good.
..</p>
</div>
</div>

</div>

</div>

</div>


<div id="events" class="section">

<div class="container">

<div class="row">

<div class="col-md-8 col-md-offset-2">
<div class="section-title text-center">
<h2 class="title">LOG -Life Of Giving</h2>
</div>
</div>


<div class="col-md-6">
<div class="event">
<div class="event-img">
<img src="img/event-1.jpg" alt="">
</div>
<div class="event-content">
<h3>Help people in need</h3>
<p>Provide direct support to an individual, family or community by paying medical expenses or offering financial aid..</p>
</div>
</div>
</div>


<div class="col-md-6">
<div class="event">
<div class="event-img">
<img src="img/event-2.jpg" alt="">
</div>
<div class="event-content">
<h3>Take action in an emergency</h3>

<p>Raise funds in response to a natural disaster or humanitarian crisis. Make a difference in minutes.</p>
</div>
</div>
</div>

<div class="clearfix visible-md visible-lg"></div>


</div>

</div>

</div>

<!--values section-->
<section id="values" style="text-align: center;">
  <h4 class="sub-heading">India's most trusted giving platform</h4>
  <hr class="sub-hr">
  <div class="values_row row">
    <div class="v_col col-lg-4 col-md-6">
      <i class="fi-xwluxx-calendar-wide"></i>
      <h6 class="desc">Opt to give monthly for our missions or NGO programs and make an impact</h6>
    </div>
    <div class="v_col col-lg-4 col-md-6">
      <i class="fi-xnsuxx-heart-solid"></i>
      <h6 class="desc">Support crowdfunding campaigns with one-time donations</h6>
    </div>
    <div class="v_col col-lg-4 col-md-6">
      <i class="fi-xnsuxx-team-solid"></i>
      <h6 class="desc">Pick from causes like education, children, livelihoods, etc</h6>
    </div>
    <div class="v_col col-lg-4 col-md-6">
      <i class="fi-cwluxx-smiley-happy-wide"></i>
      <h6 class="desc">Partnered with NGOs across the country</h6>
    </div>
    <div class="v_col col-lg-4 col-md-6">
        <i class="fi-onsuxx-dot-currency"></i>
      <h6 class="desc">Donations in India to help needy , victims and underpriviledged</h6>
    </div>
    <div class="v_col col-lg-4 col-md-6">
        <i class="fi-xnsuxx-house-solid"></i>
      <h6 class="desc">we help people build themselves with their self-confidence</h6>
    </div>
  </div>
</section>


<?php
include("footer.php");
?>
