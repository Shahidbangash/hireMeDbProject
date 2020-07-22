<?php

include 'config.php';

// url 

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);

$project_id = $obj['project_id'];

$no_of_stars = $obj['no_of_stars'];

$comment = $obj['comment'];

// mysqli_autocommit($con,FALSE);
mysqli_begin_transaction($con);

$review_id = mysqli_query($con, "SELECT MAx(review_id) + 1 as id from `review`");

$max_id = mysqli_fetch_assoc($review_id);

$max_id_result = $max_id['id'];


$seller_id = mysqli_query($con , "SELECT Projects_Buyer_id as b_id , Projects_Seller_id as s_id from `projectstatus` WHERE `Projects_idProjects` = '$project_id' ");

$output = mysqli_fetch_assoc($seller_id);

$seller_id = $output['s_id'];

$buyer_id = $output['b_id'];

$query = mysqli_query($con ,"INSERT INTO `review` (`review_id`, `noOfStars`, `Comment`, `Projects_idProjects`, `Projects_Buyer_id`, `Projects_Seller_id`)
VALUES ('$max_id_result', '$no_of_stars', '$comment', '$project_id', '$buyer_id', '$seller_id')");

$seller_balance = mysqli_query($con , "SELECT balance FROM `seller` WHERE `id` = '$seller_id'");
$seller_result = mysqli_fetch_assoc($seller_balance);


$project = mysqli_query($con ,"SELECT budget FROM `projects` WHERE `idProjects` = '$project_id'");
$project_assoc = mysqli_fetch_assoc($project);

$buyer_query = mysqli_query($con ,"SELECT balance FROM `buyer` WHERE `id` = '$buyer_id'");

$buyer_assoc = mysqli_fetch_assoc($buyer_query);


$project_budget_final = $project_assoc['budget'];

$buyer_balance = $buyer_assoc['balance'];
$seller_balance_final = $seller_result['balance'] + $project_budget_final;

$buyer_balance_final = $buyer_balance - $project_budget_final;
echo($buyer_balance);

if($buyer_balance < $project_budget_final ){
    $mysqli->rollback();
    echo json_encode("Sorry your balance is  very less ... transacction cannot be performed");
}else{


$update_buyer_balance = mysqli_query($con, "UPDATE `buyer` SET `balance` ='$buyer_balance_final' WHERE `seller`.`id` = $buyer_id");
$update_balance_table = mysqli_query($con, "UPDATE `seller` SET `balance` ='$seller_balance_final' WHERE `seller`.`id` = $seller_id");
    
$update_another_table = mysqli_query($con, "INSERT INTO `buyer_gives_review` (`Buyer_id`, `Review_review_id`, `Review_Projects_idProjects`, `Review_Projects_Buyer_id`, `Review_Projects_Seller_id`) VALUES ('$buyer_id', '$max_id', '$project_id', '$buyer_id', '$seller_id')");


if($update_buyer_balance){

mysqli_commit($con);

}

}
if($query){
    
    // mysqli_commit($con);
    
    echo json_encode("Successfully added project ");
}else{
    
    echo("unsuccesssful ! try again");
}

mysqli_close($con);

?>