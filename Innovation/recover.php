<?php
include 'recover2.php';
if(isset ($_POST['submit'])){  
  $Email = $_POST['email'];
    
    $s = "select * from echoes where email = '$Email'";

$result = mysqli_query($conn, $s);

$num = mysqli_num_rows($result);

if($num ==1){
  require 'PHPMailerAutoload.php';

$mail = new PHPMailer;


//$mail->SMTPDebug = 4;                               // Enable verbose debug output

$mail->isSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup SMTP servers
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Username = 'chiragkumar835@gmail.com';                 // SMTP username
$mail->Password = '9958692237';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
$mail->Port = 587;                                    // TCP port to connect to

$mail->setFrom('chiragkumar835@gmail.com', 'Innovation');
$mail->addAddress($Email);     // Add a recipient
$mail->isHTML(false);                                  // Set email format to HTML


$userdata = mysqli_fetch_array($result);
$Name = $userdata['FirstName'];
$ID = $userdata['ID'];

$mail->Subject = 'Password Verfication';
$mail->Body    = "Hi $Name Click here to Reset Your Password http://localhost:7882/resetpass.php?token=$ID ";
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

if(!$mail->send()) {
    echo 'Message could not be sent.';
    echo 'Mailer Error: ' . $mail->ErrorInfo;
}
}
}
?>
<html>
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
	<script src="https://accounts.google.com/gsi/client" async defer></script>

<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="1092644277096-65cpijv4nr08vkftodspohtcbsf2c71a.apps.googleusercontent.com">
</head>

<body>
<div class="card bg-light">
    <article class="card-body mx-auto" style="max-width: 400px;">
       <h4 class="card-title mt-3 text-center">Forgot Password</h4>
       

       <form action="" method="POST">
             <div class="form-group input-group">
             <div class="input-group-prepend">
                
             </div>
             <div class="input-group m-3">
									<div class="input-group-prepend">
										<span class="input-group-text material-icons">mail</span>
									</div>
									<input id="email" for="email" name="email" type="text"
										class="form-control" placeholder="Email Address">
									<div class="invalid-feedback mail-error text-center">Please
										enter valid email address</div>
								</div>
                  <div class="form-group mx-auto">
                   <button type="submit" name="submit" class="btn btn-primary btn-block"
                   >Send Code</button>
                   </div>       
            </form>
           </article>
         </div>
        </div>
       </div>
     </body>
  </html>