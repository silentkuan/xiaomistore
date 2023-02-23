<?php
session_start();
include("../includes/db.php");
?>

<html lang="en"><head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Xiaomi Website</title>
    <link rel="icon" type="image/x-icon" href="../upload/logo/favicon.ico">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    
<link rel="stylesheet" href="style.css">

<!-- Admin Styling -->
<link rel="stylesheet" href="admin.css">

<div id="login">
    <div id="box">
        <div class="login-title">
            <img src="../upload/Xiaomi-image.png" alt="Xiaomi" style="width: 40%;">
            <h2 class="login_title">Admin Page Login</h2>
        </div>

        <form method="post">
            <div style="font-size: 20px; margin: 10px;color: white;text-align: center"></div>
            <label id="label">Username</label>
            <input id="text" type="text" name="user_name" required><br><br>
            <label id="label">Password</label>
            <input id="text" type="password" name="password" required><br><br>
            <div class="center">
                <input id="button" type="submit" value="Login">
            </div>
           
    </form></div>
    
</div>



 
</body></html>

<?php
if($_SERVER['REQUEST_METHOD'] == "POST")
{
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];
    
    if(!empty($user_name) && !empty($password) && !is_numeric($user_name))
    {   
        $query = "select * from admin where admin_username = '$user_name' ";
        $result = mysqli_query($con, $query);
        if($result)
        {
            if($result && mysqli_num_rows($result) > 0)
            {
                $user_data = mysqli_fetch_assoc($result);
                
                if($user_data['admin_password'] === $password)
                {
                    $_SESSION['admin_id'] = $user_data['admin_id']; 
                    $_SESSION['admin_name'] = $user_data['admin_name']; 

                    
                    header("Location: index.php?manage_product");
                    die;
                   
                }
            }
        }
        echo '<script>alert ("Invalid username or password!")</script>';
    }else
    {
        echo '<script>alert ("Please enter valid information!")</script>';
    }
    mysqli_close($con);
}

?>

