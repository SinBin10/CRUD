<%@page import="java.sql.*"%>
<%! int id; String sname; %>
<%
			try{ 		 	
				id = Integer.parseInt(request.getParameter("T1"));
				sname = request.getParameter("T2");
				Connection con;
				PreparedStatement ps;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            			con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
				//ps = con.prepareStatement("insert into Student values("+id+",'"+sname+"')");
				ps = con.prepareStatement("INSERT INTO Student (ID, Names) VALUES (?, ?)");
        			ps.setInt(1, id);
        			ps.setString(2, sname);
				ps.executeUpdate();
				con.close();
				ps.close();
			}
			catch(Exception e)
			{
				out.println(e);	
			}
			response.sendRedirect("insert_text.jsp");

%>