<?php

require_once 'vendor/autoload.php';


$fb = new Facebook\Facebook([
     
    'app_id' => '3687327537983036',
    'app_secret' => '65aacb0ae1c6eab8a1f56b9b319a8af6',
    'default_graph_version' => 'v8.0'

]);

$helper = $fb->getRedirectLoginHelper();
$login_url = $helper->getLoginUrl("http://localhost:7882/index.php");

 try{

    $accessToken = $helper->getAccessToken();
if(isset($accessToken)){
    $_SESSION['access_token'] =(string)$accessToken;
    
    $graph_response = $fb->get("/me?fields=name,email",$accessToken);

    $facebook_user_info = $graph_response->getGraphUser();

    if(!empty($facebook_user_info['id'])){
        $_SESSION['user_image']='http://graph.facebook.com/'.$facebook_user_info['id'].'/picture';
   }
    if(!empty($facebook_user_info['name'])){
         $_SESSION['user_name'] = $facebook_user_info['name'];
    }
    if(!empty($facebook_user_info['email'])){
        $_SESSION['user_email'] = $facebook_user_info['email'];
   }
   include'validate.php';
   $Email = $_SESSION['user_email'];
   $Name = $_SESSION['user_name'];
   $action_time = date("Y/m/d h:m:s");
   $update_trail = "insert into audit_trail(user_id,action_time,action_performed) values('$Email','$action_time','$Name Logined')";
   if(mysqli_query($conn, $update_trail)){
    header('location:Home.php');}
   else{
     mysqli_error($conn);
   }
}

 }catch(Exception $exc){
     echo $exc->getTraceAsString();
 }


?>