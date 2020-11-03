<?php
include('nav.php');
?>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<?php
 session_start();
 include'validate.php';
if(isset($_SESSION["user_email_address"])){
 $sql = "select Country, City, Class from profile where Email ='".$_SESSION['user_email_address']."'";
 $result = $conn->query($sql);
 $row = $result->fetch_assoc();
}?>
<?php
   include'validate.php';
   if(isset($_SESSION["user_email"])){
      $sql = "select Country, City, Class from profile where Email ='".$_SESSION['user_email']."'";
      $result = $conn->query($sql);
      $row = $result->fetch_assoc();
   };
?>
<div class="shadow-lg card col-sm-5 mt-5 mx-auto white"
					style="border-radius: 10px;">
               <div class="form-group">
               <div class="input-group m-3">
<?php
 if(isset($_SESSION["user_image"])){
 echo '<img src="'.$_SESSION["user_image"].'" class="img-responsive img-circle img-thumbnail" />';
}
if(isset($_SESSION["user_img"])){
   echo '<img src="'.$_SESSION["user_img"].'" class="img-responsive img-circle img-thumbnail" />';
  }
?>
</div>
<div class="input-group ml-3 mb-3 mt-4">
<?php
if(isset($_SESSION["user_first_name"])){
    echo '<h3><b>First Name :</b> '.$_SESSION['user_first_name'].' </h3>';
}
if(isset($_SESSION["user_name"])){
    echo '<h3><b>First Name :</b> '.$_SESSION['user_name'].' </h3>';
}?>
</div>
<div class="input-group ml-3 mb-3 mt-4">
<?php
if(isset($_SESSION["user_last_name"])){
 echo '<h3><b>Last Name :</b> '.$_SESSION['user_last_name'].' </h3>';
}?>
</div>
<div class="input-group ml-3 mb-3 mt-4">
<?php
  if(isset($row)){
 echo '<h3><b>Country :</b> '.$row["Country"].' </h3>';
 echo '<h3><b>City :</b> '.$row["City"].'</h3><br>';
 echo '<h3><b>Class :</b> '.$row["Class"].' </h3><br>';}           
?>
</div>
  
   <form action="profile2.php" method="POST">
<button type="submit" class="ml-3 mr-3 mt-2 btn btn-primary form-control">Update</button>
</form>

</div>
</div>

</body>
</html>