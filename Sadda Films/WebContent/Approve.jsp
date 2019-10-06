<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
               
                function fetch()
                {
                    var req;
                    var user = document.getElementById("skills");
                    var url = "GetEmp?skills="+encodeURIComponent(user.value);
                    if(window.XMLHttpRequest)
                    {
                        req = new XMLHttpRequest();
                    }
                    else if(window.ActiveXObject)
                    {
                        req = new ActiveXObject("Microsoft.XMLHttp");
                    }
                    else
                    {
                        alert('Javascript not supported');
                    }
                    req.open("GET",url,true);
                    req.send();
                    req.onreadystatechange = callback;
                    function callback()
                    {
                        if(req.readyState==4 && req.status==200)
                        {
                            document.getElementById("op").innerHTML = req.responseText;
                        }
                    }
                }
            </script>
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
     .Logo{
		 padding:3px;
		 position:relative;
		 float:left;
		 top:9px;
		 left:-1px;
		 font-family:cursive;
		 font-weight:bolder;
		 font-size:large;
		}
		 .m{
		    font-size: -webkit-xxx-large;
		    color:magenta;
		  }		     
         .Menu {
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
           position:relative;
           float:right;
           right:-551px;
		   text-decoration:none;
		   color:crimson;
		   font-family:cursive;
         }
         .header a:hover{
		   color:blue;
		 }
		 #wlcm{
           position:relative;
           float:right;
           right:-725px;
           top:-24px;
           color:crimson;
		   font-family:cursive;
		   font-size:large;		 
		 }
		#head{
		   top: -38px;
           position: relative;
		   font-size:large;
		   color:crimson;
		   font-family:cursive;
		}
	    #pnl{
		    right: -2px;
            top: 36px;
            position: relative;
    	}		          
</style>

</head>
<body class="Table">
  <div class="Header">
      <div class="Logo">
          <span>skill</span><span class="m">M</span><span>apper</span>
      </div>
      <div class="Menu">
             <a href="Header.html">Log Out|</a>      
             <a href="Approve.jsp">Approval List|</a>
             <a href="Hired.jsp">Hired List|</a>
             <a href="#">Suspended List|</a>
             <span id="wlcm">Welcome : ${cookie.usr.value} HR</span>    
      </div>
  </div>
  <div id="pnl">
		<input type="text" id="skills" placeholder="Find Skills" onkeyup="fetch()">
		<div id="op"></div>
	</div>
  
       <h3 id="head">Approval List</h3>
       <form action="ActivateAccount" method="post">
          <table border="1">
             <tr>
                 <th>First Name</th>
                 <th>Last Name</th>
                 <th>Email</th>
                 <th>Gender</th>
                 <th>Date Of Birth</th>
                 <th>Action</th>
             </tr>
          <%
              String query = "Select * from UserRecord where status='NA'";
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
             <td><%= rs.getString("Gender") %></td>
             <td><%= rs.getString("DOB") %></td>
             <td><%= rs.getString("Role") %></td>
             <td><input type="checkbox" name="st" value="A">
               <input type="submit" value="APPROVE"/>
               </td>
            </tr>
            <input type="hidden" value=<%= rs.getString("Email")%> name="id"/>  
            <%}
        }catch(Exception exp){}%>        
        </table>
    </form>
</body>
</html>