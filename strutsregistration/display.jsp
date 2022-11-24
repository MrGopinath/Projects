<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DISPLAY</title>
<style>
.header {
  overflow: auto;
  background-color:  rgb(106, 90, 205);
}

.header a {
  float: left;
  color: white;
  padding:15px;
  text-decoration:none; 
  font-weight: bold;
}


.header a:hover {
  background-color: #ddd;
  color: black;
}
.x{
font-size: 30px;

}
.h{
color:#800080;
}
</style>
</head>
<body>
<div class="header">
<a href="index.jsp">HOME</a>
</div>
<s:iterator value="list" >
<fieldset>
<div class="x">
<div class="h">
<b><s:label >ID:</s:label></b>
<s:property value="id"/><br>
</div>
<b><s:label  >NAME:</s:label></b>
<s:property value="name"/><br>
<b><s:label >AGE:</s:label></b>
<s:property value="age"/><br>
<b><s:label >DEGREE:</s:label></b>
<s:property value="degree"/><br>
<b><s:label >PHONE:</s:label></b>
<s:property value="phone"/><br>
<b><s:label >GENDER:</s:label></b>
<s:property value="gender"/><br><br>
<b><a href=edit?id=<s:property value="id"/> style="text-decoration: none; color:orange;">EDIT</a> |</b>
<b><a href=del?id=<s:property value="id"/> style="text-decoration: none; color:red;">DELETE</a></b>
</div>
</fieldset>
</s:iterator>
</body>
</html>