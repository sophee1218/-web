<%@page import="java.util.List"%>
<%@page import="vo.CalcHis"%>
<%@page import="service.CalcService"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table border="1">


		<tr>
			<th>번호</th>
			<th>연산식</th>
			<th>결과</th>
		</tr>
		<%
			CalcService cs = new CalcService();
		List<CalcHis> chList = cs.getCalcList();
		for (CalcHis ch : chList)
		{
		%>
		<tr>
			<td><%=ch.getNum()%></td>
			<td><%=ch.getOps()%></td>
			<td><%=ch.getResult()%></td>
		</tr>
		<%
			}
		%>


	</table>

</body>
</html>