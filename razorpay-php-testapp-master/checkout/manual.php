<style>
body{
  color: white;
  text-align: center;
}
#rzp-button1{
  padding: 20px 20px;
  background-color: green;
  color: white;
  font-weight: bold;
}
.imagerz{
  padding: 10px;
  border: 5px solid black;
}
</style>
<body>

<div class="rptext" style="margin-top:-100px">
  <img src="loglogo.jpg" alt="Razorpay Support" width="200" height="100"></div>
  <h3 style="color:red">LIFE OF GIVING</h3>
<h1 style="color:black">Click on Below Button to proceed...</h1>
<button id="rzp-button1">Donate with Razorpay</button><br><br>
<img src="razorpay-img.png" alt="Razorpay Support" width="900" height="300" class="imagerz"></div>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<form name='razorpayform' action="verify.php" method="POST">
    <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id">
    <input type="hidden" name="razorpay_signature"  id="razorpay_signature" >
</form>
<script>
// Checkout details as a json
var options = <?php echo $json?>;

/**
 * The entire list of Checkout fields is available at
 * https://docs.razorpay.com/docs/checkout-form#checkout-fields
 */
options.handler = function (response){
    document.getElementById('razorpay_payment_id').value = response.razorpay_payment_id;
    document.getElementById('razorpay_signature').value = response.razorpay_signature;
    document.razorpayform.submit();
};

// Boolean whether to show image inside a white frame. (default: true)
options.theme.image_padding = false;

options.modal = {
    ondismiss: function() {
        console.log("This code runs when the popup is closed");
    },
    // Boolean indicating whether pressing escape key
    // should close the checkout form. (default: true)
    escape: true,
    // Boolean indicating whether clicking translucent blank
    // space outside checkout form should close the form. (default: false)
    backdropclose: false
};

var rzp = new Razorpay(options);

document.getElementById('rzp-button1').onclick = function(e){
    rzp.open();
    e.preventDefault();
}
</script>
</body>
