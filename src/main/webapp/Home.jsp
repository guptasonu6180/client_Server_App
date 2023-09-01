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

	<div class="container my-3 col-4">
		<div class="container my-3 ">
			<h1>Image Upload Form</h1>
		</div>
		<form action="file" method="post" enctype="multipart/form-data">

			<label> Upload File</label> <input type="file" name="file_path"
				class="form-control"> <input type="submit" name="upload"
				value="Upload" class="btn btn-outline-primary my-3">
		</form>
	</div>

</body>
</html>