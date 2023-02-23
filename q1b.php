<?php

$food = array
(
array("Lettuce",36),
array("Mushroom",96),
array("Rice",100),
array("Chicken",200),
array("Noodle",300),
array("Egg",100),
);

?>

<!DOCTYPE html>
<html>
<head>
<title>Final exam Q1 b</title>
</head>
<body>

<h1>Food intake for Monday are : </h1>
<br>

<span><?php echo $food[0][0]." : ".$food[0][1]."gram"."=".($food[0][1]*0.0357)."oz"; ?></span><br>
<span><?php echo $food[1][0]." : ".$food[1][1]."gram"."=".($food[1][1]*0.0357)."oz"; ?></span><br>
<span><?php echo $food[2][0]." : ".$food[2][1]."gram"."=".($food[2][1]*0.0357)."oz"; ?></span><br>
<br>

<h1>Food intake for Tuesday are :</h1>
<br>

<span><?php echo $food[3][0]." : ".$food[3][1]."gram"."=".($food[3][1]*0.0357)."oz"; ?></span><br>
<span><?php echo $food[4][0]." : ".$food[4][1]."gram"."=".($food[4][1]*0.0357)."oz"; ?></span><br>
<span><?php echo $food[5][0]." : ".$food[5][1]."gram"."=".($food[5][1]*0.0357)."oz"; ?></span><br>

</body>
</html>


<form method="post">
        <div>
            Malaysian IC Number: 
            <input type="text" name="icNumber" placeholder="Enter your IC Number" required>
        </div>
        
        <button type="submit">Submit</button>
    </form>
