
<?php $showcategory='footer'; ?>
 
 <div id="bottom">
<footer> 

  <div class="main-content-footer">
    <div class="left box">
      <h2>Xiaomi</h2>
      <div class="content-footer">
        <p>The "MI" in our logo stands for “Mobile Internet”. It also has other meanings, including "Mission Impossible", because Xiaomi faced many challenges that
          had seemed impossible to defy in our early days.</p>
       
      </div>
    </div>
    <div class="center box">
      <h2>Category</h2>
      <div class="content-footer">
      <?php getPCats($showcategory);?>
      </div>
    </div>

    <div class="center box">
      <h2>Our Product</h2>
      <div class="content-footer">
      <?php getproductrelation($showcategory);?>
              
             
      </div>
    </div>
    
    <div class="right box">
      <h2>Account</h2>
      <div class="content-footer">
      <?php if(!isset($_SESSION['user_id'])){?>
                        <li ><a href="login.php" >Login</a></li>
                        <li ><a href="register.php" >Sign up</a></li>
                       <?php }
                       else{ ?>
                        <li  ><a href="logout.php" >Log out</a></li>
                      <?php } ?>
      </div>
    </div>
  </div>
  <div class="bottom">
    <center>
      <span class="credit">Created By <a href="#">Group 14</a> </span>
    
    </center>
  </div>

</footer> 
</div>
</html>