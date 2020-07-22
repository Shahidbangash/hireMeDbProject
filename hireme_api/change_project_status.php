<?php

include 'config.php';

// http://192.168.36.241/testconnection/change_project_status.php

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);


// $seller_id = $obj['seller_id'];
$buyer_id = $obj['buyer_id'];
// $project_name = $obj['project_name'];
// $budget = $obj['budget'];

mysqli_begin_transaction($con);


$query = mysqli_query($con, "UPDATE projectstatus SET `status` ='complete' WHERE `Projects_Buyer_id` = '$buyer_id'");


mysqli_commit($con);





if($query){
    echo json_encode("Successfully changed project status ");
}else{
    echo("unsuccesssful ! try again");
}

mysqli_close($con);
?>