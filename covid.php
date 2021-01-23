<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <title>Document</title>


    <style>
        table{
            border-collapse: collapse;
            border:1px solid black;
            float: inline-start;
        }
        th,td{
               border-collapse: collapse;
            border:1px solid black;
            font-size: 23px;

        }
        th{
            background-color: brown;
        }
        h3{
            color: darkblue;
            text-align: left;
        }
        </style>
</head>
<body>
    <div>
        <div>
            <h3>Covid Testing Clinics</h3>
            
            <table>
                <tr>
                    <th>Covidcenter_id
                      
                    </th>

                    <th>Covidcenter_Name</th>
                    <th>City</th>
                    <th>Contact_info</th>
                    <th>Pincode</th>
                      <th>Vacant Beds</th>


                </tr>
              
              <!-- <td><input type="number" name="id"></td>
                <td><input type="text" name="name"></td>
                <td><input type="city" name="city"></td>
                <td><input type="number" name="state"></td>
                <td><input type="number" name="pincode"></td> -->
 <?php

$conn = mysqli_connect("localhost", "root", "", "covid");
// Check connection
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT * FROM  covidcenter ";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
// output data of each row
while($row = $result->fetch_assoc()) {
echo "<tr><td>" . $row["HospitalID"]. "</td><td>" .  $row["HospitalName"] . "</td><td>"
. $row["city"]. "</td><td>" . $row["contact"] . "</td><td>" . $row["pincode"] . "</td><td>".$row["vacantBeds"]."</td></tr>";
;
}
echo "</table>";
} else { echo "0 results"; }
$conn->close();
?>
 
            </table>
        </div>
    </div>
    <button type="button" class="btn btn-danger"><a href="second.php">Plasma Details</a></button>
    <button type="button" class="btn btn-danger" ><a href="adminlogin.html">Logout</a></button>
</body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
</html>