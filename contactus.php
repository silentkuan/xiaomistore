<?php 
$active='contactus';
include("includes/header.php");

if (!empty($_POST['submit'])){

    $fname = $_POST['fname'];
    $lname = $_POST['lname'];
    $email = $_POST['email'];
    $subject = $_POST['subject'];
    $message = $_POST['message'];

    $sql = "INSERT INTO contact_inquiry (fname, lname, email, subject, message) 
            values ('$fname', '$lname', '$email', '$subject', '$message')";

    if (mysqli_query($con, $sql)){
        echo "<script>alert('Your message has been sent sucessfully')</script>";
        echo "<script>window.open('contactus.php','_self')</script>";
    }else{
        echo "<script>alert( 'Error : '. $sql . '<br>' . mysqli_error($con);)</script>";
    }
   
    mysqli_close($con);
}?>

<div id="contact">

    <div class="text-center mt-5">
        <h1>Contact Us</h1>
    </div>
    <div class="container">

        <div class="box">

            <form name="contact_form" action="" method="post" onsubmit="return validation()">
                <label for="fname">First Name</label>
                <input type="text" id="fname" name="fname" placeholder="Enter your first name..">
                <span class="error">Please Enter Your First Name</span>

                <br><br>
                <label for="lname">Last Name</label>
                <input type="text" id="lname" name="lname" placeholder="Your last name..">
                <span class="error">Please Enter Your Last Name</span>

                <br><br>
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Your Email Address..">
                <span class="error">Please Enter Your Email</span>
                
                <br><br>
                <label for="subject">Subject</label>
                <select id="subject" name="subject">
                    <option></option>
                    <option>Product Problems</option>
                    <option>Product details</option>
                    <option>Brand details</option>
                    <option>Store location</option>
                    
                </select>  
                <span class="error">Please Select Your Subject</span>       
                
                <br><br>
                <label for="message">Message</label>
                <textarea id="message" name="message" placeholder="Write something.." style="height:200px"></textarea>
                <span class="error">Please Enter Your Message</span>
                
                <br><br>
                <input type="checkbox" name="condition" id="condition">
                <label for="condition">Accept all terms and conditions</label>
                
                <br>
                <span class="error">Please accept all terms and conditions</span>
                <br>
                <div class="center">
                    <input type="submit" name="submit" value="Submit">
                </div>

            </form>

        </div>
    </div>
</div>

<?php 
include("includes/footer.php");

?>




<script>
    function validation(){
        var fname= document.getElementById("fname");
        var lname= document.getElementById("lname");
        var email= document.getElementById("email");
        var subject= document.getElementById("subject");
        var message= document.getElementById("message");
        var condition=document.getElementById("condition");

        if(fname.value == ""){
            fname.nextElementSibling.style.display="block";
            fname.style.border="1px solid #f00";
           
        }else{
            fname.nextElementSibling.style.display="none";
            fname.style.border="1px solid #ccc";
        }

        if(lname.value == ""){
            lname.nextElementSibling.style.display="block";
            lname.style.border="1px solid #f00";
            
        }else{
            lname.nextElementSibling.style.display="none";
            lname.style.border="1px solid #ccc";
        }

        if(email.value == ""){
            email.nextElementSibling.style.display="block";
            email.style.border="1px solid #f00";
            
        }else{
            email.nextElementSibling.style.display="none";
            email.style.border="1px solid #ccc";
        }

        if(subject.value == ""){
            subject.nextElementSibling.style.display="block";
            subject.style.border="1px solid #f00";
            
        }else{
            subject.nextElementSibling.style.display="none";
            subject.style.border="1px solid #ccc";
        }

        if(message.value == ""){
            message.nextElementSibling.style.display="block";
            message.style.border="1px solid #f00";
            
        }else{
            message.nextElementSibling.style.display="none";
            message.style.border="1px solid #ccc";
        }

        if(condition.checked == false){
            condition.nextElementSibling.nextElementSibling.nextElementSibling.style.display="block";
            condition.style.border="1px solid #f00";
            
        }else{
            condition.nextElementSibling.nextElementSibling.nextElementSibling.style.display="none";
            condition.style.border="1px solid #ccc";
        }


        if(fname.value == "" || lname.value == "" || email.value == "" 
        || subject.value == "" || message.value == "" || condition.checked ==false ){
            return false;
        }


    }

</script>