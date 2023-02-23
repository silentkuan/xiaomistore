<?php
$active = 'Home';

include ("includes/header.php");

$show = 'Home';

?>

<div id="home">

    <div class="mySlides fade">
    <!-- image from: https://i01.appmifile.com/webfile/globalimg/0320/TO-B/event/sipder-man-pc-en.jpg -->
        <img src="upload/banner/1.jpg" style="width:100%">
    </div>

    <div class="mySlides fade">
    <!-- image from: https://i01.appmifile.com/webfile/globalimg/0320/TO-B/New-Product-Banner/mi-11t-banner.jpg -->
        <img src="upload/banner/2.jpg" style="width:100%">
    </div>

    <div class="mySlides fade">
    <!-- image from: https://i01.appmifile.com/webfile/globalimg/0320/TO-B/New-Product-Banner/mi-11t-pro-banner.jpg -->
        <img src="upload/banner/3.jpg" style="width:100%">
    </div>

    <br>

    <div class="text-center">
        <span class="dot"></span>
        <span class="dot"></span>
        <span class="dot"></span>
    </div>



    <div class="home-description mt-5 p-10">
        <h1>Our Xiaomi Product</h1>
        <br>
        <h3>Xiaomi present you good products</h3><br>
    </div>
   
    <div class="container row">
        <?php getproductrelation($show); ?>

        
    </div>

    <br>
    <div class="qrcode mt-5 text-center p-10">
    <h2>You can scan this QR CODE </h2>
        <br>
    <h3>to get know about Xiaomi product randomly</h3><br>
    
    <?php

getQRcode(); ?>
   
   
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" show", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " show";
    setTimeout(showSlides, 5000);
}

// 
var qrIndex = 0;
showQR();
function showQR() {
    var i;
    var qr = document.getElementsByClassName("myQR");
    for (i = 0; i < qr.length; i++) {
        qr[i].style.display = "none";
    }
    qrIndex++;
    if (qrIndex > qr.length) {
        qrIndex = 1
    }
    
    qr[qrIndex - 1].style.display = "block";
    setTimeout(showQR, 1000);
}

</script>

</body>

</html>

<?php
include ("includes/footer.php");

?>
