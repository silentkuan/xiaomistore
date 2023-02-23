<?php
$db_host="localhost";
$db_user="root";
$db_pass="";
$db_name="DB="xiaomi";

$db = new mysqli($db_host,$db_user,$db_pass,$db_name);

// Check connection
if ($db -> connect_errno) {
    echo "Failed to connect to MySQL: " . $db -> connect_error;
    exit();
}


function getPCats($showcategory)
{

    global $db;

    $get_p_cats = "select * from categories";

    $run_p_cats = mysqli_query($db, $get_p_cats);

    while ($row_p_cats = mysqli_fetch_array($run_p_cats))
    {

        $category_id = $row_p_cats['category_id'];

        $category_name = $row_p_cats['category_name'];
        if ($showcategory == 'product')
        {

            echo "<li class='lvl-1'><a href='product.php?category=$category_id'>$category_name</a></li>";

        }
        else if ($showcategory == 'header')
        {
            echo "
            <li><a href='product.php?category=$category_id'>$category_name</a></li>
            ";
        }
        else if ($showcategory == 'footer')
        {
            echo "
        
            <li><a href='product.php?category=$category_id'>$category_name</a></li>
        
        ";
        }
    }

}
function getQRcode()
{
    global $db;

    $get_products = "select * from products ORDER BY rand() ";

    $run_pro = mysqli_query($db, $get_products);

    $run_products = mysqli_query($db, $get_products);

    while ($row_products = mysqli_fetch_array($run_products))
    {

        $pro_id = $row_products['product_id'];

        $code = "http://" . $_SERVER['SERVER_NAME'] . "/product-detail.php?pro_id=$pro_id";

        echo "
        
        <div class='myQR fade'>
        
        
        <img src='https://chart.googleapis.com/chart?chs=300x300&cht=qr&chl=$code&choe=UTF-8'>
        </div>";
    }
}

function getproductrelation($show)
{

    global $db;

    if ($show == 'header' || $show == 'footer')
    {

        $get_products = "select * from products ORDER BY rand() LIMIT 0,5";

        $run_pro = mysqli_query($db, $get_products);

        $run_products = mysqli_query($db, $get_products);

        while ($row_products = mysqli_fetch_array($run_products))
        {

            $pro_id = $row_products['product_id'];

            $pro_name = $row_products['product_name'];

            echo "<li class='lvl-1'><a href='product-detail.php?pro_id=$pro_id'>$pro_name</a></li>";

        }
    }
    else if ($show == 'Home')
    {
        $get_products = "select * from products LEFT JOIN categories ON (category_id =product_category)  order by rand() LIMIT 0,8";

        $run_pro = mysqli_query($db, $get_products);

        $run_products = mysqli_query($db, $get_products);

        while ($row_products = mysqli_fetch_array($run_products))
        {

            $pro_id = $row_products['product_id'];

            $pro_name = $row_products['product_name'];

            $product_category = $row_products['product_category'];

            $pro_price = $row_products['product_price'];

            $pro_img1 = $row_products['product_img1'];

            $category_name = $row_products['category_name'];

            echo "
            <div class='card'>
            
            
            <div class='img'>
                <img src='upload/Product-Images/$pro_img1'>
            </div>
            <div class='top-text'>
                <div class='name'>
                $category_name
                </div>
                <p>
                $pro_name 
                </p>
            </div>
            <div class='bottom-text'>
                <div class='text-center'>
                    $pro_price
                </div>
                <div class='btn center'>
                    <a href='product-detail.php?pro_id=$pro_id'>Learn more</a>
                </div>
            </div>
        </div>";
        }
    }

}

function getCountProduct()
{
    global $db;
    if (empty($_GET['category']) && empty($_GET['search']))
    {

        $get_products = "select * from products ";
        $run_products = mysqli_query($db, $get_products);
    }
    else if ((isset($_GET['category'])))
    {
        $category = $_GET['category'];
        $get_products = "select * from products where product_category='$category' ";
        $run_products = mysqli_query($db, $get_products);
    }
    else if ((isset($_GET['search'])))
    {

        $search = $_GET['search'];
        $get_products = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_name  LIKE '%$search%' OR category_name  LIKE '%$search%' ";
        $run_products = mysqli_query($db, $get_products);
    }
    $count_product = mysqli_num_rows($run_products);
    return $count_product;
}

