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
    

    header('Location:Home.php');
}

 }catch(Exception $exc){
     echo $exc->getTraceAsString();
 }


?>