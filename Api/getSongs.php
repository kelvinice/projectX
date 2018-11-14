<?php
/**
 * Created by PhpStorm.
 * User: prk
 * Date: 10/11/2018
 * Time: 13:54
 */

$con = new mysqli('localhost','root','','musicdb');
$offset = $_POST['data1'];
$searchKey = $_POST['data2'];

$query = "SELECT * FROM musics WHERE name like '%".$searchKey."%' or path like '%".$searchKey."%' LIMIT ".($offset*10)." ,10";
$result = $con->query($query);
//$arrayOfResult = array();
//
//while($temp = $result->fetch_assoc()){
//    array_push($arrayOfResult,$temp);
//}

$arrayOfResult = $result->fetch_all(MYSQLI_ASSOC);

echo json_encode($arrayOfResult);