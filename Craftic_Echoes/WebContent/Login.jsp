<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: white;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
	font-family: cursive;
	font-style: italic;
	font-size: larger;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
</head>
<body>

	<nav class="navbar navbar">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

			</div>
			<div class="collapse navbar-collapse" id="myNavbar"></div>
		</div>
	</nav>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-left">
				<img src="Images/project-12.jpg">
			</div>
			<div class="col-sm-2 sidenav">
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
						<a href="Sign.jsp" style="text-decoration: none">CREATE NEW
							ACCOUNT</a>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>

				</form>
			</div>
		</div>
	</div>
      <br>
	<footer class="container-fluid text-center"> Nothing can give
		delight as a carefully handcrafted gift. Providing you with a wide
		range of high quality handmade products in various mediums. Shop for
		quilled paper jewellery, works of art/ paintings, cards, quilling
		frames, bookmarks and so on. Email or connect through Instagram handle
		for customized products! </footer>

</body>
</html>
