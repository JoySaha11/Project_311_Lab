<?php 
/*
	include "db_connect.php";
*/
/*
	include "index.html";
*/
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Profile</title>
 	<style type="text/css">
 		.wrapper
 		{
 			width: 300px;
 			margin: 0 auto;
 			color: white;
 		}
 	</style>
 </head>
 <body style="background-color: #004528; ">
 	<div class="container">
 		<form action="" method="post">
 			<button class="btn btn-default" style="float: right; width: 70px;" name="submit1">Edit</button>
 		</form>
 		<div class="wrapper">
 			<?php

 				if(isset($_POST['submit1']))
 				{
 					?>
 						<script type="text/javascript">
 							window.location="edit.php"
 						</script>
 					<?php
 				}
 				$q=mysqli_query($db,"SELECT * FROM user_info where USER_ID='$user_id' ;");
 			?>
 			<h2 style="text-align: center;">My Profile Information</h2>

 			<?php
 				$row=mysqli_fetch_assoc($q);

 			?>
                 <div style="text-align: center;"> Welcome
	 			<h4>
				 
	 				<?php echo $_SESSION['login_user']; ?>
	 			</h4>
 			</div>

 			<?php
 				echo "<b>";
 				echo "<table class='table table-bordered'>";

				 echo "<tr>";
	 					echo "<td>";
	 						echo "<b> User Id: </b>";
	 					echo "</td>";

	 					echo "<td>";
	 						echo $row['USER_ID'];
	 					echo "</td>";
	 				echo "</tr>";
	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> First Name: </b>";
	 					echo "</td>";

	 					echo "<td>";
	 						echo $row['FIRST_NAME'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Last Name: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['LAST_NAME'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Email: </b>";	
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['EMAIL'];
	 					echo "</td>";
	 				echo "</tr>";

	 				echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Phone Number: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['PHONE_NUMBER'];
	 					echo "</td>";
	 				echo "</tr>";

					 echo "<tr>";
	 					echo "<td>";
	 						echo "<b> Date Of Birth: </b>";
	 					echo "</td>";
	 					echo "<td>";
	 						echo $row['DATE_OF_BIRTH'];
	 					echo "</td>";
	 				echo "</tr>";

	 				
 				echo "</table>";
 				echo "</b>";
 			?>
 		</div>
 	</div>
 </body>
 </html>
























