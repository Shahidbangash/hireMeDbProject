<?php

// // http://localhost/testconnection/searchbylevel.php/?searchlevel=1
include 'config.php';
$searchlevel = $_GET['level'];
$result = array();
$show = "SELECT * FROM `buyer` WHERE `level` = '$searchlevel'";
$query= mysqli_query($con,$show);
while($row = mysqli_fetch_array($query)){
	$result[]=$row;
	$email_id = $row['Email_Id'];
	$password = $row['password'];
	response($email_id, $password, 200,"Succesfully found");
	
}
mysqli_close($con);


// echo json_encode($result);


function response($email_id,$password,$response_code,$response_desc){
	$response['Email_Id'] = $email_id;
	$response['password'] = $password;
	$response['response_code'] = $response_code;
	$response['response_desc'] = $response_desc;
	
	$json_response = json_encode($response);
	echo ($json_response);
   
   }
?>