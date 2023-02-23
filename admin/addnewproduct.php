

<?php 
if(isset($_POST['add'])){
    
    $product_name = $_POST['product_name'];
    $product_cat = $_POST['product_cat'];
    $product_price = $_POST['product_price'];
    $product_details = $_POST['product_details'];
    $product_desc = $_POST['product_desc'];
    
    $product_color1 = $_POST['product_color1'];
    $product_color2 = $_POST['product_color2'];
    $product_color3 = $_POST['product_color3'];

    $product_storage1 = $_POST['product_storage1'];
    $product_storage2 = $_POST['product_storage2'];
    $product_storage3 = $_POST['product_storage3'];

    



    
 

    if(!empty($_FILES["product_img1"]["name"] )){
        $product_img1 = $_FILES['product_img1']['name'];
        $extension1= pathinfo($product_img1,PATHINFO_EXTENSION);
        $random1=rand(0,10000);
        $rename1='Upload'.date('Ymd').$random1;
        $newname1=$rename1.'.'.$extension1;

        $temp_name1 = $_FILES['product_img1']['tmp_name'];
        move_uploaded_file($temp_name1,"../upload/Product-Images/$newname1");

    }else{
        $newname1=NULL;
    }

    if(!empty($_FILES["product_img2"]["name"] )){
        $product_img2 = $_FILES['product_img2']['name'];

        $extension2= pathinfo($product_img2,PATHINFO_EXTENSION);
        $random2=rand(0,10000);
        $rename2='Upload'.date('Ymd').$random2;
        $newname2=$rename2.'.'.$extension2;

        $temp_name2 = $_FILES['product_img2']['tmp_name'];
        move_uploaded_file($temp_name2,"../upload/Product-Images/$newname2");

    }else{
        $newname2=NULL;
    }


    if(!empty($_FILES["product_img3"]["name"] )){
        
        $product_img3 = $_FILES['product_img3']['name'];

        $extension3= pathinfo($product_img3,PATHINFO_EXTENSION);
        $random3=rand(0,10000);
        $rename3='Upload'.date('Ymd').$random3;
        $newname3=$rename3.'.'.$extension3;

        $temp_name3 = $_FILES['product_img3']['tmp_name'];
        move_uploaded_file($temp_name3,"../upload/Product-Images/$newname3");

    }else{
        $newname3=NULL;
    }

    $sql = "INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `date`, 
    `product_img1`, `product_img2`, `product_img3`, `product_desc`, `product_color1`, 
    `product_color2`, `product_color3`, `product_storage1`, `product_storage2`, 
    `product_storage3`, `product_details`, `product_price`) 
    VALUES (NULL, '$product_name', '$product_cat', NOW(), '$newname1', '$newname2', '$newname3',
     '$product_desc', '$product_color1', '$product_color2', '$product_color3', '$product_storage1',
      '$product_storage2', '$product_storage3', '$product_details', '$product_price');";

    if (mysqli_query($con, $sql)){
        echo "<script>alert('Product has been inserted sucessfully')</script>";
        echo "<script>window.open('index.php?add_product','_self')</script>";
    }else{
        echo "<script>alert( 'Error : '. $sql . '<br>' . mysqli_error($con);)</script>";
    }
   
 
    
   


    
}

?>

