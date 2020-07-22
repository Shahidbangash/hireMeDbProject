<?php

// http://192.168.36.241/testconnection/select_available_seller.php
//DOne

include 'config.php';

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);


$city = $obj['email'];




$result = array();
$show = "SELECT seller.name as name , Level_id as level , city FROM `seller` JOIN seller_has_level join_predicate WHERE city = '$city'";
$query= mysqli_query($con,$show);

$result = array();
$row = mysqli_fetch_assoc($query); 

while($row = mysqli_fetch_array($query)){
	$result[]=$row;
	
	
}


// $result['level'] = $row['level'];

// $out = $result['level'];
if(isset($result) == NULL){
    // echo("we are in empty array");
    echo json_encode("Sorry No Available Seller Found");

}else{
    // echo("id is not null");
    // response($result,"");
    echo json_encode($result);
}

