<?php
$username= filter_input(INPUT_POST,'username');
$password= filter_input(INPUT_POST,'password');
$confirmpassword=filter_input(INPUT_POST,'confirmpassword');
$email= filter_input(INPUT_POST,'email');
$phone= filter_input(INPUT_POST,'phone');
if(!empty($username)){
    if(!empty($password) && ($password)==($confirmpassword)){
        $host="localhost";
        $dbusername="root";
        $dbpassword="";
        $dbname="covid";
        //create connection
        $conn = new mysqli($host,$dbusername,$dbpassword,$dbname);
        if(mysqli_connect_error()){
            die('connect Error ('. mysqli_connect_errno().')'
            .mysqli_connect_error());
        }
        else{
            $sql="INSERT INTO  login (username,Password,Email,number)
            values('$username','$password','$email','$phone')";
            if($conn->query($sql)){
                echo"New record is inserted Successfully";
            }
            else{
                echo"Error".$sql."
                ".$conn->error;
            }
            $conn->close();
        }
        }
else{
    echo"Password is incorrect";
    die();
}
    }
    else{
        echo"Username should not be empty";
        die();
    }


?>