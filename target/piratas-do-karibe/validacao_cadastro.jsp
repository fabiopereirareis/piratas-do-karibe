<%-- 
    Document   : validacao_cadastro
    Created on : 22 de out de 2021, 11:43:12
    Author     : fabinho
--%>

<%--<%@ include file="connectionDBLoc.jsp"%>--%>
<%@ include file="connectionDBWeb.jsp.jsp"%>
<%
             request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
           String firstName = request.getParameter("firstname");
           String lastName = request.getParameter("lastname");
           String userForm = request.getParameter("user_form");
           String password = request.getParameter("password");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
           String district = request.getParameter("district");
//           String city = request.getParameter("city");
//           String state = request.getParameter("state");
           String state = "teste";
           String zipCod = request.getParameter("zipcod");
//               response.sendRedirect("index.jsp?name=" + name);
//            
//               if(password != retryPassword){
//                   response.sendRedirect("cadastro.html");
//               }
//               }else{
//                    
//               }
//               response.sendRedirect("index.jsp?location=" + "errado" );


           
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <%
            out.print(firstName);
            out.print(lastName);
            out.print(email);
            out.print(district);
            out.print(address);
            out.print(state);
            out.print(zipCod);
            out.print(userForm);
            out.print(password);
        %>

        <%            
     String sql = "";
     try {

         //Comando SQL para inserir um novo registro no BD:
         sql = "INSERT INTO public.tb_users (first_name,last_name,email,district,address,state,zip_cod,passwd,user_name)"+
                "VALUES (?,?,?,?,?,?,?,?,?);";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1,firstName);
                 pstm.setString(2,lastName);
                 pstm.setString(3,email);
                 pstm.setString(4,district);
                 pstm.setString(5,address);
                 pstm.setString(6,state);
                 pstm.setString(7,zipCod);
                 pstm.setString(8,password);
                 pstm.setString(9,userForm);
         //chamamos o método para gravar dados no banco
         int retorno = pstm.executeUpdate();
         if (retorno > 0) {
             out.print("<p>Dados gravados com sucesso</p>");
         } else {
             out.print("<p>Erro. Tente novamente.</p>");
         }
     } catch (Exception ex) {
         out.print("<p>Algo errado inserindo no Banco de dados. Digite notas com ponto. Não repita o RGM." + "<br/>Comando SQL: " + ex.getMessage() + "</p>");
//                out.print("<p>Algo errado inserindo no Banco de dados. Digite notas com ponto. Não repita o RGM." + "<br/>Comando SQL: " + sql + "</p>");
     }
     finally { //parte finally, sempre será executada
         if(pstm!=null)pstm.close();
         if(con!=null)con.close();                
     }
        %>

    </body>
</html>