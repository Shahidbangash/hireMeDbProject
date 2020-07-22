

<?php

try{
    $connection = new PDO('mysql:host=localhost:3306', 'root', '');
    $connection -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   echo "Yes Connected";



}catch(PDOException $exc){
echo $exc ->getMessage();
die("Couldn't connect");
}
?>