function getProduct()
{
    global $db;
    if (isset($_GET['page']))
    {

        $page = $_GET['page'];

    }
    else
    {

        $page = 1;

    }
    $per_page = 8;
    $start_from = ($page - 1) * $per_page;

    if (empty($_GET['category']) && empty($_GET['search']))
    {
        $get_products = "select * from products LEFT JOIN categories ON (category_id =product_category)  order by rand() DESC LIMIT $start_from,$per_page";
    }
    else if ((isset($_GET['category'])))
    {
        $category = $_GET['category'];
        $get_products = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_category='$category'    LIMIT $start_from,$per_page";
    }
    else if ((isset($_GET['search'])))
    {

        $search = $_GET['search'];

        $get_products = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_name  LIKE '%$search%' OR category_name  LIKE '%$search%' LIMIT $start_from,$per_page";

    }

    $run_products = mysqli_query($db, $get_products);
    $count = mysqli_num_rows($run_products);

    while ($row_products = mysqli_fetch_array($run_products))
    {

        $pro_id = $row_products['product_id'];

        $product_category = $row_products['product_category'];
        $pro_name = $row_products['product_name'];

        $pro_price = $row_products['product_price'];

        $pro_img1 = $row_products['product_img1'];

        $category_name = $row_products['category_name'];

        echo "
        <div class='card'>
        
        
        <div class='img'>
            <img src='upload/Product-Images/$pro_img1'>
        </div>
        <div class='top-text'>
            <div class='name'>
            $category_name
            </div>
            <p>
            $pro_name 
            </p>
        </div>
        <div class='bottom-text'>
            <div class=' text-center'>
                $pro_price
            </div>
            <div class='btn center'>
                <a href='product-detail.php?pro_id=$pro_id'>Learn more</a>
            </div>
        </div>
    </div>";
    }

}

function getpagination()
{
    global $db;
    if (isset($_GET["page"]))
    {
        $page = $_GET["page"];
    }
    else
    {
        $page = 1;
    };
    if (empty($_GET['category']) && empty($_GET['search']))
    {

        $query = "select * from products";
    }
    else if ((isset($_GET['category'])))
    {
        $category = $_GET['category'];
        $query = "select * from products where product_category='$category'";

    }
    else if ((isset($_GET['search'])))
    {
        $search = $_GET['search'];
        $query = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_name  LIKE '%$search%' OR category_name  LIKE '%$search%' ";
    }

    $per_page = 8;

    $result = mysqli_query($db, $query);

    $total_records = mysqli_num_rows($result);

    $total_pages = ceil($total_records / $per_page);

    for ($i = 1;$i <= $total_pages;$i++)
    {
        $active = $i == $page ? 'active' : '';

        if ($i == 1)
        {
            echo "<a  class='" . $active . "' style='width:110px' href='product.php?page=" . $i . (isset($_GET['category']) ? '&category=' . $_GET['category'] : '') . (isset($_GET['search']) ? '&search=' . $_GET['search'] : '') . "'> " . 'First Page' . " </a>";
        }
        else if ($i == $total_pages)
        {
            echo "<a  class='" . $active . "' style='width:110px' href='product.php?page=" . $i . (isset($_GET['category']) ? '&category=' . $_GET['category'] : '') . (isset($_GET['search']) ? '&search=' . $_GET['search'] : '') . "'> " . 'Last Page' . " </a>";

        }
        else
        {
            echo "<a  class='" . $active . "' href='product.php?page=" . $i . (isset($_GET['category']) ? '&category=' . $_GET['category'] : '') . (isset($_GET['search']) ? '&search=' . $_GET['search'] : '') . "'> " . $i . " </a>";
        }

    };

}

function getReviews()
{
    global $db;
    $product_id = $_GET['pro_id'];

    $get_reviews = "select * from review LEFT JOIN users ON (user_id =review_user_id) where  product_id='$product_id' ";

    $run_reviews = mysqli_query($db, $get_reviews);
    $count_reviews = mysqli_num_rows($run_reviews);
    if ($count_reviews > 0)
    {
        echo "<br><p>Total Review: $count_reviews</p>";
    }
    else
    {
        echo "<h3 class='mt-5 mb-5'>No Review...</h3>";
    }
    while ($row_reviews = mysqli_fetch_array($run_reviews))
    {

        // $username = $row_reviews['user_name'];
        $review = $row_reviews['review'];
        $username = $row_reviews['user_name'];

        if ($count_reviews > 0)
        {
            echo "
            
        <div class='customer_review'>
            
            <h3 class='mt-5 '><b>$username: </b></h3>
    
            <p class='mb-5'>$review</p>
        </div>    ";
        }

    }

}
?>
