<?php 
session_start();
include("includes/db.php");
include("functions/functions.php");

$showcategory='header';
?>

<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Xiaomi Website</title>
    <link rel="stylesheet" href="css/style.css">

    <!-- image from: https://i01.appmifile.com/webfile/globalimg/favicon.ico -->
    <link rel="icon" type="image/x-icon" href="upload/logo/favicon.ico">

    <!-- Font Awesome (Get Icon) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>

<body>
    <div id="top">
        <div class="navigation">
            <nav>
                <input type="checkbox" id="show-search">
                <input type="checkbox" id="show-menu">
                <label for="show-menu" class="menu-icon"><i class="fas fa-bars"></i></label>
                <div class="content-header">
                    <div class="logo"><a href="index.php">Xiaomi</a></div>
                    <ul class="links">
                        <div class="page-list">
                        <li><a class="<?php if($active=='Home') echo"active";?>" href="index.php">Home</a></li>
                        <li>
                            <a href="product.php" class="header-link <?php if($active=='product') echo"active";?>">Product</a>
                            <input type="checkbox" id="show-product">
                            <label for="show-product">Product</label>
                            <ul>
                            <?php getproductrelation($showcategory);?>
                            </ul>
                        </li>

                        <li>
                            <a href="product.php" class="header-link ">Category</a>
                            <input type="checkbox" id="show-category">
                            <label for="show-category">Category</label>
                            <ul>
                           <?php getPCats($showcategory);?>
                            </ul>
                        </li>

                        <li><a href="about.php" class="<?php if($active=='aboutus') echo"active";?>">About Us</a></li>
                        <li><a href="contactus.php" class="<?php if($active=='contactus') echo"active";?>">Contact Us</a></li>
                        </div>
                        

                        <div class="account-list">
                        <?php if(!isset($_SESSION['user_id'])){?>
                        <li class="account" ><a href="login.php" >Login</a></li>
                        <li class="account"><a href="signup.php" >Sign up</a></li>
                       <?php }
                       else{ ?>
                        <li class="account" ><a href="logout.php" >Log out</a></li>
                      <?php } ?>
                      </div>
                    </ul>
                    <label for="show-search" class="search-icon"><i class="fas fa-search"></i></label>
                    
                </div>
               
                
                <form action="product.php" method="get" class="search-box">
                    <input name="search" type="text" placeholder="Type Something to Search..." required>
                    <button type="submit" class="search-button"><i class="fas fa-long-arrow-alt-right"></i></button>
                   
                </form>
                
            </nav>
        </div>
    </div>