<?php
	session_start();
	include("header.php");
?>
</header>
<style>
	<?php include 'css\styledonate.css' ?>
</style>
<div id="cta" class="section">
	<div class="section-bg" style="background-image: url(img/charity/donatebg.jpg);margin-top: 60px;opacity:0.9; height: 400px;"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-offset-2 col-md-8">
					<div class="cta-content text-center">
						<h1 style="background-color: orange;margin-top:150px">OUR CAMPAIGNS</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="tag-line">
			<h1 class="text-center">Donate Now! And Help Us Save Many Lives...</h1>
		</div>

		<div id="causesid" class="section">
			<div class="container">
				<div class="row">
					<?php
					$sql = "SELECT * FROM fund_raiser where status='Active'AND end_date>curdate()";
					//Retrieving the contents of the fund_raiser table
					$qsql = mysqli_query($con,$sql);

					//Fetching all the rows as arrays
					while($rs = mysqli_fetch_array($qsql))
					{
						$perc=0;
						$sqlfund_collection = "SELECT SUM(paid_amt) AS paidamt FROM fund_collection where fund_raiser_id='$rs[fund_raiser_id]' AND status='Active'";
						$qsqlfund_collection = mysqli_query($con,$sqlfund_collection);
						$rsfund_collection = mysqli_fetch_array($qsqlfund_collection);
 						$perc = round(($rsfund_collection['paidamt'] * 100 / $rs['fund_amount']),0)
					?>
					<div class="col-sm-4 cards">
						<div class="causes">
							<div class="causes-img">
								<a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs['fund_raiser_id']; ?>">
									<?php
									if($rs['banner_img'] == "")
									{
										echo "<img src='img/no-image-icon.png' style='height: 300px;'>";
									}
									else if(file_exists("imgfundraiser/".$rs['banner_img']))
									{
										echo "<img src='imgfundraiser/".$rs['banner_img']. "'  style='height: 300px;'>";
									}
									else
									{
										echo "<img src='img/no-image-icon.png' style='height: 300px;' >";
									}
								?>
							</a>
						</div>

						<div class="causes-progress" style="padding-left:12px">
							<div class="causes-progress-bar">
								<div style="width: <?php echo $perc; ?>%;">
									<span><?php echo $perc ?>%</span>
								</div>
							</div>

							<div>
								<span class="causes-raised">Donated: <strong>???<?php echo $rsfund_collection['paidamt']; ?></strong></span>
								<span class="causes-goal">Raised: <strong>???<?php echo $rs['fund_amount']; ?></strong></span>
							</div>
						</div>

						<div class="causes-content">
							<h3><a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs['fund_raiser_id']; ?>"><?php echo  $rs['title']; ?></a></h3>
							<p><?php echo  $string = substr($rs['fund_raiser_description'],0,100).'...'; ?></p>
							<a href="funraiserdetailed.php?fund_raiser_id=<?php echo $rs['fund_raiser_id']; ?>" class="primary-button causes-donate">Donate Now</a>
						</div>

					</div>
				</div>
				<?php
			}
			?>
		</div>
	</div>
</div>
</div>
<?php
include("footer.php");
?>
