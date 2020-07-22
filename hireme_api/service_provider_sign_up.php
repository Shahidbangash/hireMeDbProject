

<?php

// http://192.168.36.241/testconnection/service_provider_sign_up.php

//tested

include 'config.php';

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);


$email_id = $obj['email'];
$username = $obj['username'];
$name = $obj['name'];
$password = $obj['password'];
// $phone = $obj['phone_no'];
$city = $obj['city'];
$about = $obj['about'];

// Checking whether Email Already Exists or Not in MySQL Table.
// $CheckSQL = "SELECT * FROM `seller` WHERE email=$email_id";

// echo($CheckSQL);
// $CheckUserName = "SELECT email FROM `seller` WHERE username='$username'";
// $checkphoneNo = "SELECT * FROM `buyer` WHERE phone='$phone'";
$origional = "INSERT INTO `seller` (`id`, `name`, `username`, `password`, `email`,   `balance`, `city`) VALUES (0, '$name', '$username', '$password', '$email_id',  '500', '$city')"; 
// echo($origional);
try{
   $result = mysqli_query($con,$origional);
if($result){
 
    $MSG = 'User Registered Successfully' ;
    response(200, $MSG);
    // echo($origional);

     
    
 
} 
}
 catch(Exception $e){
    echo 'Caught exception: ',  $e->getMessage(), "\n";
 
    echo "Error: " . $origional . "" . mysqli_error($con);
    echo 'Try Again';
 
 }
// }

function response($response_code,$response_desc){
	
	$response['response_code'] = $response_code;
	
	$response['response_desc'] = $response_desc;
	
	$json_response = json_encode($response);
	echo ($json_response);
   
   }

mysqli_close($con);
?>



















