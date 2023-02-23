<?php

$active = 'Home';
include ("includes/header.php");
if ($_SERVER['REQUEST_METHOD'] == "POST")
{
    $user_name = $_POST['user_name'];
    $password = $_POST['password'];
    $confirm_password = $_POST['confirm_password'];

    if (!empty($user_name) && !empty($password) && !is_numeric($user_name) && $password == $confirm_password)
    {
        $encrypt = password_hash($password, PASSWORD_DEFAULT);
        $query = "insert into users (user_name, password) values ('$user_name', '$encrypt')";
        mysqli_query($con, $query);
        header("Location: login.php");
        die;
    }
    else
    {
        echo '<script>alert ("Please enter valid information!")</script>';
    }
}

?>

<div id="register">
    <div id="box">
    <!-- image from : https://en.wikipedia.org/wiki/File:Xiaomi_logo_(2021-).svg -->
        <img src="upload/Xiaomi-image.png" alt="Xiaomi" style="width: 40%;margin-left: 30%"> 
       
        <form method="post">
            <div style="font-size: 20px; margin: 10px;color: white;text-align: center">MI Account Register</div>
            <label id="label">Username</label>
            <input id="text" type="text" name="user_name" required><br><br>
            <label id="label">Password</label>
            <input id="text" type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br><br>
            <label id="label">Confirm Password</label>
            <input id="text" type="password" name="confirm_password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br><br>
            <div class="center">
            <input id="button" type="submit" value="Register">
            </div>
           

            <a class="link mt-5" href="login.php">Login instead</a>
        </form>
    </div>
</div>

<?php
mysqli_close($con);
include ("includes/footer.php");
?>
