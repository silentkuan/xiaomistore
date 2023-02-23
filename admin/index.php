<?php
session_start();
include("../includes/db.php");


    
    if(!isset($_SESSION['admin_id'])){
        
        echo "<script>window.open('login.php','_self')</script>";
        
    }



?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-icon" href="../upload/logo/favicon.ico">
    
    <!-- Font Awesome (Get Icon) -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
        integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Candal|Lora" rel="stylesheet">

    <!-- Custom Styling -->
    <link rel="stylesheet" href="style.css">

    <!-- Admin Styling -->
    <link rel="stylesheet" href="admin.css">
    <title>Admin Page</title>
</head>

<body>
    <header>
        <div class="logo">
            <h1 class="logo-text">Xiaomi</h1>
        </div>

        <ul class="nav">
            <li>
                <a href="#">
                    <i class="fa fa-user"></i>
                    <?php echo $_SESSION['admin_name'];?>

                </a>

            </li>
        </ul>
    </header>


    <!-- Admin Page Wrapper -->
    <div class="admin-wrapper">

        <!-- Left Sidebar -->
        <div class="left-sidebar">
        <form action="index.php?" method="get" class="search-box">
            <ul class="function">
           
                <li><a href="logout.php" class="logout"><i class="fa fa-door-open "></i>
                    <?php echo $_SESSION['admin_name'];?> - Logout</a></li>
                    <li class="center"><input name="search" type="text" placeholder="Search product">
                <input type="hidden"  name="manage_product" >
                <input type="submit" value="Submit"> </li>
                <br>
                <li><a class="<?php if(isset($_GET['manage_product'])){echo 'active';}?>"
                        href="index.php?manage_product">Manage Product</a></li>
                <li><a class="<?php if(isset($_GET['add_product'])){echo 'active';}?>" href="index.php?add_product">Add
                        Product</a></li>
                <li><a class="<?php if(isset($_GET['view_message'])){echo 'active';}?>"
                        href="index.php?view_message">View Message</a></li>
                
                
            </ul>

</form>
        </div>
        <!-- // Left Sidebar -->


        <!-- Admin Content -->
        <div class="admin-content">
            <?php
                
                if(isset($_GET['add_product'])){
                    
                    include("addnewproduct.php");
                    
                }   
                if(isset($_GET['manage_product'])){
                    
                    include("manageproduct.php");
                    
                }   

                if(isset($_GET['edit_product'])){
                        
                    include("edit_product.php");
                    
            }
                if(isset($_GET['delete_product'])){
                            
                    include("delete_product.php");
                    
            }

                if(isset($_GET['view_message'])){
                                
                    include("view_message.php");
                    
            }
            
                ?>
        </div>
        <!-- // Admin Content -->

    </div>
    <!-- // Page Wrapper -->
    <!-- <script src="scripts.js"></script> -->

</body>

</html>

