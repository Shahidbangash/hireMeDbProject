
<?php

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



$result = array();
$show = "SELECT id FROM `buyer` where `email` ='$email_id'";
$query= mysqli_query($con,$show);

$result = array();
$row = mysqli_fetch_assoc($query); 
$result['id'] = $row['id'];
    
    // echo($result['id']);
    // echo($result);
    
$out = $result['id'];
if(isset($out) == NULL){
    echo("we are in empty array");
}else{
    echo("id is not null");
}
    // echo json_encode($out);



// echo($query);


?>

















<!-- $result = array();
    <!-- if ($row = mysqli_fetch_assoc($qres)) { -->
    <!-- $result['profile_pic'] = $row['profile_pic']; -->
<!-- } --> 