<?php
/**
 * Created by PhpStorm.
 * User: prk
 * Date: 14/11/2018
 * Time: 16:51
 */

require 'guidPHP.php';
require 'connect.php';

$username = $_POST['data1'];
$password = $_POST['data2'];

$query = "SELECT  * FROM users WHERE (username = ? or email = ?) AND password = ?";

$stmt = $con->prepare($query);

$stmt->bind_param("sss",$username,$username,$password);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows == 0){
    echo "fail";
}
else{
    $temp =  $result->fetch_assoc();
    $guid = guidv4();

    $query = "INSERT INTO user_session(userid,sessionid) VALUES(?,?)";
    $stmt = $con->prepare($query);

    $stmt->bind_param("ss", $temp["id"],$guid);
    $stmt->execute();

    echo $guid;
}