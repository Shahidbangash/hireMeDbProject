<?php
include 'config.php';

$result = array();
$show = "SELECT * FROM `buyer`";
$query= mysqli_query($con,$show);
while($row = mysqli_fetch_array($query)){
	$result[]=$row;
}
echo json_encode($result);

?>