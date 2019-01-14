<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>查询</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<table class="table">
		<tr>
			<th>ID</th>
			<th>主题</th>
			<th>信息</th>
		</tr>

		<%
			try {
				String scan = request.getParameter("scan1");

				String URL = "jdbc:sqlserver://127.0.0.1:1433;databaseName=vote";
				String driver ="com.mysql.jdbc.Driver";
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
				Connection con = DriverManager.getConnection(URL, "sa", "123456");

				String sql = "select * from tvote where 1=1 and vote_theme like '%'"+scan+"'%'";

				
				PreparedStatement stmt = con.prepareStatement(sql);
				ResultSet re = stmt.executeQuery();

				while (re.next()) {
					%>  <tr>
					   <td>
							<%= re.getInt("vote_id") %>
						</td>
						<td>
							<%= re.getString("vote_theme") %>
						</td>
						
						<td>
							<%= re.getString("vote_info") %>
						</td>
						</tr>
						<% 
				}

			} catch (ClassNotFoundException e) {
out.print(Exception e);
			}
		%>

	</table>

</body>
</html>