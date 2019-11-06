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
<div>
	<form action="/add" method="post">
		影视名称:	<input type="text" name="ename"><br><br>
		导演:		<input type="text" name="name"><br><br>
		票价:		<input type="text" name="price"><br><br>
		上映时间: <input type="text" name="sdate"><br><br>
		时长:		<input type="text" name="stime"><br><br>
		类型:    <input type="text" name="pic"><br><br>
		年代:		<input type="text" name="nian"><br><br>
		区域:		<input type="text" name="qu"><br><br>
		<!-- 状态:		<select name="tid">
					<option>====</option>
				</select> --><br><br>
			<input type="button" value="添加" onclick="add()">
	</form>
</div>	
</body>
<script type="text/javascript">

	/* $.post(
			"/typelist",
			"",
			function(obj) {
				for (var i = 0; i < obj.length; i++) {
					$("select").append("<option value="obj[i].tid">"+obj[i].tname+"</option>");
				}
			},
			"json"
	); */
	
	function add() {
		$.post(
				"/add",
				$("form").serialize(),
				function(obj) {
					if(obj>0){
						location="/list"
						alert("添加成功~")
					}else{
						location="<%=path%>/add.jsp"
						alert("添加成功~")
					}
				},
				"json"
		);
	}
</script>
</html>