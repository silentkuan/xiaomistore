<?php
$active = 'product';
include ("includes/header.php"); ?>
<div id="product-page">
    <div class="container">
        <div class="left-column">
            <div class="widget-title">
                <h2>Categories</h2>
            </div>

            <div class="widget-content">
                <ul class="sidebar_categories">

                    <?php getPCats($active); ?>
                </ul>
            </div>
        </div>

        <div class="right-column">
        <?php if (empty($_GET['category']) && empty($_GET['search']))
{
    echo "
            <div class='categories-description'>
                <h1>Product Page</h1>
                <br>
                <h3>Welcome to Xiaomi Website</h3><br>";
}
else if (isset($_GET['search']))
{
    echo "
                <div class='categories-description'>
                    <h1>Product Page</h1>
                    <br>
                    <h3>You are searching :</h3><br>";
}
else if (isset($_GET['category']))
{
    $category_id = $_GET['category'];

    $get_category = "select * from categories left join products on (product_category=category_id) where category_id='$category_id'";

    $run_category = mysqli_query($con, $get_category);

    $row_category = mysqli_fetch_array($run_category);

    $category_title = $row_category['category_name'];

    $category_desc = $row_category['category_desc'];

    $count = mysqli_num_rows($run_category);
    if ($count == 0)
    {
        echo "
                    <div class='categories-description'>
                        <h1>$category_title</h1>
                        <br>
                        <h3>Welcome to Xiaomi Website</h3>
                        <br>
                        <p>No Product Found In This Product Categories</p>
                        ";
    }
    else
    {
        echo "
                    <div class='categories-description'>
                        <h1>$category_title</h1>
                        <br>
                        <h3>Welcome to Xiaomi Website</h3>
                        <br>
                        <h4>$category_desc</h4><br>";
    }
}
?>
                </div>
                <div class="text-right">
                <span><b>Products Showing:
                    <?php echo getCountProduct();
if (getCountProduct() <= 0)
{

    echo "<div class='text-center'><img src='upload/nofound.png'></div>";

}
?></b></span>
            </div>
            <div class="row">
                
                <?php
getProduct();
?>


            </div>
            <div class="text-center mt-5">
                <div class="pagination">
               <?php getpagination(); ?>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<?php
mysqli_close($con);
include ("includes/footer.php"); ?>
