<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="countries.js"></script>
</head>
<body>
<div style='text-align:center;'>
	<script type= "text/javascript" src = "countries.js"></script>
	Select Country (with states):   <select id="country" name ="country"></select> </br></br>
	Select State: <select name ="state" id ="state"></select>  
</div>

<script language="javascript">
	populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
	populateCountries("country2");
	populateCountries("country2");
</script>
</body>
</html>