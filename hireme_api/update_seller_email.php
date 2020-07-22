<?php

// URL to be used 
// http://192.168.36.241/testconnection/update_seller_email.php
// tested

include 'config.php';


$json = file_get_contents('php://input');
$obj = json_decode($json ,true);

$email_id = $obj['email'];
$username = $obj['username'];
$password = $obj['password'];

// $newemail = $obj['newemail'];

if(isset($email_id)){

    $ins = "UPDATE `seller` SET  `email` = '$email_id' WHERE   `username` = '$username'  and password = '$password'";

    $query=mysqli_query($con,$ins);
    if($query == TRUE){
    response($email_id,200,"Successfully Updated your Email ");
    }else{
        response($email_id,400, "Could not update your data");
    }
// $city_id = $_POST['city_  id'];
// echo("yes Got it");
}

function response($email_id,$response_code,$response_message){
    $response['email'] = $email_id;
    // $response['password'] = $password;
    $response['response_code'] = $response_code;
    $response['response_desc'] = $response_message;
    
    $json_response = json_encode($response);
    echo ($json_response);
   
   }

   mysqli_close($con);
?>