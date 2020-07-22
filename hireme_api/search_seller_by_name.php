<?php

include 'config.php';
// url http://192.168.36.241/testconnection/search_seller_by_name.php

$json = file_get_contents('php://input');

$obj = json_decode($json ,true);

$name = $obj['username'];




$result = array();
// on `seller`.`id` = `seller_has_level`.`Seller_id`
$show = "SELECT seller.name as name , Level_id as level , city FROM `seller` inner join `seller_has_level` join_predicate   WHERE `seller`.`username` = '$name' and `seller`.`id` in (SELECT id from `seller` WHERE `username` ='$name')";
$query= mysqli_query($con,$show);

$result = array();
$row = mysqli_fetch_assoc($query); 

while($row = mysqli_fetch_array($query)){
	$result[]=$row;
	
	
}

echo json_encode($result);

// $result['level'] = $row['level'];

// $out = $result['level'];
if(isset($result) == NULL){
    // echo("we are in empty array");
    echo json_encode("Sorry No Available Seller Found");

}else{
    // echo("id is not null");
    // response($result,"");
}




