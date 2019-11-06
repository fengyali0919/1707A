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
  <form action="/list" method="post">
    <table>
      <thead>
      	<tr>
      		<th colspan="14">
				影视名称:<input type="text" name="ename">
				导演: <input type="text" name="name">
				电影年代:<input type="text" name="nian">
				<input type="submit" value="查询">
      		</th>
      	</tr>
      	<tr>
      		<th colspan="14">
				上映时间:<input type="text" name="qsdate">-<input type="text" name="zsdate">
				<input type="submit" value="查询">
      		</th>
      	</tr>
      	<tr>
      		<th colspan="14">
				价格:<input type="text" name="qprice">-<input type="text" name="zprice">
				<input type="submit" value="查询">
      		</th>
      	</tr>
      	<tr>
      		<th colspan="14">
				电影时长:<input type="text" name="qstime">-<input type="text" name="zstime">
				<input type="submit" value="查询">
      		</th>
      	</tr>
      	<tr>
      		<td>请选择</td>
      		<td>序号</td>
      		<td>影视片</td>
      		<td>导演</td>
      		<td>票价</td>
      		<td>上映时间</td>
      		<td>时长</td>
      		<td>类型</td>
      		<td>年代</td>
      		<td>区域</td>
      		<td>状态</td>
      		<td colspan="3">操作</td>
      	</tr>
      </thead>
      <tbody>
      	<c:forEach items="${list }" var="list">
      		<tr>
      			<th><input type="checkbox" value="${list.id }" class="xh"></th>
      			<th>${list.id }</th>
      			<th>${list.ename }</th>
      			<th>${list.name }</th>
      			<th>${list.price }</th>
      			<th>${list.sdate }</th>
      			<th>${list.stime }</th>
      			<th>${list.pic }</th>
      			<th>${list.nian }</th>
      			<th>${list.qu }</th>
      			<th>${list.tname }</th>
      			<th><a href="/getById?id=${list.id }"><input type="button" value="详情"></a></th>
      			<th></th>
      			<th></th>
      		</tr>
      	</c:forEach>
      </tbody>
      <tfoot>
      	<tr>
      		<th colspan="14">
      		<input type="button" value="全选" onclick="qx()">
      		<input type="button" value="全不选" onclick="qbx()">
      		<input type="button" value="反选" onclick="fx()">
      		<a href="<%=path%>/add.jsp"><input type="button" value="添加"></a>
      		<input type="button" value="批量删除" onclick="ps()">
      		</th>
      	</tr>
      	<tr>
      		<th colspan="14">
      			<a href="?pageNum=1">首页</a>
      			<a href="?pageNum=${page.pageNum-1<1?page.pageNum:page.pageNum-1 }">上一页</a>
      			<a href="?pageNum=${page.pageNum-1>page.pages?page.pageNum:page.pageNum+1 }">下一页</a>
      			<a href="?pageNum=${page.pages}">尾页</a>
      			<br>
      			当前${page.pageNum}页/共${page.pages }页
      		</th>
      	</tr>
      </tfoot>
    </table>
  </form>
</div>	
</body>
<script type="text/javascript">
	function qx() {
		$(".xh").attr("checked",true)
	}
	function qbx() {
		$(".xh").attr("checked",false)
	}
	function fx() {
		$(".xh").each(function() {
			this.checked =! this.checked
		});
	}
	
	function ps() {
		var sum="";
		$(".xh:checked").each(function() {
			sum+=","+$(this).val()
		});
		id=sum.substring(1)
		if(confirm("确认删除"+id+"数据")){
			$.post(
					"/deletegoods",
					{id:id},
					function(obj) {
						if(obj>0){
							location="/list"
							alert("删除成功")
						}else{
							location="/list"
							alert("删除失败")
						}
					},
					"json"
			);
		}
	}
</script>
</html>