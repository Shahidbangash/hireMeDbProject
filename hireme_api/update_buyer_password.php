<?php

// URL to be used 
// http://192.168.36.241/testconnection/update_buyer_password.php
// tested

include 'config.php';


// $email_id;
// $username;
//it just gets body parameters but i dont know how -_-  (-_-)
$json = file_get_contents('php://input');
$obj = json_decode($json ,true);

$email_id = $obj['email'];
$username = $obj['username'];
$password = $obj['password'];

// $newemail = $obj['newemail'];

if(isset($email_id)){

    $ins = "UPDATE `buyer` SET  `password` = '$password' WHERE email = '$email_id'";

    $query=mysqli_query($con,$ins);
    if($query){
    response($email_id,200,"Successfully Updated your password ");
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

?>