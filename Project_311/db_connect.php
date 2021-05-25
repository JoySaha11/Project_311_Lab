<?php
  $db = mysqli_connect("localhost", "root", "", "fine_art");
  if(isset($_POST['submit'])){
	  $user_id = $_POST['userid'];
	  $email = $_POST['email'];
  }
  ?>