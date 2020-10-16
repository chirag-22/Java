<?php

//index.php

//Include Configuration File
include('config.php');
include('config1.php');
$login_button = '';


if(isset($_GET["code"]))
{

 $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);


 if(!isset($token['error']))
 {
 
  $google_client->setAccessToken($token['access_token']);

 
  $_SESSION['access_token'] = $token['access_token'];


  $google_service = new Google_Service_Oauth2($google_client);

 
  $data = $google_service->userinfo->get();

 
  if(!empty($data['given_name']))
  {
   $_SESSION['user_first_name'] = $data['given_name'];
  }

  if(!empty($data['family_name']))
  {
   $_SESSION['user_last_name'] = $data['family_name'];
  }

  if(!empty($data['email']))
  {
   $_SESSION['user_email_address'] = $data['email'];
  }
  if(!empty($data['gender']))
  {
   $_SESSION['user_gender'] = $data['gender'];
  }

  if(!empty($data['picture']))
  {
   $_SESSION['user_image'] = $data['picture'];
  }
 }
}


if(!isset($_SESSION['access_token']))
{

 $login_button = '<a href="'.$google_client->createAuthUrl().'</a>';
}
?>
<?php

include 'validate.php';
if(isset($_POST['submit'])){

	$Email = $_POST['id'];
    $Password = $_POST['pass'];

$s = "select * from echoes where Email = '$Email' and Password = '$Password'";

    $result=mysqli_query($conn,$s);
    $num=mysqli_num_rows($result);
if($num == 0){
	
    header('location:Home.php');
}
}
?>

<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Innovation</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<meta name="google-signin-scope" content="profile email">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="1092644277096-fr7rjfullv9u6jgk56hi64eje3q4tg7s.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>

<script class="external"></script>
</head>
<body class="teal" style="background-color: #006d5b !important">
	<div class="container">
		<div class="row">
			<div class="mx-auto mt-4">
				<img class="" height="100" width="100" src="Logo.jpg" alt="">
			</div>
			<div class="col-sm-12">
				<div class="shadow-lg card col-sm-5 mt-5 mx-auto white"
					style="border-radius: 10px;">
					<h5 class="text-center card-title mt-4 mb-4 font-weight-bolder">Login
						to Your Account</h5>
					<div class="col-sm-10 mt-2 mx-auto">
						<div id="Error" class="alert alert-red red lighten-5 error ml-5"
							style="display: none;" role="alert">Invalid Email or
							Password!</div>
						<form action="" method="post">
							<div class="form-group">
								<div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">mail</span>
									</div>
									<input id="email" for="email" name="id" type="text"
										class="form-control" placeholder="Email Address">
									<div class="invalid-feedback mail-error text-center">Please
										enter valid email address</div>
								</div>
								<div class="input-group ml-3 mb-3 mt-4">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">lock</span>
									</div>
									<input for="password" type="password" name="pass"
										class="form-control" placeholder="Password" id="password">
									<div>
										<a class="btn material-icons transparent ml-0 passbox"
											onclick="Toggle()">remove_red_eye</a>
									</div>
									<div class="invalid-feedback text-center" id="password">Please
										enter password</div>
								</div>
								<button class="ml-3 mr-3 mt-2 btn btn-danger form-control"
									type="submit" name='submit'>Login</button>

								<div class=" text-primary">
									<input type="checkbox" style="position: relative; right: -31px"
										aria-label="Radio button for following text input" required><a
										href="Agreement.php"
										style="position: relative; right: -53px; text-decoration: none"
										data="" target="_blank">I Accept the agreement</a>
								</div>
								<a href="<?php echo $google_client->createAuthUrl() ?>"
								class="btn form-control mr-3 ml-3 mt-3 btn-danger"><i class="fa fa-google mr-2"></i>Login
								With Google</a>
							<?php
   if($login_button == '')
   {
    header('location:Home.php');
   }
   ?>
   <a href="<?php echo $login_url;?>">Login With Facebook </a>
	
						</form>


					</div>
				</div>
				<hr>
				<div class="row col-sm-12 mt-2 mx-auto">
					<div class="col-sm-6">
						<div class="row mb-4 mx-auto">
							<div class="row pb-2 mx-auto hide-on-med-and-down">
								<p>New to Website?</p>
							</div>
							<div class="row mx-auto">
								<a class="mx-auto btn btn-primary" href="Register.php">Sign
									Up</a>
							</div>
						</div>
					</div>
					<div class="col-sm-6"
						style="border-left: 1px solid rgba(0, 0, 0, .1);">
						<div class="row mb-4 mx-auto">
							<div class="row pb-2 mx-auto hide-on-med-and-down">
								<p>Forgot Password?</p>
							</div>
							<div class="row mx-auto">
								<a class="mx-auto btn btn-primary" href="recover.php">Reset Password</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function Toggle() {
			temp = document.getElementById('password');
			temp1 = document.getElementById('repassword');
			if (temp1) {
				if (temp1.type === "password") {
					temp1.type = "text";
				} else {
					temp1.type = "password";
				}
			}
			if (temp.type === "password") {
				temp.type = "text";
			} else {
				temp.type = "password";
			}
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>


</body>
</html>