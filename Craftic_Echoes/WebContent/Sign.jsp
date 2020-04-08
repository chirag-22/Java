<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container p-3 my-3 bg-dark text-white"
		style="position: relative; top: 155px; right: 10px">
		<form action="Register" method="post">
			<div class="form-group">
				<label for="first name"
					style="font-size: larger; font-family: cursive; font-style: italic">First
					Name:</label> <input type="text" class="form-control"
					placeholder="Enter First Name" required id="name" name="fname">
			</div>
			<div class="form-group">
				<label for="last name"
					style="font-size: larger; font-family: cursive; font-style: italic">Last
					Name:</label> <input type="text" class="form-control"
					placeholder="Enter Last Name" required id="Name" name="lname">
			</div>
			<div class="form-group">
				<label for="email"
					style="font-size: larger; font-family: cursive; font-style: italic">Email
					address:</label> <input type="email" class="form-control"
					placeholder="Enter email" required id="email" name="eid">
			</div>
			<div class="form-group">
				<label for="password"
					style="font-size: larger; font-family: cursive; font-style: italic">Password
					:</label> <input type="password" class="form-control"
					placeholder="Enter Password" required id="pass" name="pass">
			</div>
			<div class="form-group">
				<label for="phone"
					style="font-size: larger; font-family: cursive; font-style: italic">Phone
					Number:</label> <input type="number" class="form-control"
					placeholder="Enter Phone"  required id="email" name="phn">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>