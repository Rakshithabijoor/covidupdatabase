<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    <title>Document</title>
    <link rel="stylesheet" href="analysis.css" />

    <link rel="stylesheet" href="plasma.html" />
    <link rel="stylesheet" href="covidcentre.html" />
    <link rel="stylesheet" href="analysis.html" />
    <link rel="stylesheet" href="covidfact.html" />

</head>

<body>
    <div class="jumbotron" id="admin1">
        <form action="admin.php" method="POST">
            <table>
                <tr>
                    <th colspan="4">Plasma Updates</th>
                    <th colspan="1"><input type="date"></th>
                </tr>
                <tr>
                    <th>BloodGroup</th>
                    <th>Number Of Applicants</th>
                    <th>below/= 30(years)</th>
                    <th>above 30(years)</th>
                    <th>Diabetic</th>

                </tr>
                <tr>
                    <th><input name="bloodgroup" id="bloodgr" type="text"></th>
                    <th><input name="app" id="app" type="number"></th>
                    <th><input name="below" id="below" type="number"></th>
                    <th><input name="above" id="above" type="number"></th>
                    <th><input name="diabetic" id="diabetic" type="number"></th>

                </tr>







                <button id="relief4" type="submit" onclick="retri()">Save</button>
            </table>
        </form>
    </div>
    <div class="jumbotron" id="admin1">
        <form action="admin1.php" method="POST">
            <table>
                <tr>
                    <th colspan="4"><i><b>C</b></i>ovid <b>C</b>entres</th>
                    <th colspan="2"><input type="date"></th>
                </tr>
                <tr>

                    <th>Hospital Name:</th>
                    <th>City,place</th>
                    <th>Contact info:</th>
                    <th>Pincode:</th>
                    <th>Number of Vacant beds:</th>

                    </th>
                </tr>
                <tr>

                    <th><input type="text" name="name"></th>
                    <th><input type="text" name="city"></th>
                    <th><input type="tel" name="contact"></th>

                    <th><input type="number" name="pincode"></th>
                    <th><input type="number" name="beds"></th>


                </tr>
            </table>
            <button id="relief4">Submit</button>
        </form>

    </div>
    <div id="admin6">
        <a class="btn btn-primary" href="analysis.html" role="button">Home</a>
        <a class="btn btn-primary" href="covidfact.html" role="button">Mythbusters</a>
        <a class="btn btn-primary" href="covidcentre.html" role="button">Relief Fund</a>
        <a class="btn btn-primary" href="plasma.html" role="button">Plasma Donors</a>
        <a class="btn btn-primary" href="login1.html" role="button">logout</a>
    </div>
    <script src="analysis.js"></script>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
    integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
    crossorigin="anonymous"></script>

</html>