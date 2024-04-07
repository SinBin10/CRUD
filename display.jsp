<%@page import="java.sql.*"%>
<%
			try{ 		 	
				
				Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            			con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
				st = con.createStatement();
				rs = st.executeQuery("select * from Student");
				out.println("<table border=3><tr><th>Id</th><th>Names</th></tr>");
				while(rs.next())
				{
					int i = rs.getInt("ID");
					out.println("<tr><td>"+i+"</td><td>"+rs.getString("Names")+"</td></tr>");
				}
				out.println("</table><br><br>");
				con.close();
				st.close();
				rs.close();
			}
			catch(Exception e)
			{
				out.println(e);	
			}

%>
<a href="server_work_1.html">Home</a>