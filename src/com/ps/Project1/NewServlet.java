package com.ps.Project1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet extends HttpServlet 
{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
	throws ServletException ,IOException
	{
		String id = req.getParameter("id");
		int sid=Integer.parseInt(id);
		String name = req.getParameter("nm");
		String dept = req.getParameter("dp");
		String perc = req.getParameter("pc");
		double pc = Double.parseDouble(perc);
		PrintWriter out = resp.getWriter();
		out.println("<html>" 
				+"<body bgcolor=yellow>"
				+"<h3>The Data of "+name+" has been collected, he belongs to "+dept+" Department</h3>"		
				+"</body>"
				+"</html>");
		out.flush();
		out.close();
		Connection con=null;
		PreparedStatement ps1=null;
		String sQry="INSERT INTO STUDENT.REGISTRATION VALUES(?,?,?,?)";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=tiger");
			ps1=con.prepareStatement(sQry);
			ps1.setInt(1, sid);
			ps1.setString(2, name);
			ps1.setString(3, dept);
			ps1.setDouble(4, pc);
			ps1.executeUpdate();
			
		} catch (ClassNotFoundException | SQLException e) {			
			e.printStackTrace();
		}
		finally
		{
			if(ps1 !=null)
			{
				try {
					ps1.close();
					}
				catch(SQLException e) 
				{
				e.printStackTrace();
				}
			}
			if(con !=null)
			{
				try {
					con.close();
				}
				catch(SQLException e)
				{
				e.printStackTrace();	
				}
			}
		}
	}
}
