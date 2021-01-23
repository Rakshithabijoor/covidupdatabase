function validate() {
  var username = document.getElementById("uname").value;
  var password = document.getElementById("password").value;
  var cpassword = document.getElementById("cpassword").value;
  var email = document.getElementById("email").value;
  var phone = document.getElementById("phone").value;

  if (username != "" && password == cpassword) {
    if (email != "" && phone != "") {


      window.open("analysis.html")
    }
  }
  else {
    alert("check out the fields again!")
  }



}
function second() {
  var username = document.getElementById("uname").value;
  var password = document.getElementById("password").value;


  if (username == "admin" && password == "user123") {



    window.open("second.php")
  }

  else {
    alert("check out the fields again!")
  }



}
function hello() {
  var u_name = document.myform.username;
  var message = document.getElementById("message");

  if (u_name.value.length < 3) {
    message.innerHTML = "*Username entered is too short"
    message.style.color = "red";
  }
  else if (u_name.value.length == 5) {
    message.innerHTML = "Nice!"
    message.style.color = "green";

  }
  else if (u_name.value.length > 25) {
    message.innerHTML = "*Username entered is too long"
    message.style.color = "red";
  }

}
function retri() {
  var bloodgroup1 = document.getElementById("bloodgr").value;

  if (bloodgroup1 != "") {
    window.open("output.php")
  }

}