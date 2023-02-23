
<form name="inputic"  method= "GET"  action="">
  Enter your IC
      <input name="icNumber"  type="text" ><br>
      <input name="btnSubmit"  type="submit"  >
      
</form>
<br>
<?php
    $ic=$_GET["icNumber"];
    if ($ic!=NULL && strlen($ic)==12){
        
        $year=substr($ic,0,2);
        $month=substr($ic,2,2);
        $day=substr($ic,4,2);
        $lastdigit=substr($ic,11,1);
        
        
        $birthdate= "$day/$month/$year";

        if($lastdigit%2==1){
            $gender="male";
        }else{
            $gender="female";
        }

        if(strlen($ic)==12){
            $country="Malaysia";
        }else{
            $country="Overseas";
        }

        echo "The IC holder birthdate is: ";
        echo $birthdate."(dd/mm/yy)";
        
        echo"<br>Your gender: ";
        echo $gender;

        echo"<br>Your country: ";
        echo $country;


    }
    
?>

