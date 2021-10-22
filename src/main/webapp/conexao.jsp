<%-- 
    Document   : conexao
    Created on : 21 de out de 2021, 23:12:19
    Author     : fabinho
--%>
<%@ page import="java.sql.*"%>
<%
private static Connection getConnection() throws URISyntaxException, SQLException {
String dbUrl = System.getenv("JDBC_DATABASE_URL");
return DriverManager.getConnection(dbUrl);
}
%>
