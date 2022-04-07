<?php
include("header.php");
?>

<div id="home-owl" class="owl-carousel owl-theme">

	<div class="home-item">
		<div class="section-bg" style="background-image: url(img/charity/pic6.jpg); background-size:100% 100%"></div>
		<div class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="home-content">
							<h1>Donate Funds</h1>
							<p class="lead"><i>Help Unprivileged Children To Get Education...</i></p>
							<a href="fundraiser.php" type="button" class="primary-button">Donate Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="home-item">
		<div class="section-bg" style="background-image: url(img/charity/pic55.jpeg); background-size:100% 100%""></div>
		<div class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="home-content">
							<h1 >Online Fundraising</h1>
							<p class="lead"><i>Need Funds to Pay For a Medical Emergency or Social Cause?</i></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="home-item">
		<div class="section-bg" style="background-image: url(img/donate_item_carousel2.jpg); background-size:100% 100%""></div>
		<div class="home">
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<div class="home-content">
							<h1 style="color:black;">Donate Items</h1>
							<p class="lead"style="color:black;font-weight:bold" ><i>Donate items like clothes, toys, stationery etc</i></p>

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
					<h2 class="title">Welcome to Life Of Giving</h2>
					<p class="sub-title">LOG is the non-profit organization which helps old people, poor people, Mentally
						challenging peoples by either raising funds for them or by providing basic amenities for them</p>
				</div>
				<div class="about-content">
					<p>LOG exists to alleviate poverty by enabling the world to give. it is the largest and the most trusted giving platform in India. It enables individuals and organizations to raise and donate funds conveniently to any cause they care about. LOG’s community of donors have supported 2,500+ verified nonprofits, serving 15M+ people across the country. Even if any food item remains in any function people can send request to charity..</p>
					<a href="about.php" class="primary-button">Read More</a>
				</div>
			</div>

			<div class="col-md-offset-1 col-md-6">
				<a href="about.php" class="about-video" style="height: 550px;">
					<img src="img/charity/IMG_20191210_124518.jpg" alt="">
				</a>
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

<div id="cta" class="section">
	<div class="section-bg" style="background-image: url(img/charity/downloadfile.jpg);"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="cta-content text-center">
					<h1>Register</h1>
					<a href="" class="primary-button" onclick="return false" data-toggle="modal" data-target="#DonorLoginModal">Login Panel</a>
					<a href="" class="primary-button" onclick="return false" data-toggle="modal" data-target="#DonorRegisterModal">Join Us Now</a>
				</div>
			</div>

		</div>

	</div>

</div>


<div id="causes" class="section">

	<div class="container">

		<div class="row">

			<div class="col-md-8 col-md-offset-2">
				<div class="section-title text-center">
					<h2 class="title">Fund Raiser</h2>
					<p class="sub-title">Fundraising or fund-raising is the process of seeking and gathering voluntary financial contributions by engaging individuals, businesses, charitable foundations, or governmental agencies..</p>
				</div>
			</div>


			<?php
			$sql = "SELECT * FROM fund_raiser where status='Active' AND end_date>curdate() order by fund_raiser_id DESC limit 3";
			$qsql = mysqli_query($con, $sql);
			while ($rs = mysqli_fetch_array($qsql)) {
				$perc = 0;

				$sqlfund_collection = "SELECT SUM(paid_amt) FROM fund_collection where fund_raiser_id='$rs[0]' AND status='Active'";
				$qsqlfund_collection = mysqli_query($con, $sqlfund_collection);
				$rsfund_collection = mysqli_fetch_array($qsqlfund_collection);


				$perc = round(($rsfund_collection[0] * 100 / $rs['fund_amount']),0);
			?>
				<div class="col-md-4">
					<div class="causes">
						<div class="causes-img">
							<a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs[0]; ?>">
								<?php
								if ($rs['banner_img'] == "") {
									echo "<img src='img/no-image-icon.png' style='height: 300px;'>";
								} else if (file_exists("imgfundraiser/" . $rs['banner_img'])) {
									echo "<img src='imgfundraiser/" . $rs['banner_img'] . "'  style='height: 300px;'>";
								} else {
									echo "<img src='img/no-image-icon.png' style='height: 300px;' >";
								}
								?>
							</a>
						</div>
						<div class="causes-progress">
							<div class="causes-progress-bar">
								<div style="width: <?php echo $perc; ?>%;">
									<span><?php echo $perc ?>%</span>
								</div>
							</div>
							<div>
								<span class="causes-raised">Donated: <strong>₹<?php echo $rsfund_collection[0]; ?></strong></span>
								<span class="causes-goal">Raised: <strong>₹<?php echo $rs['fund_amount']; ?></strong></span>
							</div>
						</div>
						<div class="causes-content">
							<h3><a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs[0]; ?>"><?php echo  $rs['title']; ?></a></h3>
							<p><?php echo  $string = substr($rs['fund_raiser_description'], 0, 100) . '...'; ?></p>
							<a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs[0]; ?>" class="primary-button causes-donate">Donate Now</a>
						</div>
					</div>
				</div>
			<?php
			}
			?>


			<div class="clearfix visible-md visible-lg"></div>
		</div>
		<hr>
	</div>

</div>
<div id="events" class="section" style="padding:5px">

	<div class="container">

		<div class="row">

			<div class="col-md-8 col-md-offset-2">
				<div class="section-title text-center">
					<h2 class="title">LIFE OF GIVING</h2>
				</div>
			</div>


			<div class="col-md-6">
				<div class="event">
					<div class="event-img">
						<a href="#">
							<img src="img/event-1.jpg" alt="">
						</a>
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
						<a href="#">
							<img src="img/event-2.jpg" alt="">
						</a>
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





<?php
include("footer.php");
?>
