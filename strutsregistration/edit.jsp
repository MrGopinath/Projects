<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EDIT</title>
<style type="text/css">
.header {
  overflow: auto;
  background-color:  rgb(106, 90, 205);
}

.header a {
  float: left;
  color: white;
  padding:15px;
  text-decoration:none; 
}


.header a:hover {
  background-color: #ddd;
  color: black;
}
.div1{
text-align: center;

margin:10% 40% 30% 30%;
padding:2% 2% 2% 2%;
border-radius:12px;
box-shadow: rgba(0, 0, 0, 0.25) 0px 54px 55px, rgba(0, 0, 0, 0.12) 0px -12px 30px, rgba(0, 0, 0, 0.12) 0px 4px 6px, rgba(0, 0, 0, 0.17) 0px 12px 13px, rgba(0, 0, 0, 0.09) 0px -3px 5px;
font-size: 20px;
font-weight:bold;
}
.btn{
margin-left:2%;
background-color: green;
color:white;
border:orange;
border-radius: 8px;
font-size: 30px;
text-align: center;
width:100%;
padding:2px 4px 1px 1px;
}
.btn:hover{
background-color:red;
}
</style>
</head>
<body>
<div class="header">
<a href="viewact">BACK</a>
</div>
<div class="div1">
<s:iterator value="ac">
<s:form action="update" method="post">
<div style="color:red;">
<label for="id">ID:</label>
<s:property value="id" /><br><br>
</div>
<label for="name">NAME:</label>
<input type="text" name="name" value="<s:property value="name"/>"><br><br>
<label for="age">AGE:</label>
<input type="number" name="age" value="<s:property value="age"/>"><br><br>
<label for="degree">DEGREE:</label>
<input type="text" name="degree" value="<s:property value="degree"/>"><br><br>
<label for="phone">PHONE:</label>
<input type="number" name="phone" value="<s:property value="phone"/>"><br><br>
<label for="gender">GENDER:</label>
<input type="text" name="gender" value="<s:property value="gender"/>"><br><br>
<button class="btn">UPDATE</button>
</s:form>
</s:iterator>
</div>
</body>
</html>