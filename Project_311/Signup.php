<?php 
$link = mysqli_connect("localhost", "root", "", "fine_art"); 

if($link === false){
             die("ERROR: Could not connect. " . mysqli_connect_error()); 
        } 

$First_Name = mysqli_real_escape_string($link, $_REQUEST['First_Name']);
$Last_Name = mysqli_real_escape_string($link, $_REQUEST['Last_Name']); 
$email = mysqli_real_escape_string($link, $_REQUEST['email']); 
$number = mysqli_real_escape_string($link, $_REQUEST['number']); 
$birthdate = mysqli_real_escape_string($link, $_REQUEST['birthdate']);
$country= mysqli_real_escape_string($link, $_REQUEST['country']);
$joindate = mysqli_real_escape_string($link, $_REQUEST['joindate']);
$artcatagory = mysqli_real_escape_string($link, $_REQUEST['artcatagory']);   

  

$sql = "INSERT INTO user_info ( FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, DATE_OF_BIRTH, COUNTRY, JOINING_DATE, ARTIST_CATEGORY ) 
VALUES ( '$First_Name', '$Last_Name', '$email', '$number','$birthdate','$country', '$joindate', '$artcatagory')"; 

if(mysqli_query($link, $sql)){ 
        echo "Records added successfully."; 
        } else{ 
                echo "ERROR: Could not able to execute $sql. " . mysqli_error($link); 
                }   
              

                 mysqli_close($link); 
                 ?> 