<?php

// http://192.168.36.241/testconnection/service_seaker_sign_up.php

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
$CheckSQL = "SELECT * FROM `buyer` WHERE email=$email_id";

// echo($CheckSQL);
$CheckUserName = "SELECT email FROM `buyer` WHERE username='$username'";
// $checkphoneNo = "SELECT * FROM `buyer` WHERE phone='$phone'";
$origional = "INSERT INTO `buyer` (`id`, `name`, `username`, `about`, `email`,  `password`, `balance`, `city`) VALUES ( 0, '$name', '$username', '$about', '$email_id', '$password', '500', '$city')"; 

try{
   $result = mysqli_query($con,$origional);
if($result){
 
    $MSG = 'User Registered Successfully' ;
    response(200, $MSG);
    // echo($origional);
    
    //  $emailExist = 'Email Already Exist, Please Try Again With New Email Address..!';
//  echo($emailExist);
//  response(206,$emailExist);
 
// }elseif((mysqli_num_rows($check2) > 0)){
//     response(206, "Phone already exist");
// mysqli_close($con);

// }elseif(mysqli_num_rows($check1) > 0){

//     response(206, "UserName already exist");



 // Creating SQL query and insert the record into MySQL database table.
//  $Sql_Query = "insert into contacts (name,email,password) values ('$Name','$Email','$password')";

// echo("You ar here");

//  if(mysqli_query($con,$origional)){
 
     // If the record inserted successfully then show the message.

     
    
 
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