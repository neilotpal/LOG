<?php

require('config.php');
require('razorpay-php/Razorpay.php');
session_start();

use Razorpay\Api\Api;
$api = new Api($keyId, $keySecret);

//
// We create an razorpay order using orders api
// Docs: https://docs.razorpay.com/docs/orders
//
$fund_raiser_id=$_POST['fund_raiser_id'];
$donor_id=$_SESSION['donor_id'];
$amount=$_POST['amount'];
$name=$_POST['name'];
$email_id=$_POST['email_id'];
$contact_no=$_POST['contact_no'];

$_SESSION['fund_raiser_id']=$fund_raiser_id;
$_SESSION['donor_id']=$donor_id;
$_SESSION['amount']=$amount;
$_SESSION['name']=$name;
$_SESSION['email_id']=$email_id;
$_SESSION['contact_no']=$contact_no;

$orderData = [
    'receipt'         => 3456,
    'amount'          => $amount * 100, // 2000 rupees in paise
    'currency'        => 'INR',
    'payment_capture' => 1 // auto capture
];

$razorpayOrder = $api->order->create($orderData);

$razorpayOrderId = $razorpayOrder['id'];

$_SESSION['razorpay_order_id'] = $razorpayOrderId;

$displayAmount = $amount = $orderData['amount'];

if ($displayCurrency !== 'INR')
{
    $url = "https://api.fixer.io/latest?symbols=$displayCurrency&base=INR";
    $exchange = json_decode(file_get_contents($url), true);

    $displayAmount = $exchange['rates'][$displayCurrency] * $amount / 100;
}

$checkout = 'manual';

if (isset($_GET['checkout']) and in_array($_GET['checkout'], ['automatic', 'manual'], true))
{
    $checkout = $_GET['checkout'];
}

$data = [
    "key"               => "rzp_test_RCiRV3BO7ExUMn",
    "amount"            => $amount,
    "name"              => "Life Of Giving",
    "description"       => "Donation_ ".$fund_raiser_id,
    "image"             => "http://localhost/LOG/razorpay-php-testapp-master/loglogo.jpg",
    "prefill"           => [
    "name"              => $name,
    "email"             => $email_id,
    "contact"           => $contact_no,
    ],
    "notes"             => [
    "address"           => "Hello World",
    ],
    "theme"             => [
    "color"             => "#F37254"
    ],
    "order_id"          => $razorpayOrderId,
];

if ($displayCurrency !== 'INR')
{
    $data['display_currency']  = $displayCurrency;
    $data['display_amount']    = $displayAmount;
}

$json = json_encode($data);

require("checkout/{$checkout}.php");

?>
