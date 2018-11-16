<?php
/**
 * Created by PhpStorm.
 * User: prk
 * Date: 10/11/2018
 * Time: 13:54
 */

$con = new mysqli('localhost','root','','musicdb');
$offset = $_POST['data1']*10;
$searchKey = $_POST['data2'];

$stmt = $con->prepare("SELECT * FROM musics WHERE name like ? or path like ? LIMIT ? ,10");
$temp = '%'.$searchKey.'%';

$stmt->bind_param("ssi",$temp,$temp,$offset);
$stmt->execute();
$res = $stmt->get_result();

$arrayOfResult = $res->fetch_all(MYSQLI_ASSOC);

echo json_encode($arrayOfResult);