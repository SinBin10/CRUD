<%@page import="java.sql.*"%>
<%! int id;%>
<%
			id = Integer.parseInt(request.getParameter("r1"));
			try{ 		 	
				
				Connection con;
				PreparedStatement ps;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            			con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
				ps = con.prepareStatement("Delete from Student where ID = "+id);
				ps.executeUpdate();
				con.close();
				ps.close();
			}
			catch(Exception e)
			{
				out.println(e);	
			}
			response.sendRedirect("delete.jsp");

%>
