<?php
/**
 * Created by PhpStorm.
 * User: CrazyDiamond
 * Date: 2018/7/12
 * Time: 下午1:14
 */

require_once '../includes/DbOperation.php';

$response = array();

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    if(!verifyRequiredParams(array('username','password','email','name','phone'))){
        $username = $_POST['username'];
        $password = $_POST['password'];
        $email = $_POST['email'];
        $name = $_POST['name'];
        $phone = $_POST['phone'];

        $db = new DbOperation();

        $result = $db->createUser($username,$password,$email,$name,$phone);

        if($result == USER_CREATED){
            $response['error'] = false;
            $response['message'] = 'User created successfully';
        }
        elseif($result == USER_ALREADY_EXIST){
            $response['error'] = true;
            $response['message'] = 'User already exist';
        }
        elseif($result == USER_NOT_CREATED){
            $response['error'] = true;
            $response['message'] = 'unknown error';
        }
    }
    else {
        $response['error'] = true;
        $response['message'] = 'Required parameters are missing';
    }
}
else{
    $response['error'] = true;
    $response['message'] = 'Invalid request';
}

function verifyRequiredParams($required_fields){

    $request_params = $_REQUEST;

    foreach ($required_fields as $field){
        if(!isset($request_params[$field]) || strlen(trim($request_params[$field])) <= 0){
            return true;
        }
    }
    return false;
}

echo json_encode($response);
