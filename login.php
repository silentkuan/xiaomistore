<?php

$active = 'Home';
include ("includes/header.php");

if ($_SERVER['REQUEST_METHOD'] == "POST")
{
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];

    if (!empty($user_name) && !empty($password) && !is_numeric($user_name))
    {
        $query = "select * from users where user_name = '$user_name' limit 1";
        $result = mysqli_query($con, $query);
        if ($result)
        {
            if ($result && mysqli_num_rows($result) > 0)
            {
                $user_data = mysqli_fetch_assoc($result);
                $verify = password_verify($password, $user_data['password']);
                if ($verify)
                {
                    $_SESSION['user_id'] = $user_data['user_id'];
                    $_SESSION['user_name'] = $user_data['user_name'];

                    header("Location: index.php");
                    die;
                }
            }
        }
        echo '<script>alert ("Invalid username or password!")</script>';
    }
    else
    {
        echo '<script>alert ("Please enter valid information!")</script>';
    }
}
?>



<div id="login">
    <div id="box">
        <div class="login-title">
             <!-- image from : https://en.wikipedia.org/wiki/File:Xiaomi_logo_(2021-).svg -->
            <img src="upload/Xiaomi-image.png" alt="Xiaomi" style="width: 40%;">
            <h2>MI Account Login</h2>
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
            <a class="link mt-5" href="signup.php">Create account</a>
    </div>
    </form>
</div>
</div>
<br><br>
<?php
mysqli_close($con);
include ("includes/footer.php");
?>
