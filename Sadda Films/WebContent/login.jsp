<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
     <style>
         body{
         
          margin:0px;
         }
         .main_cont{
            width:100%;
            height:750px; 
            background-image: url('Img/login.jpg');
         }
         .form{
              border:none;
              width: 424px;
              height: 354px;
              float: right;
              right: 564px;
              top: 142px;
              position: relative;
              background:none;
              color:black;
              
         }
         .user input{
              border:none;
              border-radius:24px;
              float:right;
              right:65px;
              top:79px;
              position:relative;
              width: 225px;
              height: 39px;
              text-align: center;
              font-style: italic;
              font-weight: 800;
              color:blue;
              background:none;
              
         }
         .pass input{
              border:none;
              border-radius:24px;
              float:right;
              right:64px;
              top:103px;
              position:relative;
              width: 225px;
              height: 39px;
              text-align: center;
              font-style: italic;
              font-weight: 800;
              color:blue;
              background:none;
         }
         .button input{
              float:right;
              right:-122px;
              top:209px;
              position:relative;
              background:none;
              text-decoration:none;
          }
          .button input{
              width:134px;
              height:37px;
              background:none;
              font-size: larger;
              font-weight: bolder;
              color: white;
              border:none;
          }
          
     </style>
</head>
<body>
   <div class="main_cont">
         <div class="form">
          <form action="Login" method="post"> 
             <div class="user">
               <input  name="id"type="email"placeholder="UserName"required></input>
             </div>
             <div class="pass">
               <input name="pass"type="password"placeholder="Password"required></input>
             </div> 
             <div class="button">
                <input type="submit" value="LogIn">
                <h3 style = "color:white">${param.err}</h3>
            </div>     
         </form>
       </div>    
   </div>
</body>
</html>