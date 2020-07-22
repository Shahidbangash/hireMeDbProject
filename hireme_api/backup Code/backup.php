<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SHAHID</title>
</head>
<body>
    Testing web site


    



<?php



try{

    $connection = new PDO('mysql:host=shahidkhan.mysql.database.azure.com;dbname=test', 'shahid@shahidkhan', 'bangash@123');

    $connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Check connection
// if ($connection->connect_error) {
//     die("Connection failed: " . $connection->connect_error);
// }

//    echo "Yes Connected";
$sql = "SELECT * FROM user";
// $result = $connection->query($sql);


$stmt=$connection->prepare( $sql );
if( $stmt ){
    // $stmt->bindParam(':id',$id);
    $res = $stmt->execute();
    
    // echo '<table> <th>User ID</th><th> User Name</th>';
        if( $res ){
            echo $res;
            while( $rs=$stmt->fetch( PDO::FETCH_LAZY ) ){
                echo '<tr><td>'.$rs->iduser.'</td> <td>'.$rs->name.'</td></tr>';
            }
        }

        echo '</table>';
   
}

else {
    echo "0 results";
}
$connection =null;



}catch(PDOException $exc){

echo $exc ->getMessage();

die("Couldn't connect");

}





?>
</body>
</html>