<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
    height: 400px;
    width: 400px;
    margin: 200px 500px 100px 450px;
}
.fieldset{
    height: 200px;
    width: 450px;
}
.legend{
    text-align: center;
    font-size: 30px;
}
input{
    width: 350px;
    height: 60px;
}
div{
    padding-top: 15px;
    padding-left: 50px;
}
</style>
<script type="text/javascript">
function addStudent(){
    var form = document.getElementById('welcome');
    form.action = 'studentsRegister.do';
    form.submit();
}
</script>
</head>
<body>
<form id="welcome" method="get" action="">
    <label class="fontStyle"><input type="hidden" id="screenMessage" value=""></label>
    <div class="container">
        <fieldset class="fieldset">
            <legend class="legend">Student Adminstration System</legend>
            <div>
                <input type="button" name="register" onclick="addStudent()" class="btn btn1" value="Register">
            </div>
            <div>
                <input type="button" name="list" onclick="studentList()" class="btn btn2" value="Students List">
            </div>
         </fieldset>
    </div>
</form>
</body>
</html>