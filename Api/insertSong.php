<?php
/**
 * Created by PhpStorm.
 * User: user
 * Date: 11/16/2018
 * Time: 11:37 PM
 */

require 'guidPHP.php';
require 'connect.php';

$songName = $_POST["songNameTxt"];
$artist = $_POST["artistTxt"];

$allowed =  array('mp3');

$guid = guidv4();

$target_dir = rtrim(getcwd(),"/Api").'/Public/Songs/';
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
$new_file_name = $guid .'.'. pathinfo($target_file,PATHINFO_EXTENSION);
$target_file = $target_dir . $new_file_name;

$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

if(in_array($imageFileType,$allowed)) {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        $query = "INSERT INTO musics(name,path,artist) VALUES(?,?,?)";
        $stmt = $con->prepare($query);

        $stmt->bind_param("sss",$songName,$new_file_name,$artist);
        $stmt->execute();

        echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
    } else {
        echo "Error : Failed Upload File";
    }
} else {
    echo "Error : File is not an music.";
}
