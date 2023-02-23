


<div id="manage">


                <div class="content">
                     <?php if(isset($_GET['page'])){
            
                                    $page = $_GET['page'];

                                   
                                    
                                }else{
                                    
                                    $page=1;
                                    
                                }
                                
                                $per_page=5; 
                                $start_from = ($page-1) * $per_page;
                                
                                if(empty($_GET['search'])) {
                                $get_pro = "select * from products LEFT JOIN categories ON (category_id =product_category)  order by product_name desc LIMIT $start_from,$per_page";
                                $get_quantity_pro = "select * from products";
                                }else if((isset($_GET['search']))) {   
         
                                 $search= $_GET['search'];
                                 $get_pro = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_name LIKE '%$search%'  order by product_name desc LIMIT $start_from,$per_page";
                                 $get_quantity_pro = "select * from products where product_name LIKE '%$search%'";
                                }

                               
                                $run_pro = mysqli_query($con,$get_pro);
                                $run_quantity_pro = mysqli_query($con,$get_quantity_pro);
                                $count = mysqli_num_rows($run_quantity_pro); ?>

                    <h2 class="page-title">Manage Product</h2>
                    <h4 class="page-title">Product Quantity: <?php echo $count; ?></h4>
                    <?php  if($count<=0){
                        
                        echo"<div class='text-center nofound'><img src='../upload/nofound.png'></div>";
               
                            }else{?>
                    <table>
                        <thead>
                                <th> Product ID: </th>
                                <th> Product Name: </th>
                                <th> Product Categories: </th>
                                <th> Product Image: </th>
                                <th> Product Price: </th>
                                <th> Product Date: </th>
                                <th> Product Edit: </th>
                                <th> Product Delete: </th>
                        </thead>
                       
                        <tbody>
                       
                             <?php 
                                 if(isset($_GET['page'])){
            
                                    $page = $_GET['page'];

                                   
                                    
                                }else{
                                    
                                    $page=1;
                                    
                                }
                                
                                $per_page=5; 
                                $start_from = ($page-1) * $per_page;
                                
                                if(empty($_GET['search'])) {
                                $get_pro = "select * from products LEFT JOIN categories ON (category_id =product_category)  order by product_name desc LIMIT $start_from,$per_page";
                                
                                }else if((isset($_GET['search']))) {   
         
                                 $search= $_GET['search'];
                                 $get_pro = "select * from products LEFT JOIN categories ON (category_id =product_category) where product_name LIKE '%$search%'  order by product_name desc LIMIT $start_from,$per_page";
                                }
                                $run_pro = mysqli_query($con,$get_pro);
                                
          
                                while($row_pro=mysqli_fetch_array($run_pro)){
                                    
                                    $pro_id = $row_pro['product_id'];
                                    
                                    $pro_name = $row_pro['product_name'];
                                    
                                    $pro_img1 = $row_pro['product_img1'];

                                    $pro_img2 = $row_pro['product_img2'];

                                    $pro_img3 = $row_pro['product_img3'];
                                    
                                    $pro_price = $row_pro['product_price'];
                                    
                                    $pro_date = $row_pro['date'];

                                    $pro_cat = $row_pro['category_name'];
                                    
                                   
                            ?>
                            
                            <tr>
                           
                                <td><?php echo $pro_id;?></td>
                                <td><?php echo $pro_name;?></td>
                                <td><?php echo $pro_cat;?></td>
                                <td><img src="../upload/Product-Images/<?php echo $pro_img1;?>" width="100" height="100"></td>
                                <td><?php echo $pro_price;?></td>
                                <td><?php echo $pro_date;?></td>
                                <td><a href="index.php?edit_product=<?php echo $pro_id;?>" class="edit">Edit</a></td>
                                <td><a href="index.php?delete_product=<?php echo $pro_id;?>&pro_img1=<?php echo $pro_img1;?>&pro_img2=<?php echo $pro_img2;?>&pro_img3=<?php echo $pro_img3;?>" class="delete" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
                            </tr>
                                        
                              <?php  }
                                
                            ?>
                        </tbody>
                    </table>
<?php }?>
                    <div class="text-center mt-5">
                <div class="pagination">
               <?php 
               if (isset($_GET["page"])) { 
                $page  = $_GET["page"]; 
            } else { 
                $page=1; 
            }; 
            $per_page=5;

                    if (isset($_GET['search'])){
                        $query = "select * from products where product_name LIKE '%$search%'";

                    }else if(empty($_GET['search'])){

                    $query = "select * from products";}

                    $result = mysqli_query($con,$query);
                                
                    $total_records = mysqli_num_rows($result);
                            
                    $total_pages = ceil($total_records / $per_page);
                    
                    for($i=1; $i<=$total_pages; $i++){
                        $active = $i == $page ? 'active' : '';
                    
                    
                    
                    if($i==1){
                        echo"<a  class='".$active."' style='width:120px' href='index.php?manage_product&page=".$i.(isset($_GET['search']) ? '&search='.$_GET['search'] : '')."'> ".'First Page'." </a>";
                    }else if($i==$total_pages){
                        echo"<a  class='".$active."' style='width:120px' href='index.php?manage_product&page=".$i.(isset($_GET['search']) ? '&search='.$_GET['search'] : '')."'> ".'Last Page'." </a>";

                    }else{
                        echo"<a  class='".$active."'  href='index.php?manage_product&page=".$i.(isset($_GET['search']) ? '&search='.$_GET['search'] : '')."'> ".$i." </a>";
                    }
                    

                    };               
               
               
                    
               ?>
                </div>

                </div>
                </div>




                