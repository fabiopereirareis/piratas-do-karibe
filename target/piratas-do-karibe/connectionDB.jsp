<%-- 
    Document   : connectionDB
    Created on : 5 de out de 2021, 05:43:11
    Author     : fabinho
--%>
<%@ page import="java.sql.*"%>
<%
    Connection con = null;
    PreparedStatement pstm = null;
    try {
        String server = "localhost:3306";
        String dataBase = "lojaonline";
        String user = "root";
        String password = "";
        String driverName = "com.mysql.jdbc.Driver";
        Class.forName(driverName);

        //preparando e abrindo a conexão com o banco de dados:
        String url = "jdbc:mysql://" + server + "/" + dataBase;
        con = DriverManager.getConnection(url, user, password);
    } catch (SQLException ex) {
        out.print("<p> Erro ao conectar o banco de dados, verifique os dados da pagina connectionDB.jsp <br/>" + ex.getMessage() + "</p>");
    }
%>
