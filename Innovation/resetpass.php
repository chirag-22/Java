<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Innovation</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
</head>
<body>
<?php

include 'regist.php';

if(isset($_POST['submit'])){

    if(isset($_GET['token'])){
      $ID= $_GET['token'];
    }
	
    $Pass = mysqli_real_escape_string($conn , $_POST ['pass']);
    $pass = password_hash($Pass, PASSWORD_BCRYPT);
    $updatequery = "update echoes set Password ='".$pass."' where ID ='".$ID."'"; 
    mysqli_query($conn, $updatequery);
    if($updatequery){
     header ('location:index.php');
    }
}

?>
<div class="card bg-light">
    <article class="card-body mx-auto" style="max-width: 400px;">
       <h4 class="card-title mt-3 text-center">New Password</h4>
       

       <form action="" method="POST">
             <div class="form-group input-group">
             <div class="input-group-prepend">
             
             </div>
             <div class="input-group ml-3 mt-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">lock</span>
									</div>
									<input for="password" type="password" class="form-control"
										name="pass" placeholder="Password" id="password" required="">
									<div>
										<a class="btn material-icons transparent ml-0 passbox"
											onclick="Toggle()">remove_red_eye</a>
									</div>
									<div id="pass-error" class="invalid-feedback text-center">Passwords
										Mismatch. Check Again!</div>
								</div>
								
                  <div class="form-group m-3 mx-auto">
                   <button type="submit" name="submit" class="btn btn-primary btn-block"
                   >Save Password</button>
                   </div>       
            </form>
           </article>
         </div>
        </div>
       </div>
     </body>
  </html>