<div class="content">

    <h2 class="page-title">Add Product</h2>

    <form id="insertProduct" method="post" enctype="multipart/form-data">
        <div>
            <label>Product Name:</label>
            <input class="text-input"  name="product_name" placeholder="Example: Pocophone F2" type="text" tabindex="1" required autofocus>
        </div>

        <div>
            <label>Product Categories:</label>
            <select name="product_cat" class="text-input">
                <option> Select a Category Product </option>

                <?php 
                              
                              $get_p_cats = "select * from categories";
                              $run_p_cats = mysqli_query($con,$get_p_cats);
                              
                              while ($row_p_cats=mysqli_fetch_array($run_p_cats)){
                                  
                                  $p_cat_id = $row_p_cats['category_id'];
                                  $p_cat_name = $row_p_cats['category_name'];
                                  
                                  echo "
                                  
                                  <option value='$p_cat_id'> $p_cat_name </option>
                                  
                                  ";
                                  
                              }
                              
                              ?>
            </select>
        </div>
        <div>
            <label>Product Price:</label>
            <input class="text-input"  name="product_price" placeholder="Example: RM1999" type="text" tabindex="1" required autofocus>
        </div>

        <div>
            <label>Product Color 1:</label>
            <input class="text-input"  name="product_color1" placeholder="Example: yellow or #000" type="text" tabindex="1" required autofocus>
        </div>

        <div>
            <label>Product Color 2 (if you have):</label>
            <input class="text-input"  name="product_color2" placeholder="Example: yellow or #000" type="text" tabindex="1"  autofocus>
        </div>

        


        <div>
            <label>Product Color 3 (if you have):</label>
            <input class="text-input"  name="product_color3" placeholder="Example: yellow or #000" type="text" tabindex="1"  autofocus>
        </div>

        <div>
            <label>Product Storage 1 :</label>
            <input class="text-input"  name="product_storage1" placeholder="Example: 8GB RAM + 256GB ROM" type="text" tabindex="1"  autofocus>
        </div>

        <div>
            <label>Product Storage 2 (if you have):</label>
            <input class="text-input"  name="product_storage2" placeholder="Example: 8GB RAM + 256GB ROM" type="text" tabindex="1"  autofocus>
        </div>

        <div>
            <label>Product Storage 3 (if you have):</label>
            <input class="text-input"  name="product_storage3" placeholder="Example: 8GB RAM + 256GB ROM" type="text" tabindex="1"  autofocus>
        </div>

        <div>
            <label> Product Image 1: <small>  [follow product color]</small></label>
            <input name="product_img1" type="file" class="text-input" required>

        </div>

        <div>
        <label> Product Image 2 (if you have): <small>  [follow product color]</small></label>
            <input name="product_img2" type="file" class="text-input" >

        </div>


        <div>
        <label> Product Image 3 (if you have): <small>  [follow product color]</small></label>
            <input name="product_img3" type="file" class="text-input" >

        </div>

        <div>
            <label>Product Simple Details:</label>
            <input class="text-input"  name="product_details" placeholder="Example: The Xiaomi Poco F3 is powered by a Qualcomm SM8250-AC Snapdragon 870 5G (7 nm) CPU processor with 128GB, 6GB RAM." type="text" tabindex="1" required autofocus>
        </div>

        <div>
            <label>Product Description:</label>
            <textarea class="text-input" style="height:200px;" name="product_desc" placeholder="Example:

Dimensions	163.7 x 76.4 x 7.8 mm (6.44 x 3.01 x 0.31 in)
Weight	196 g (6.91 oz)
Build	Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame
SIM	        Dual SIM (Nano-SIM, dual stand-by)
Type	AMOLED, 120Hz, HDR10+, 1300 nits (peak)
Size	        6.67 inches, 107.4 cm2 (~85.9% screen-to-body ratio)
Resolution	1080 x 2400 pixels, 20:9 ratio (~395 ppi density)
Protection	Corning Gorilla Glass 5
OS	        Android 11, MIUI 12 for POCO
Chipset	Qualcomm SM8250-AC Snapdragon 870 5G (7 nm)
CPU	Octa-core (1x3.2 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.80 GHz Kryo 585)
GPU	Adreno 650
Type	Li-Po 4520 mAh, non-removable
Charging	Fast charging 33W, 100% in 52 min (advertised)
Power Delivery 3.0
Quick Charge 3+
Sensors	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, color spectrum" tabindex="5" required></textarea>
        </div>

        <div>
            <button name="add" type="submit" class="btn btn-big">Add Product</button>
        </div>
    </form>

</div>

