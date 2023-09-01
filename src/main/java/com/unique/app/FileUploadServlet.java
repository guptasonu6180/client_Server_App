package com.unique.app;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "FileUploadServlet", urlPatterns = { "/file" })
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 1, // 1 MB
		maxFileSize = 1024 * 1024 * 10, // 10 MB
		maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class FileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Part filePart = request.getPart("file_path");
		String fileName = filePart.getSubmittedFileName();
		String path = "D:\\Project\\Simple_crud\\client_Server_App\\src\\main\\webapp\\upload\\";

		for (Part part : request.getParts()) {
			part.write(path + fileName);
		}

		try {
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost/serverdb", "postgres", "");
			String sql = "insert into images(file_path) values (?)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fileName);
			ps.executeUpdate();
			ps.close();
			con.close();

			response.sendRedirect("Home.jsp");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
