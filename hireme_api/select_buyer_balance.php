
<?php

// http://192.168.36.241/testconnection/select_buyer_balance.php

include 'config.php';

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);


$email_id = $obj['email'];




$result = array();
$show = "SELECT balance FROM `buyer` where `email` ='$email_id'";

$query= mysqli_query($con,$show);
// $result = array();
$row = mysqli_fetch_assoc($query); 

$out = $row['balance'];

// $out = $result['balance'];
if($query){
    // echo("we are in empty array");
    response($out,$email_id,"User id found");
    // echo($out);
}else{

    response(NULL,$email_id,"Sorry No user with that email exist");
    // echo("id is not null");
}

function response($out,$email,$response_message){
    $response['balance'] = $out;
    $response['email'] = $email;
    $response['response_desc'] = $response_message;

    $json_response = json_encode($response);
    echo($json_response);




}




?>
