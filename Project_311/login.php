<?php
  $db = mysqli_connect("localhost", "root", "", "fine_art");
  if(!$db){
	  echo ("Error Connection:".mysqli_connect_error());
  }
  if(isset($_POST['submit'])){
	  $user_id = $_POST['userid'];
	  $email = $_POST['email'];
	  
   $sql = "select * from user_info where USER_ID= '$user_id' and EMAIL = '$email'";
  
   header("location: profile_page.php?remarks=success");

   $result=mysqli_query($db,$sql);
 $row=mysqli_fetch_array($result);
 $active=$row['active'];
 $count=mysqli_num_rows($result);
 if($count==1) {
  $_SESSION['login_user']=$user_id;

 }
}
?>