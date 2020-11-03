<?php

//logout.php


include('config.php');
include('validate.php');
session_destroy();
$email = $_SESSION['user_email'];
$Email = $_SESSION['user_email_address'];
$name = $_SESSION['user_name'];
$Name = $_SESSION['user_first_name'];
$action_time = date("Y/m/d h:m:s");
$update_trail = "insert into audit_trail(user_id,action_time,action_performed) values('$Email $email','$action_time','$Name $name Logged Out')";
if(mysqli_query($conn, $update_trail)){
    header('location:index.php');
    $google_client->revokeToken();}
    else{
     mysqli_error($conn);
   }

//Reset OAuth access token


//Destroy entire session data.


//redirect page to index.php


?>