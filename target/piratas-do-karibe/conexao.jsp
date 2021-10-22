<%-- 
    Document   : conexao
    Created on : 21 de out de 2021, 23:12:19
    Author     : fabinho
--%>
<%@ page import="java.sql.*"%>
<%@ page import="java.net.URISyntaxException"%>
<%@ page import="java.net.URI"%>;
<%
private static Connection getConnection() throws URISyntaxException, SQLException {
    URI dbUri = new URI(System.getenv("DATABASE_URL"));

    String username = dbUri.getUserInfo().split(":")[0];
    String password = dbUri.getUserInfo().split(":")[1];
    String dbUrl = "jdbc:postgresql://" + dbUri.getHost() + ':' + dbUri.getPort() + dbUri.getPath();

    return DriverManager.getConnection(dbUrl, username, password);
}

%>
