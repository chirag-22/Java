<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <style>
       body{
         margin:0px;
       }
       .whole{
          width:100%;
          height:auto;
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
       .Main_content{
         width:100%;
         height:600px;
         border:none;
       }
       .Form {
          width:540px;
          height:465px;
          position:relative;
          top:66px;
          float:right;
          right:438px;
          
       }
       .fname input{
          border:solid 5px;
          border-radius:24px;
          float:right;
          right:306px;
          top:25px;
          position:relative;
          width:225px;
          height:39px;
          text-align:center;
          font-style:italic;
          font-weight:800;
          color:blue;
       }
       .fname input:hover{
          color:red;
       }
       .lname input{
          border:solid 5px;
          border-radius:24px;
          float:right;
          right:-164px;
          top:25px;
          position:relative;
          width:225px;
          height:39px;
          text-align:center;
          font-style:italic;
          font-weight:800;
          color:blue;
       }
       .lname input:hover{
          color:red;
       }
       .eid input{
         border:solid 5px;
         border-radius:24px;
         float:right;
         right:306px;
         top:30px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         color:blue;       
       }
       .eid input:hover{
          color:red;
       }       
       .comp input{
         border:solid 5px;
         border-radius:24px;
         float:right;
         right:72px;
         top:86px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         color:blue;         
       }
       .comp textarea:hover{
         color:red;
       }
       .message textarea{
         border:solid 5px;
         border-radius:24px;
         float:right;
         right:187px;
         top:107px;
         position:relative;
         width:343px;
         height:150px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         color:blue;       
       }
       .message textarea:hover{
          color:red;
       }       
       .button button{
		  float:right;
	      position:relative;
		  top:122px;
		  right:90px;
		  width:386px;
		  height:55px;
		  background-color:darkorange;
		  color:white;
	      font-size:large;
          font-weight:bold;
		 }       
       .Footer{
          width:100%;
          top:-7px;
          position:relative;
          border-top:solid 1px;
		  font-size:small;
		  font-weight:bolder;
       }
       .Footer a{
		  float:right;
		  right:826px;
		  top:10px;
		  position:relative;       
       }
       		  .logo{
		     padding:3px;
		     position:relative;
		     float:left;
		     top:9px;
		     left:-1px;
		     font-family:cursive;
		     font-weight:bolder;
		     font-size:large;
		     
		  }
    </style>
</head>
<body>
  <div class="Whole">
      <div class="Header">
          <div class="Menu">
               <a href="Home.jsp">Home|</a>
               <a href="About.jsp"target="_blank">About Us|</a>
               <a href="Contact.jsp"target="_blank">Contact Us|</a>
               <a href="Profile.jsp"target="_blank">Profile|</a>
               <a href="Header.html">Log out|</a>
          </div>
          <div class="logo">
                <span>skill</span><span class="m">M</span><span>apper</span>        
          </div>
      </div>
      <div class="Main_content">
      <form action="Contact" method="post">
         <div class="Form">   
            <div class="fname">
                <input type="Text" name="fname" placeholder="First Name" required>
            </div>
            <div class="lname">
                <input type="Text" name="lname" placeholder="Last Name" required>
            </div>
            <div class="eid">
                <input type="Email" name="eid" placeholder="Email Id" required>
            </div>
            <div class="comp">
                <input type="Text" name="comp" placeholder="Company" required>
            </div>
            <div class="message">
                <textarea name="msag" placeholder="Tell us more about"required></textarea>
            </div>
            <div class="button">
                <a href="Home.jsp"><button>SEND MESSAGE</button></a>
            </div>
       </div>
       </form>
      </div>
      <div class="Footer">
           For Enquiry<br>
           Contact At-9560499312
		   <a>Copyright &#169; PCA 2019</a>   
      </div>
  </div>
</body>
</html>