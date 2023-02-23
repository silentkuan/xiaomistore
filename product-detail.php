<?php
$active = 'product';
include ("includes/header.php");

if (isset($_GET['pro_id']))
{

    $product_id = $_GET['pro_id'];
    if (isset($_SESSION['user_id']))
    {
        $user_id = $_SESSION['user_id'];
    }

    $get_product = "select * from products LEFT JOIN categories ON (category_id=product_category) where product_id='$product_id'";

    $run_product = mysqli_query($con, $get_product);

    $row_product = mysqli_fetch_array($run_product);

    $product_category = $row_product['product_category'];

    $product_name = $row_product['product_name'];

    $product_price = $row_product['product_price'];

    $product_details = $row_product['product_details'];

    $product_desc = $row_product['product_desc'];

    $product_img1 = $row_product['product_img1'];

    $product_img2 = $row_product['product_img2'];

    $product_img3 = $row_product['product_img3'];

    $product_color1 = $row_product['product_color1'];

    $product_color2 = $row_product['product_color2'];

    $product_color3 = $row_product['product_color3'];

    $product_storage1 = $row_product['product_storage1'];

    $product_storage2 = $row_product['product_storage2'];

    $product_storage3 = $row_product['product_storage3'];

    $category_name = $row_product['category_name'];

}

if (isset($_POST['submit']))
{

    $review = $_POST['review'];

    $insert_review = "insert into review (product_id, review_user_id, review) values ('$product_id','$user_id','$review')";

    $run_review = mysqli_query($con, $insert_review);

    if ($run_review)
    {

        echo "<script>alert('Your review has been uploaded sucessfully')</script>";
        echo "<script>window.open('product-detail.php?pro_id=$product_id','_self')</script>";

    }
    else
    {
        echo "<script>alert( 'Error : '. $insert_review . '<br>' . mysqli_error($con);)</script>";
    }
    mysqli_close($con);
}
?>
<div id="product-details">

    <div class="container">

        <!-- Left Column / Headphones Image -->
        <div class="left-column">
            <img class="mySlides" src="upload/Product-Images/<?php echo $product_img1 ?>" alt="">
            <img class="mySlides" src="upload/Product-Images/<?php echo $product_img2 ?>" alt="">
            <img class="mySlides" src="upload/Product-Images/<?php echo $product_img3 ?>" alt="">

        </div>


        <!-- Right Column -->
        <div class="right-column">

            <!-- Product Description -->
            <div class="product-description mt-5">
           <a  style="color:blue;" href="product.php">Product</a> / 
                <a href="product.php?category=<?php echo $product_category ?>"><?php echo $category_name ?></a>
                <h1><?php echo $product_name ?></h1>
                
                <p class="mt-5"><?php echo $product_details ?></p>
            </div>

            <!-- Product Configuration -->
            <div class="product-configuration pt-50">

                <!-- Product Color -->
                <div class="product-color">
                    <span>Color</span>

                    <div class="color-choose">
                        <?php
if ($product_color1 != '')
{
    echo "  <div>
                            <input class='demo cursor' onclick='currentSlide(1)' type='radio' id='$product_color1' name='color'  checked >
                            <label for='$product_color1'><span style='background-color: $product_color1';></span ></label>
                        </div>";

}

if ($product_color2 != '')
{
    echo "
                        <div>
                            <input class='demo cursor' onclick='currentSlide(2)'  type='radio' id='$product_color2' name='color' 
                         >
                        <label for='$product_color2'><span style='background-color: $product_color2' ;></span></label>
                    </div>";
}

if ($product_color3 != '')
{
    echo "
                    <div>
                        <input class='demo cursor' onclick='currentSlide(3)' type='radio' id='$product_color3' name='color' >
                        <label for='$product_color3'><span style='background-color:$product_color3' ;></span></label>
                    </div>";
} ?>
                </div>

            </div>

            <!-- Cable Configuration -->
            <div class="cable-config">
                <span>Cable configuration</span>

                <div class="cable-choose">
                    <?php
if ($product_storage1 != '')
{
    echo "<button style='width:30%;'>$product_storage1</button>";
}

if ($product_storage2 != '')
{
    echo "<button style='width:30%;'>$product_storage2</button>";
}

if ($product_storage3 != '')
{
    echo "<button style='width:30%;'>$product_storage3</button>";
}
?>
                </div>

              
            </div>
        </div>

        <!-- Product Pricing -->
        <div class="product-price pt-50">
            <span>Price: <b><?php echo $product_price ?> </b></span>
            
        </div>
    </div>

</div>

<div class="container description">
    <h2>Product Description</h2>
    
    <p class="mt-5"><?php echo $product_desc ?></p>
</div>

<div class="container review ">

    <h2 class="mt-5">Product Review </h2>

    <?php getReviews(); ?>

    <br>
    <br>

<?php if (isset($_SESSION['user_id']))
{ ?>
        
    
    <h3 class="mt-5">You Can Give Your Review: </h3>
    <form method="post"  enctype="multipart/form-data">

        <textarea id="review" name="review" placeholder="Write something to give your review ..."
            style="height:200px"></textarea>

        <input type="submit" name="submit" value="Submit">

    </form>
<?php
} ?>
</div>
</div>
<?php
mysqli_close($con);
include ("includes/footer.php");

?>

<script>
var slideIndex = 1;
showSlides(slideIndex);



function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" show", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " show";
  
}
</script> 

