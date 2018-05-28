<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Students Registration</title>
<style type="text/css">
.container{
    height: 400px;
    width: 400px;
    margin: 100px 500px 100px 550px;
}
.fieldset{
    height: 450px;
    width: 350px;
}
.legend{
    font-size: 30px;
}
.btn{
    width: 75px;
    height: 30px;
}
.btn1{
    margin-left: 85px;
}
table{
    border-collapse:separate;
    border-spacing:0 15px;
}
td{
    width: 250px;
    margin-left: 100px;
}
tr{
    padding-left: 100px;
}
label{
    font-size: 20px;
}
.txt{
    height: 25px;
    width: 180px;
}
</style>
<script type="text/javascript">
function back(){
    var form = document.getElementById('studentAdd');
    form.action = '/StudentAdministration/';
    form.method = 'get';
    form.submit();
}
function addStudent(){
    var form = document.getElementById('studentAdd');
    form.action = 'studentsRegister.do';
    form.method = 'post';
    form.submit();
}
</script>
</head>
<body>
<form id="studentAdd">
    <label class="fontStyle"><input type="hidden" id="screenMessage" value=""></label>
    <div class="container">
        <fieldset class="fieldset">
            <legend class="legend">Student Registration Form</legend>
            <table>
                <tr>
                    <td><label>Student Name</label></td>
                    <td><input type="text" name="sName" id="sName" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>Address</label></td>
                    <td><input type="text" name="address" id="address" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>Phone Number</label></td>
                    <td><input type="text" name="phoneNo" id="phoneNo" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>Email</label></td>
                    <td><input type="text" name="email" id="email" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>D.O.B</label></td>
                    <td><input type="text" name="dob" id="dob" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>Gender</label></td>
                    <td><input type="radio" name="gender" id="male" value="male" checked><label for="male">Male</label>
                    <input type="radio" name="gender" id="female" value="female"><label for="female">Female</label></td>
                </tr>
                <tr>
                    <td><label>Father Name</label></td>
                    <td><input type="text" name="fatherName" id="fatherName" class="txt" ></td>
                </tr>
                <tr>
                    <td><label>NRC</label></td>
                    <td><input type="text" name="nrc" id="nrc" class="txt" ></td>
                </tr>
                <tr>
                    <td colspan="2">
                    <input type="button" name="add" onclick="addStudent()" class="btn btn1" value="Save">
                    <input type="button" name="backBtn" onclick="back()" class="btn btn2" value="Back">
                    </td>
                </tr>
            </table>
         </fieldset>
    </div>
</form>
</body>
</html>