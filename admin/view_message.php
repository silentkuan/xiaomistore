


                <div class="content">

                    <h2 class="page-title">View Customer Message</h2>
                    <table>
                        <thead>
                                <th> Customer Name: </th>
                                <th> Customer Email: </th>
                                <th> Subject: </th>
                                <th> Message: </th>
                                <th> Send at</th>
                                <th> Action</th>
                        </thead>
                        <tbody>
                             <?php 
                                 if(isset($_GET['page'])){
            
                                    $page = $_GET['page'];

                                   
                                    
                                }else{
                                    
                                    $page=1;
                                    
                                }
                                
                                $per_page=10; 
                                $start_from = ($page-1) * $per_page;
                                
                            
                                $get_message = "select * from contact_inquiry  order by created_at desc LIMIT $start_from,$per_page";
                                
                                $run_message = mysqli_query($con,$get_message);
          
                                while($row_message=mysqli_fetch_array($run_message)){

                                    $message_id = $row_message['id'];
                                    
                                    $firstname = $row_message['fname'];
                                    
                                    $lastname = $row_message['lname'];
                                    
                                    $email = $row_message['email'];

                                    $subject = $row_message['subject'];

                                    $message = $row_message['message'];
                                    
                                    $create_at = $row_message['created_at'];
                                    
                                   
                                    
                                   
                            ?>
                        
                            <tr>
                                <td><?php echo $firstname; $lastname;?></td>
                                <td><?php echo $email;?></td>
                                <td><?php echo $subject;?></td>
                                <td><?php echo $message;?></td>
                                <td><?php echo $create_at;?></td>
                                <td><a href="index.php?view_message&delete_message=<?php echo $message_id;?>" class="delete" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
                            </tr>
                                        
                              <?php  }
                                
                            ?>
                        </tbody>
                    </table>

                    <div class="text-center mt-5">
                <div class="pagination">
               <?php 
               if (isset($_GET["page"])) { 
                $page  = $_GET["page"]; 
            } else { 
                $page=1; 
            }; 
            $per_page=10;

                    $query = "select * from contact_inquiry";

                    $result = mysqli_query($con,$query);
                                
                    $total_records = mysqli_num_rows($result);
                            
                    $total_pages = ceil($total_records / $per_page);
                    
                    for($i=1; $i<=$total_pages; $i++){
                        $active = $i == $page ? 'active' : '';
                    
                    
                    
                    if($i==1){
                        echo"<a  class='".$active."' style='width:120px' href='index.php?view_message&page=$i'> ".'First Page'." </a>";
                    }else if($i==$total_pages){
                        echo"<a  class='".$active."' style='width:120px' href='index.php?view_message&page=$i'> ".'Last Page'." </a>";

                    }else{
                        echo"<a  class='".$active."'  href='index.php?view_message&page=$i'> ".$i." </a>";
                    }
                    

                    };               
               
               
                    
               ?>
                </div>

                </div>

                <?php 

if(isset($_GET['delete_message'])){
    
    $delete_id = $_GET['delete_message'];

    
    $delete_pro = "delete from contact_inquiry where id='$delete_id'";
    
    $run_delete = mysqli_query($con,$delete_pro);
    
    if($run_delete){
        
       

        echo "<script>alert('One of your product has been Deleted')</script>";
        
        echo "<script>window.open('index.php?view_message','_self')</script>";
        
    }
    
}

?>