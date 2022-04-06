<?php
include("header.php");
?>
<link rel="stylesheet" href="css/stylecontact.css">
<div id="page-header">

<div class="section-bg" style="background-image: url(img/background-2.jpg);"></div>


<div class="container">
<div class="row">
<div class="col-md-12">
<div class="header-content">
<h1>Contact us</h1>
</div>
</div>
</div>
</div>

</div>

</header>


<div class="section">

<div class="container">

<div class="row">

<main id="main">
<h3>Contact us.</h3>
<p>Leave a message...</p>

<div class="contact_container container">

    <form action="" method="post">
        <label for="fname">Full Name</label>
        <input type="text" id="fname" name="fname" placeholder="Your name..">

        <label for="email">Email</label>
        <input type="text" id="email" name="email" placeholder="Your Email Address..">

        <label for="subject">Subject</label>
        <input type="text" id="subject" name="subject" placeholder="Subject..">

        <label for="message">Message</label>
        <textarea id="message" name="message" placeholder="Write something.." style="height:200px"></textarea>

        <input type="submit" name="submit" value="Submit">
    </form>

</div>
</main>

<?php
if (isset($_POST['submit'])){


    $fname = mysqli_real_escape_string($con,$_POST['fname']);
    $email = mysqli_real_escape_string($con,$_POST['email']);
    $subject = mysqli_real_escape_string($con,$_POST['subject']);
    $message = mysqli_real_escape_string($con,$_POST['message']);

    $sql = "INSERT INTO contact(cname,cemail, csubject, cmessage)
            values ('$fname', '$email', '$subject', '$message')";

    if (mysqli_query($con, $sql))
    {
        echo "We will contact you soon";
    }
    else
    {
        echo "Error : ". $sql . "<br>" . mysqli_error($con);
    }
}


?>

</div>

</div>

</div>

<?php
include("footer.php");
?>
