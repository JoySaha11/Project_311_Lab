<?php 
$link = mysqli_connect("localhost", "root", "", "fine_art"); 

if($link === false){
             die("ERROR: Could not connect. " . mysqli_connect_error()); 
        } 

$name = mysqli_real_escape_string($link, $_REQUEST['name']); 
$email = mysqli_real_escape_string($link, $_REQUEST['email']);
$message = mysqli_real_escape_string($link, $_REQUEST['message']);

$sql = "INSERT INTO contact_us (NAME, EMAIL, MESSAGE) VALUES ('$name', '$email', '$message')";

if(mysqli_query($link, $sql)){ 
        echo "Records added successfully."; 
        } else{ 
                echo "ERROR: Could not able to execute $sql. " . mysqli_error($link); 
                }   
              

                 mysqli_close($link); 
                 ?> 
