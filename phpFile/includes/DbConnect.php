<?php
/**
 * Created by PhpStorm.
 * User: CrazyDiamond
 * Date: 2018/7/12
 * Time: 下午1:01
 */

class DbConnect{

 private $conn;

 function __construct()
 {
 }

 function connect(){
     require_once 'Constants.php';

     $this -> conn = new mysqli(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME);

     if (mysqli_connect_error()){
         echo "Failed to connect to MySQL: " . mysqli_connect_error();
     }

     return $this->conn;
 }

}