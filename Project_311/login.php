<?php
  $conn = mysqli_connect("localhost", "root", "", "fine_art");
  if(!$conn){
	  echo ("Error Connection:".mysqli_connect_error());
  }
  if(isset($_POST['submit'])){
	  $user_id = $_POST['userid'];
	  $email = $_POST['email'];
	  
   $sql = "select * from user_info where USER_ID= '$user_id' and EMAIL = '$email'";
   $result = mysqli_query($conn,$sql);
   $count = mysqli_num_rows($result);
   
   if($count ==1){
	   echo "Login Success";
   }
   else{
	   echo "login failed";
   }
   
  }

?>