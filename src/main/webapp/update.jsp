<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%
	String path=request.getContextPath();
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="<%=path%>/css/index_work.css"/> 
<script type="text/javascript" src="<%=path%>/js/jquery-1.8.3.js"></script>
</head>
<body>
<form action="#">
		影视名称:<input type="text" name="ename" value="${list.ename }"><br><br>
		导演:		<input type="text" name="name" value="${list.name }"><br><br>
		票价:		<input type="text" name="price" value="${list.price }"><br><br>
		上映时间: <input type="text" name="sdate" value="${list.sdate }"><br><br>
		时长:		<input type="text" name="stime" value="${list.stime }"><br><br>
		类型:    <input type="text" name="pic" value="${list.pic }"><br><br>
		年代:		<input type="text" name="nian" value="${list.nian }"><br><br>
		区域:		<input type="text" name="qu" value="${list.qu }"><br><br>
		状态:		<select>
					<option>${list.tname }</option>
				</select><br><br>
				<a href="/list"><input type="button" value="返回列表">	</a>	
</form>	
</body>
</html>