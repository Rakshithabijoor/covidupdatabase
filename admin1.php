<?php
$hospitalname= filter_input(INPUT_POST,'name');
$city= filter_input(INPUT_POST,'city');
$contact= filter_input(INPUT_POST,'contact');
$pincode= filter_input(INPUT_POST,'pincode');
$vacantbeds= filter_input(INPUT_POST,'beds');


if(!empty($hospitalname) || !empty($city) || !empty($contact) || !empty($pincode) || !empty($vacantbeds) ){
   
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
            $sql="INSERT INTO  covidcenter (HospitalName,city,contact,pincode,vacantBeds)
            values('$hospitalname','$city','$contact','$pincode','$vacantbeds')";
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