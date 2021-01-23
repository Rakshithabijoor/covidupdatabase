<?php
$bloodgroup= filter_input(INPUT_POST,'bloodgroup');
$app= filter_input(INPUT_POST,'app');
$below= filter_input(INPUT_POST,'below');
$above= filter_input(INPUT_POST,'above');
$diabetic= filter_input(INPUT_POST,'diabetic');


if(!empty($bloodgroup) ||!empty($app) || !empty($below) || !empty($above) || !empty($diabetic) ){
   
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
            $sql="INSERT INTO  admin (bloodgroup,applicant,below30,above30,diabetic)
            values('$bloodgroup','$app','$below','$above','$diabetic')";
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
        echo"Username should not be empty";
        die();
    }


?>