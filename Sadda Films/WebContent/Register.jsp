<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <style>
     body{
      margin=0px;
      background-image: url('Img/ii.jpg');
      background-repeat: no-repeat;
     
    }
    .form{
         border:solid 1px;
         width: 457px;
         height: 561px;
         float: right;
         right: 525px;
         top: 86px;
         position: relative;
         background-color:none;
         color:black;
    }
    .fname input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:130px;
         top:25px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
    .lname input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:-97px;
         top:76px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
     .user input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:130px;
         top:85px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
     .reuser input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:-97px;
         top:136px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
    .pass input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:131px;
         top:146px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
     .dob input{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:-97px;
         top:198px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
     .gender a{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:-97px;
         top:210px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
        .Role a{
         border:solid 1px;
         border-radius:24px;
         float:right;
         right:131px;
         top:223px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
    
     .condit input{
         border:none;
         border:solid 5px;
         border-radius:24px;
         float:right;
         right:130px;
         top:130px;
         position:relative;
         width:225px;
         height:39px;
         text-align:center;
         font-style:italic;
         font-weight:800;
         background:none;
    }
      .butt input{
          float:right;
          right:48px;
          top:261px;
          position:relative;
          background:none;
          text-decoration:none;
       }
       .butt input{
            width:386px;
			height:55px;
			background-color:darkorange;
			color:white;
			font-size:large;
            font-weight:bold;
       }
    </style>
</head>
<body>
    <div class="form"> 
      <form action="Register" method="post">   
       <div class="fname">
          <input type="text"name="fname"placeholder="First Name"required></input>
       </div>
       <div class="lname">
          <input type="text"name="lname"placeholder="Last Name"required></input>
       </div>
       <div class="user">
           <input type="email"name="eid"placeholder="UserName"required></input>
       </div>
       <div class="reuser">
           <input type="email"name="reid"placeholder="Re-Enter-UserName"required></input>
       </div>
       <div class="pass">
           <input type="password" name="pass"placeholder="Password"required></input>
       </div>
       <div class="dob">
           <input type="date" name="dob"required></input>
       </div>
       <div class="gender">
           <a><input type="radio" name="r3" value="Male" required><label>Male</label><input type="radio" name="r3" value="Female" required><label>Female</label></a>
       </div>
       <div class="Role">
           <a><input type="radio" name="r4" value="Employee" required><label>Employee</label><input type="radio" name="r4" value="Employer" required><label>Employer</label></a>
       </div>
      <!-- <div class="condit">
       </div> -->
       <div class="butt">
        <input type="submit" value="Create Account"/>
      </div>
     </form> 
    </div> 
</body>
</html>