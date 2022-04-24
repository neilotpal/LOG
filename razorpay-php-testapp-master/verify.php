<?php
require('config.php');
require('C:\xampp\htdocs\LOG\databaseconnection.php');


require('razorpay-php/Razorpay.php');
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

$success = true;

$error = "Payment Failed";

if (empty($_POST['razorpay_payment_id']) === false)
{
    $api = new Api($keyId, $keySecret);

    try
    {
        // Please note that the razorpay order ID must
        // come from a trusted source (session here, but
        // could be database or something else)
        $attributes = array(
            'razorpay_order_id' => $_SESSION['razorpay_order_id'],
            'razorpay_payment_id' => $_POST['razorpay_payment_id'],
            'razorpay_signature' => $_POST['razorpay_signature']
        );

        $api->utility->verifyPaymentSignature($attributes);
    }
    catch(SignatureVerificationError $e)
    {
        $success = false;
        $error = 'Razorpay Error : ' . $e->getMessage();
    }
}

if ($success === true)
{
  $fid=$_SESSION['fund_raiser_id'];
  $did=$_SESSION['donor_id'];
  $orderid=$_SESSION['razorpay_order_id'];
  $payementid=$_POST['razorpay_payment_id'];
  $name=$_SESSION['name'];
  $amount=$_SESSION['amount'];
  $ordate=date("Y-m-d");

$query="INSERT INTO `fund_collection`(`fund_raiser_id`, `donor_id`, `payementid`, `name`, `paid_amt`, `paid_date`, `status`) VALUES('$fid','$did','$payementid','$name','$amount','$ordate','Active')";
$qsql = mysqli_query($con, $query);
if (mysqli_affected_rows($con) == 1) {
  $sql = "SELECT * FROM fund_collection WHERE payementid='$payementid'";
  $qsql1 = mysqli_query($con, $sql);
  $rs = mysqli_fetch_array($qsql1);
  $insid=$rs['fund_collection_id'];
  echo "<script>alert('Fund collection process completed successfully');</script>";
  echo "<script>window.location='http://localhost/LOG/fundcollectionreceipt.php?fund_collection_id=$insid';</script>";
  }
  else{
    echo mysqli_error($con);
  }


}
else
{
    $html = "<p>Your payment failed</p>
             <p>{$error}</p>";
}

echo $html;
