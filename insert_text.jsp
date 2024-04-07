<%@page import="java.sql.*"%>
<form action="insert.jsp">
<%
			try{ 		 	
				
				Connection con;
				Statement st;
				ResultSet rs;
				Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            			con = DriverManager.getConnection("jdbc:ucanaccess://D://Advanced Java - 6th sem//SERVER JSP//Server.mdb");
				st = con.createStatement();
				rs = st.executeQuery("select max(ID) from Student");
				rs.next();
				out.println("ID: <input type=text name=T1 value="+(rs.getInt(1)+1)+"><br><br>");
				out.println("Name: <input type=text name=T2><br><br>");
				con.close();
				st.close();
				rs.close();
			}
			catch(Exception e)
			{
				out.println(e);	
			}

%>
<input type="submit" name="insert" value="insert"><br><br>
</form>
<a href="server_work_1.html">Home</a>