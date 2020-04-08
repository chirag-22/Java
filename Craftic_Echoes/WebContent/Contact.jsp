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
	background-color: white;
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
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Home.html"
					style="font-family: cursive; font-style: italic;">CRAFT</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="Home.html">Home</a></li>
					<li><a href="Contact.jsp">Contact</a></li>
					<li><a href="Adminlog.html">Admin</a></li>
					<li><a href="Login.jsp">Login</a></li>
					<li><a href="#"></a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Your Account</a></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav"></div>
			<div class="col-sm-8 text-left">
				<iframe
					src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3509.5821662591616!2d77.30369631503108!3d28.401685482509418!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390cdc34c9dee58d%3A0xcbfaef0853448d39!2sShree%20Banke%20Bihari%20Mandir!5e0!3m2!1sen!2sin!4v1586328511318!5m2!1sen!2sin"
					width="600" height="450" frameborder="0" style="border: 0;"
					allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>
			<div class="col-sm-2 sidenav"></div>
		</div>
	</div>
	<br>
	<footer class="container-fluid text-center"> </footer>

</body>
</html>
