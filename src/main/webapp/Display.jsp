<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div class="container">
		<div class="container text-center my-3">
			<h1>Client Server Application</h1>
		</div>
		<%
		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/serverdb", "postgres", "");
			if (con != null) {
				String sql = " SELECT * From images ORDER BY RANDOM() LIMIT 1;";
				PreparedStatement st = con.prepareStatement(sql);
				ResultSet rs = st.executeQuery();

				while (rs.next()) {
			int id = rs.getInt("id");
			String name = rs.getString("file_path");
		%>

		<div class="card" style="width: 18rem;">
			<img src="upload/<%=name%>" class="card-img-top" alt="..."
				width="150px">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<a href="upload/<%=name%>" class="btn btn-outline-primary" download>Download</a>
			</div>
		</div>


		<%
		}
		con.close();
		} else {
		%>
		<h1>Connection FAILED</h1>
		<%
		}
		} catch (ClassNotFoundException | SQLException e) {
		e.printStackTrace();
		}
		%>

	</div>
</body>
</html>