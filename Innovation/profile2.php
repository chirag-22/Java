<?php
session_start();
if(isset($_SESSION["user_first_name"])){
    include'validate.php';
$Image = $_SESSION['user_img'];
$Firstname = $_SESSION['user_first_name'];
$Lastname = $_SESSION['user_last_name'];
$Email = $_SESSION['user_email_address'];
        $insertquery="insert into profile(Image,FirstName,LastName,Email)values('$Image','$Firstname','$Lastname','$Email')";
		$iquery=mysqli_query($conn, $insertquery);
}

if(isset($_SESSION["user_name"])){
  include'validate.php';
  $img = $_SESSION['user_image'];
  $Name = $_SESSION['user_name'];
  $Email = $_SESSION['user_email'];
    $insertquery="insert into profile(Image,FirstName,Email)values('$img','$Name','$Email')";
    $iquery=mysqli_query($conn,$insertquery);
}
if(isset($_POST['Submit'])){
  header('location:profile.php');
}
if(isset($_POST['submit'])){
    include'validate.php';
    if(isset($_GET['token'])){
      $ID= $_GET['token'];
    }
	
    $Country = mysqli_real_escape_string($conn , $_POST ['country']);
    $City = mysqli_real_escape_string($conn , $_POST ['state']);
    $Class = strval(mysqli_real_escape_string($conn , $_POST ['class']));
    $data_query = "select * from profile where Email = '".$Email."'";
    $data = mysqli_fetch_assoc(mysqli_query($conn,$data_query));
    $item_affected = '';
    $old_value = '';
    $new_value = '';
    if($Country!==$data['Country']){$item_affected .= '  | country name | '; $new_value .= '  | '.$Country.' | ';$old_value .= ' | '.$data['Country'].'  | ';}
    if($City!== $data['City']){$item_affected .= ' | City name | ';$new_value .= ' | '.$City.' | ';$old_value .= ' | '.$data['City'].' | ';}
    if($Class!==strval($data['Class'])){$item_affected .=  ' | Class name  | '; $new_value .= ' | '.$Class.'  | ';$old_value .= '  | '.$data['Class'].' | ';}
    $action_time = date("Y/m/d h:m:s");
    $updatequery = "update profile set Country ='".$Country."', City ='".$City."',Class='".$Class."' where Email ='".$Email."'";
    $update_trail = "insert into audit_trail(user_id,action_time,action_performed,table_affected,item_affected,old_value,new_value) values('$Email','$action_time','Profile Data changed','profile','$item_affected','$old_value','$new_value')";
    if(mysqli_query($conn, $updatequery)){
      if(mysqli_query($conn, $update_trail)){
       header('location:Profile.php');}
      else{
        mysqli_error($conn);
      }
    }
}
?>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<div class="row">
<div class="shadow-lg card col-sm-5 mt-5 mx-auto white"
					style="border-radius: 10px;">
          <div class="form-group">
<form action="" method="POST">
<div style='text-align:center;'>
	<script type= "text/javascript" src = "countries.js"></script>
	<select class="input-group ml-1 mb-3 mt-4 form-control custom-select" id="country" name ="country"></select> 
	<select class="custom-select input-group ml-1 mb-3 mt-4 form-control" name ="state" id ="state"></select> </div>

<script language="javascript">
	populateCountries("country", "state"); // first parameter is id of country drop-down and second parameter is id of state drop-down
	populateCountries("country2");
	populateCountries("country2");
</script>
<select class="input-group ml-1 mb-3 mt-4 form-control custom-select" name="class"id="inputGroupSelect01">
    <option selected>Choose...</option>
    <option value="1">1st</option>
    <option value="2">2nd</option>
    <option value="3">3rd</option>
    <option value="4">4th</option>
    <option value="5">5th</option>
    <option value="6">6th</option>
    <option value="7">7th</option>
    <option value="8">8th</option>
    <option value="9">9th</option>
    <option value="10">10th</option>
    <option value="11">11th</option>
    <option value="12">12th</option>
    
  </select>
<button type="submit" name="submit" class="mx-auto btn btn-primary ml-1 mr-3 mt-2 btn btn-primary form-control">Update</button>
<button type="submit" name="Submit" class="mx-auto btn btn-danger ml-1 mr-3 mt-2 btn btn-primary form-control">Cancel</button>
</form>
</div>
</div>
</div>
</div>
</body>
</html>