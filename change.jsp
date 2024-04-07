<%@page import="java.sql.*"%>
<%! String sname;int id;%>
<%
	int id = Integer.parseInt(request.getParameter("tx1"));
	sname = request.getParameter("tx2");
	try
	{
		Connection con;
		PreparedStatement ps;
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
		ps = con.prepareStatement("UPDATE Student SET Names = '"+sname+"'  WHERE ID = "+id);
		ps.executeUpdate();
		con.close();
		ps.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
	response.sendRedirect("update.jsp");
%>