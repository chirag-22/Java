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
</head>
<body style="background-color: #FFFF00">
	<div class="container">
		<div class="row">
			<div class="processing">
				<div class="lds-spinner"
					style="position: absolute; top: 45%; left: 40%;">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</div>
			<div class="mx-auto mt-4">
				<img class="" height="100" width="100" src="Images/Logo.jpg" alt="">
			</div>
			<div class="col-sm-12">
				<div class="shadow-lg card col-sm-5 mt-4 mx-auto white"
					style="border-radius: 10px;">
					<h5 class="text-center card-title mt-4 font-weight-bolder mb-3">Sign
						Up for an Account</h5>
					<div class="col-sm-10 mx-auto">
						<div id="Error" style="display: none;" role="alert"></div>
						<form action="Register" method="post">
							<div class="form-group">
								<div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">create</span>
									</div>
									<input id="name" for="first name" type="text"
										class="form-control" name="fname" placeholder="First Name">
									<div class="invalid-feedback text-center" id="fname">Please
										enter First Name</div>
								</div>
								<div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">create</span>
									</div>
									<input id="lname" for="Last name" type="text"
										class="form-control" name="lname" placeholder="Last Name">
									<div class="invalid-feedback text-center" id="lname">Please
										enter Last Name</div>
								</div>
								<div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">mail</span>
									</div>
									<input id="email" for="email" type="text" class="form-control"
										name="eid" placeholder="Email Address">
									<div class="invalid-feedback text-center" id="email">Please
										enter email address</div>
								</div>
								<div class="input-group ml-3 mt-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">lock</span>
									</div>
									<input for="password" type="password" class="form-control"
										name="pass" placeholder="Password" id="password" required="">
									<div>
										<a class="btn material-icons transparent ml-0 passbox"
											onclick="Toggle()">remove_red_eye</a>
									</div>
									<div id="pass-error" class="invalid-feedback text-center">Passwords
										Mismatch. Check Again!</div>
								</div>
								<div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">call</span>
									</div>
									<input id="Phone" for="phone" type="tel"
										pattern="[0-9]{3}[0-9]{2}[0-9]{3}[0-9]{2}"
										class="form-control" name="phn" placeholder="Phone Number" required>
									<div class="invalid-feedback text-center" id="phn">Please
										enter Phone Number</div>
								</div>
								<div class=" text-primary">
									<input type="checkbox" style="position:relative;right:-31px"
										aria-label="Radio button for following text input" required><a
										href="Agreement.jsp" style="position:relative; right:-53px; text-decoration:none" data="" target="_blank">I Accept the agreement</a>
								</div>
								<button id="submit-btn"
									class="ml-3 mr-3 mt-2 btn btn-danger form-control"
									type="submit">Sign Up</button>

							</div>
						</form>
					</div>
					<hr>
					<div class="row col-sm-12 mx-auto">
						<div class="row mb-3 mx-auto">
							<div class="row col-sm-12 mx-auto ">
								<p class="mx-auto">Already a Member?</p>
							</div>
							<div class="row col-sm-12 mx-auto">
								<a class="mx-auto btn btn-success"  href="Login.html">Log
									In</a>
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

	<script src="../shop/assets/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
		integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
		crossorigin="anonymous"></script>
	<script class="external"></script>

</body>
</html>