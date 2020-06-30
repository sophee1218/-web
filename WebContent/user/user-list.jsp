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
<%
Connection con = Connector.getConnection();
Statement stmt = con.createStatement();
String sql = "SELECT*FROM user";
ResultSet rs = stmt.executeQuery(sql);
%>
<a href=""><button>회원정보입력</button></a>
<table border="1">
	<tr>
		<th>num</th>
		<th>NAME</th>
		<th>id</th>
	</tr>
<%
while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("num")%></td>
		<td><%=rs.getString("NAME")%></td>
		<td><%=rs.getString("id")%></td>
		
	</tr>
<% 
}
%>

</table>
</body>
</html>