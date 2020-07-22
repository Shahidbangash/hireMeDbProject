<?php

include 'config.php';

// url 

$json = file_get_contents('php://input');
$obj = json_decode($json ,true);


$seller_id = $obj['seller_id'];
$buyer_id = $obj['buyer_id'];
$project_name = $obj['project_name'];
$budget = $obj['budget'];
$project_category = $obj['project_category'];
// $category_name = $obj['']

$end_date = $obj['end_date'];
// $sub_category = $obj['sub_category'];
mysqli_begin_transaction($con);

$category_select_query = "SELECT `idCategory` from 'category' WHERE  'CategoryName' = $category_name";
$category_id_query = mysqli_query($con, $category_select_query);

$category_id_query_result = mysqli_fetch_assoc($category_id_query);

$category_id = $category_id_query_result['idCategory'];


$sub_category_query = "INSERT INTO sub_category (`title` , `Category_idCategory`) VALUES ('$project_name','$category_id')";



$category_qurey_result =mysqli_fetch_assoc($get_category_id);


$get_category_id = mysqli_query($con,$sub_category_query);



// $username = $obj['username'];
// $book = $obj['book'];
// $seller_id = $obj['seller_id'];
$quee = "SELECT MAx(idProjects) + 1 as idProjects  from `projects`";

$tick = mysqli_query($con,$quee);

// $result = array();
$row = mysqli_fetch_assoc($tick); 
// $result['id'] = $row['idProjects'];
$myid = $row['idProjects'];
// echo($myid);

$ins = "INSERT INTO `projects` (`idProjects`, `projectName`, `budget`, `start_date`, `end_date`, `category_id`, `Buyer_id`, `Seller_id`) 
VALUES ($myid, '$project_name', '$budget', DATE_FORMAT(NOW(),'%d-%m-%Y'), '$end_date', '$category_id', '$buyer_id', '$seller_id')";
// $ins = "INSERT INTO `check` (`idProjects` ,) VALUES ( ,)";
$query=mysqli_query($con,$ins);

$project_status_insert = mysqli_query($con,"INSERT INTO `projectstatus` (`status`, `Projects_idProjects`, `Projects_Buyer_id`, `Projects_Seller_id`) VALUES ('incomplete', '$myid', '$buyer_id', '$seller_id')");

if($query){
    
    mysqli_commit($con);
    
    echo json_encode("Successfully added project ");
}else{
    
    echo("unsuccesssful ! try again");
}

mysqli_close($con);
?>