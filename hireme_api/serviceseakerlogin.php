<?php
include('config.php');

// http://localhost/testconnection/serviceseakerlogin.php/?email_id=shahid@gmail.com&password=pakistan1


$email_id = $_GET['email_id'];

$password = $_GET['password'];
 

if (isset($_GET['email_id']) ) {
 $email_id = $_GET['email_id'];

 $password = $_GET['password'];
// WHERE Email_Id =$email_id
$show = "SELECT email, password  FROM `buyer` WHERE email = '$email_id' and password = '$password' ";
$query= mysqli_query($con,$show);
if(mysqli_num_rows($query) > 0){
// $query= mysqli_query($con,$show);
$result = [];
// echo(mysqli_num_rows($query));
while($row = mysqli_fetch_array($query)){
    $result[]=$row;
    
    $email_id = $row['email'];
    $password = $row['password'];
    // $response_code = $row['response_code'];
    // $response_desc = $row['response_desc'];
    response($email_id, $password, 200,"Succesfully");

}
    mysqli_close($con);
 }else{
 response(NULL, NULL, 404,"No Record Found");
 }
}else{
 response(NULL, NULL, 400,"Invalid Request");
 }
    
 
function response($email_id,$password,$response_code,$response_desc){
 $response['email'] = $email_id;
 $response['password'] = $password;
 $response['response_code'] = $response_code;
 $response['response_desc'] = $response_desc;
 
 $json_response = json_encode($response);
 echo ($json_response);

//  return $json_encode($response);
}
?>