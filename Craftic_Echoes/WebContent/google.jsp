<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Innovation</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script type="text/javascript" src="countries.js"></script>
</head>
<body style="background-color: #FFFF00">
	<div class="container">
	  <a href="Login.html" <%session.invalidate(); %>>Sign out</a>
		<div class="panel panel-default">
			<div class="form-group">
				<div class="row">
					<div class="mx-auto mt-4">
						<img class=" " height="100" width="100" src="Logo.jpg" alt="">
					</div>
					<div class="col-sm-12">
						<div class="shadow-lg card col-sm-5 mt-5 mx-auto white"
							style="border-radius: 10px;">
							<h5 class="text-center card-title mt-4 mb-4 font-weight-bolder">Login
								to your account</h5>
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
								value="login" type="submit" name="login">Login</button>

							<div class=" text-primary">
								<input type="checkbox" style="position: relative; right: -31px"
									aria-label="Radio button for following text input" required><a
									href="Agreement.php"
									style="position: relative; right: -53px; text-decoration: none"
									data="" target="_blank">I Accept the agreement</a>
							</div>
							<a href="<?php echo $google_client->createAuthUrl() ?>"
								class="btn btn-danger"><i class="fa fa-google mr-2"></i>Login
								With Google</a>
							<?php
   if($login_button == '')
   {
    header('location:Home.php');
   }
   else
   {
    echo '<div align="center">'.$login_button . '</div>';
   }
   ?>
							<hr>
							<div class="row col-sm-12 mt-2 mx-auto">
								<div class="col-sm-6">
									<div class="row mb-4 mx-auto">
										<div class="row pb-2 mx-auto hide-on-med-and-down">
											<p>New to Website?</p>
										</div>
										<div class="row mx-auto">
											<a class="mx-auto btn btn-primary" href="Register.jsp">Sign
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
											<a class="mx-auto btn btn-primary" href="#">Reset
												Password</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
</body>
</html>