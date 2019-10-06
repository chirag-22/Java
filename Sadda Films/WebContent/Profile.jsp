<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      <style>
          body{
            margin:0px;
          }
          .Header{
            width:100%;
		    height:80px;
		    border:none;
		    border-bottom:solid 1px #777;
		    background:#f3f3f3
          }
          .Menu{
            width:457px;
		    height:60px;
		    padding:3px;
		    position:relative;
		    float:right;
		    top:53px;
		    right:747px;          
          }
          .Menu a{
            font-size:large;
            margin-left:10px;
		    text-decoration:none;
		    color:crimson;
		    font-family:cursive;
          }
          .Menu a:hover{
            color:blue;
          }
          .Main_cont{
            width:100%;
            height:600px;
            border:none;
          }
          .Profile{
            width:12%;
		    height:593px;
		    position:relative;
		    border-right:solid 1px;
          }
          .Profile img{
		    width:112px;
		    height:131px;
		    position:relative;
		    float:right;
		    right:55px;
		    top:12px;
		              
          }
          .Profile a{
		    top:29px;
			float:right;
			right:63px;
			position:relative;
			text-decoration:none;
			color:blue;          
          }
		 .Profile a:hover{
		    color:red;
		 }          
          .Form{
		    width:83%;
			height:593px;
			position:relative;
			float:right;
			border:none;
			top:-593px;
			right:16px;          
          }
          .Form h1{
		    float:right;
			right:568px;
			position:relative;
			font-align:center;          
          }
          .Fname label{
		    border:solid 1px;
			top:88px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
			padding-top:9px;          
          }
          .Lname label{
		    border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:84px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;          
          }
          .EID label{
            border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:80px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;
          }
          .Loct label{
		    border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:76px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;          
          }
          .Pstatus label{
		    border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:73px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;          
          }
          .Pro label{
		    border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:69px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;          
          }
          .Rate label{
		    border-left:solid 1px;
			border-right:solid 1px;
			border-bottom:solid 1px;
			top:65px;
			position:relative;
			width:474px;
			float:right;
			right:-13px;
			height:46px;
			font-size: x-large;
			font-weight: bold;
		    padding-top:9px;          
          }
          .Footer{
            width:100%;
            top:-7px;
            position:relative;
            border-top:solid 1px;
		    font-size:small;
		    font-weight:bolder;          
          }      
      </style>
</head>
<body>
    <div class="whole">
        <div class="Header">
            <div class="Menu">
               <a href="Home.jsp">Home|</a>
               <a href="About.jsp"target="_blank">About Us|</a>
               <a href="Contact.jsp"target="_blank">Contact Us|</a>
               <a href="Profile.jsp"target="_blank">Profile|</a>
               <a href="Header.html">Log out|</a>                
            </div>
            <div class="logo">
            
            </div>    
        </div>
        <div class="Main_cont">
            <div class="Profile">
               <img src="#"><a href="#">Change Profile</a>
            </div>
            <div class="Form">
            <%
            
            String query = "Select * from UserRecord where usr=?";
        try{
	    	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	        Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;DataBaseName=niit","sa","123");
         
	        PreparedStatement ps = con.prepareStatement(query);
	        ResultSet rs = ps.executeQuery();
            while(rs.next()){
        %>
         <tr>
           <td><%= rs.getString("FirstName")%></td>    	
           <td><%= rs.getString("LastName") %></td>
           <td><%= rs.getString("Email") %></td>
          </tr>  
            <%}
        }catch(Exception exp){}%>
 
               <h1> Employee Profile</h1>
			   <table>
				  <tr>
					<td class="Fname"><label>First Name:</label></td>	
				  </tr>
				  <tr>
					<td class="Lname"><label>Last Name:</label></td>
				  </tr>
				  <tr>
					<td class="EID"><label>Email:</label></td>
				  </tr>
				  <tr>
					<td class="Loct"><label>Location:</label></td>
				  </tr>
				  <tr>
					<td class="Pstatus"><label>Profile Status:</label></td>				
				  </tr>
				  <tr>
					<td class="Pro"><label>Profile Completeness:</label></td>	
				  </tr>
				  <tr>
					<td class="Rate"><label>Rating:</label></td>
				  </tr>
		
				</table>
            </div>
        </div>
        <div class="Footer">
        
        </div>
    </div>
</body>
</html>