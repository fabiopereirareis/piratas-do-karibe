<%-- 
    Document   : connectionDB
    Created on : 5 de out de 2021, 05:43:11
    Author     : fabinho
--%>
<%@ page import="java.sql.*"%>
<%
    Connection con = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;
    try {
        String server = "ec2-52-3-239-135.compute-1.amazonaws.com:5432";
        String dataBase = "d4u91vrmkkd1b3";
        String user = "edqjwhnucpowtn";
        String password = "748616b5bbaee58184fc533c856dc3a3d9958239632e8d84d449711c07198fa7";
        String driverName = "org.postgresql.Driver";
        Class.forName(driverName);

        //preparando e abrindo a conexão com o banco de dados:
        String url = "jdbc:postgresql://" + server + "/" + dataBase;
        con = DriverManager.getConnection(url, user, password);
    } catch (SQLException ex) {
        out.print("<p> Erro ao conectar o banco de dados, verifique os dados da pagina connectionDB.jsp <br/>" + ex.getMessage() + "</p>");
    }
%>
