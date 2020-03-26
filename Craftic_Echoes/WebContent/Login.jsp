<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container-fluid">
		<img src="Images/project-1.jpg"
			style="position: relative; top: 61px; right: -54px" />
	</div>
	<div class="container p-3 my-3 bg-dark text-white"
		style="position: relative; top: 110px; right: 226px; font-family: cursive; font-style: italic; font-size: larger;">Nothing
		can give delight as a carefully handcrafted gift. Providing you with a
		wide range of high quality handmade products in various mediums. Shop
		for quilled paper jewellery, works of art/ paintings, cards, quilling
		frames, bookmarks and so on. Email or connect through Instagram handle
		for customized products!</div>
	<div class="container  p-3 my-3 bg-dark text-white"
		style="position: relative; top: -601px; right: -293px;">
		<form action="login" method="post">
			<div class="form-group">
				<label for="email"
					style="font-size: larger; font-family: cursive; font-style: italic">Email
					address:</label> <input type="email" class="form-control"
					placeholder="Enter email" id="email">
			</div>
			<div class="form-group">
				<label for="pwd"
					style="font-size: larger; font-family: cursive; font-style: italic">Password:</label>
				<input type="password" class="form-control"
					placeholder="Enter password" id="pwd">
			</div>
			<div class="form-group form-check">
				<label class="form-check-label"> <input
					class="form-check-input" type="checkbox"> Remember me
				</label> <br> <br>
				<hr>
				<h6>NEW USER?</h6>
				<a href="Sign.jsp" style="color: white; text-decoration: none">CREATE
					NEW ACCOUNT</a>
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>

		</form>
	</div>
</body>
</html>