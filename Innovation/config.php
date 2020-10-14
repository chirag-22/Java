<?php 

require_once 'vendor/autoload.php';

$google_client = new Google_Client();
$google_client->setClientId('764703774310-jutot6ua3qgm5dm930b3l8iidus6q311.apps.googleusercontent.com');
$google_client->setClientSecret('sLmqm18qZigvqWfLn4dsXTp4');
$google_client->setRedirectUri('http://localhost:7882/index.php');
$google_client->addScope('email');
$google_client->addScope('profile');

session_start();

?>
