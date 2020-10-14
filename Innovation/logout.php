<?php

//logout.php


include('config.php');

session_destroy();

header('location:index.php');
//Reset OAuth access token
$google_client->revokeToken();

//Destroy entire session data.


//redirect page to index.php


?>