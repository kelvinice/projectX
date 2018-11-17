<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 11/17/2018
 * Time: 11:53 AM
 */

$con = new mysqli('localhost','root','','musicdb');

$session_id = $_POST['data1'];

$query = 'SELECT username,TIMESTAMPDIFF(MINUTE,timestamp,NOW()) as "datediff" FROM user_session s JOIN users u ON s.userid = u.id WHERE sessionid = ?';

$stmt = $con->prepare($query);

$stmt->bind_param("s", $session_id);
$stmt->execute();

$result = $stmt->get_result();

if($result->num_rows == 0){
    echo "Error : Invalid Session ID";
}else{
    $temp = $result->fetch_assoc();
    if($temp["datediff"] > 30){
        echo "Error : Session has Expired";
    }
    else{
        echo $temp["username"];
    }
}







