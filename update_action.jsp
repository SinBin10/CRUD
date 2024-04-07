<%@page import="java.sql.*"%>
<%! int id; %>
<form action="change.jsp">
<%
	id = Integer.parseInt(request.getParameter("r1"));
	try
	{
		Connection con;
		Statement st;
		ResultSet rs;
		Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
		st = con.createStatement();
		rs = st.executeQuery("select * from Student where ID = "+id);
		rs.next();
		out.println("<b>Current data : </b>");
		out.println("<input type=text name=txt1 value="+rs.getInt("ID")+">");
		out.println("<input type=text name=txt2 value='"+rs.getString("Names")+"'><br><br>");
		out.println("<b>New data : </b>");
		out.println("<input type=text name=tx1 value="+rs.getInt("ID")+">");
		out.println("<input type=text name=tx2><br><br>");
		con.close();
		st.close();
		rs.close();
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
<input type="Submit" value="Change">
</form>