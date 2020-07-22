<?php

// URL to be used 
// http://192.168.36.241/testconnection/updateSPemail.php
// tested

include 'config.php';
// $email_id;
// $username;
$json = file_get_contents('php://input'); //it just gets body parameters but i dont know how -_-  (-_-)
$obj = json_decode($json ,true);

$email_id = $obj['email_id'];
$username = $obj['username'];
$newemail = $obj['new_email'];
// echo($email_id);
// echo($username);
if(isset($email_id)){

    // UPDATE `buyer` SET `id`=344,`user_name`='shahidkhanbangash' WHERE id = 34;

    $ins = "UPDATE `seller` SET `email`='$newemail'   WHERE `username` = '$username'";

    $query=mysqli_query($con,$ins);
    if($query == TRUE){
        response($newemail,200,"SUccessfully Updated your data ");
        }else{
            response($email_id,400, "Could not update your data");
        }
    }
function response($newemail,$response_code,$response_message){
    // $response['password'] = $password;
    $response['email'] = $newemail;
    $response['response_code'] = $response_code;
    $response['response_desc'] = $response_message;
    
    $json_response = json_encode($response);
    echo ($json_response);
   
   }

?>