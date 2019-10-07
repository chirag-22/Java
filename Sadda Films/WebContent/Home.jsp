<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	margin: 0px;
}

.header {
	width: 100%;
	height: 80px;
	border: none;
	border-bottom: solid 1px #777;
	background: #f3f3f3
}

.space {
	height: 60px;
	width: auto;
	border: solid 1px;
	background-color: black;
}

.Menu {
	width: 457px;
	height: 60px;
	padding: 3px;
	position: relative;
	float: right;
	top: 53px;
	right: 747px;
}

.Menu a {
	font-size: large;
	margin-left: 10px;
	text-decoration: none;
	color: crimson;
	font-family: cursive;
}

.header a:hover {
	color: blue;
}

.m {
	font-size: -webkit-xxx-large;
	color: magenta;
}

.logo {
	padding: 3px;
	position: relative;
	float: left;
	top: 9px;
	left: -1px;
	font-weight: bolder;
	font-size: large;
}
.logo a{
    color:blue;
    text-decoration:none;
    top:6px;
    right:-539px;
    position:relative;
}
#wlcm {
	position: relative;
	float: right;
	right: -163px;
	top: -24px;
	color: crimson;
	font-family: cursive;
	font-size: large;
}
.req{
position:relative;
right:-145px;
top:-22px;
}
.request{
    border:solid 1px;
    color:white;
    right:-679px;
    top:-12px;
    position:relative;
    height:10px;
}
</style>
</head>
<body>
	<div class="space">
		<div class="logo">
			<img src="logoanjaan.jpg" /> <a href="Contact.jsp">Need Help?</a>
		    <div class="request">
		    </div>
		    <div class="req">
		    <a href="#">Request Edit</a>
		</div>
		</div>
		</div>
		<div class="header"></div>
		<div class="Menu">
			<a href="Home.jsp">Home|</a> <a href="About.jsp">About Us|</a> <a
				href="Contact.jsp">Contact Us|</a> <a href="Profile.jsp">Profile|</a>
			<a href="Header.html">Log out|</a> <span id="wlcm">Welcome :
				${cookie.user.value} </span>
		</div>
	<div class="content"></div>
	<div class="footer"></div>

</body>
</html>