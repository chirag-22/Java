<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Us Page</title>
<style>
body {
	margin: 0px;
	padding: 0px;
}

.Header {
	width: 100%;
	height: 80px;
	border: none;
	border-bottom: solid 1px #777;
	background: #f3f3f3
}

.Menu {
	width: 457px;
	height: 60px;
	padding: 3px;
	position: relative;
	float: right;
	top: 54px;
	right: 747px;
}

.Menu a {
	font-size: large;
	margin-left: 10px;
	text-decoration: none;
	color: crimson;
	font-family: cursive;
}

.header {
	text-align: center;
	color: #7fffd4;
}

.header:hover {
	color: yellow;
}

.container {
	color: #fafad2;
}

.oc {
	color: #c71585;
}

.m {
	font-size: -webkit-xxx-large;
	color: magenta;
}

.image {
	position: relative;
	float: right;
}

.logo {
	padding: 3px;
	position: relative;
	float: left;
	top: 20px;
	left: -1px;
	font-family: cursive;
	font-weight: bolder;
	font-size: large;
}
.container{
     background-color:black;
     height:593px;
     width:100%;
}
</style>
</head>
<body>
	<div class="Main_cont">
		<div class="Header">
			<div class="logo">
				<span>skill</span><span class="m">M</span><span>apper</span>
			</div>
			<div class="Menu">
				<a href="Home.jsp">Home|</a> <a href="About.jsp">About Us|</a> <a
					href="Contact.jsp">Contact Us|</a> <a href="Profile.jsp">Profile|</a>
				<a href="Header.html">Log out|</a>
			</div>
		</div>
	</div>
	<div class="container">
	    <div class="header">
		<h1>
			<b><u>ABOUT US</u></b>
		</h1>
	</div>
		<h2 class="oc">Our Company</h2>
		<p class="oc1">
			In 1989, whilst working at CERN Tim Berners-Lee proposed to create a
			global hypertext project,<br> which later became known as the
			World Wide Web. During 1991 to 1993 the World Wide Web was born.<br>
			Text-only pages could be viewed using a simple line-mode browser. In
			1993 Marc Andreessen and Eric Bina.
		</p>
		<h2 class="oc">Our Resources</h2>
		<p>
			There had been no integrated approach to graphic design elements such
			as images or sounds. The Mosaic browser<br> broke this mould.[3]
			The W3C was created in October 1994 to "lead the World Wide Web to
			its full potential by<br> developing common protocols that
			promote its evolution and ensure its interoperability.
		</p>
		<h2 class="oc">Our Work</h2>
		<p>
			HTML tags without regard to the traditional standards process. For
			example, Netscape 1.1 included tags for changing<br> background
			colours and formatting text with tables on web pages. Throughout 1996
			to 1999 the browser wars began, as<br> Microsoft and Netscape
			fought for ultimate browser dominance. During<br> this time
			there were many new technologies in the field, notably Cascading
		</p>
		<h2 class="oc">Our Achivements</h2>
		<p>
			HTML tags without regard to the traditional standards process. For
			example, Netscape 1.1 included tags for changing<br> background
			colours and formatting text with tables on web pages. Throughout 1996
			to 1999 the browser wars began, as<br> Microsoft and Netscape
			fought for ultimate browser dominance.
		</p>
	</div>
</body>
</html>