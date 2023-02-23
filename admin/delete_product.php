<?php 

if(isset($_GET['delete_product'])){
    
    $delete_id = $_GET['delete_product'];

    $pro_img1 = $_GET['pro_img1'];
    $pro_img2 = $_GET['pro_img2'];
    $pro_img3 = $_GET['pro_img3'];
    
    $delete_pro = "delete from products where product_id='$delete_id'";
    
    $run_delete = mysqli_query($con,$delete_pro);
    
    if($run_delete){
        
        unlink("../Upload/Product-Images/$pro_img1");
        unlink("../Upload/Product-Images/$pro_img2");
        unlink("../Upload/Product-Images/$pro_img3");

        echo "<script>alert('One of your product has been Deleted')</script>";
        
        echo "<script>window.open('index.php?manage_product','_self')</script>";
        
    }
    
}

?>