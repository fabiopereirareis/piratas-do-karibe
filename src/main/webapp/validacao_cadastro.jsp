<%-- 
    Document   : validacao_cadastro
    Created on : 22 de out de 2021, 11:43:12
    Author     : fabinho
--%>

<%@ include file="connectionDB.jsp"%>
<%
           String firstName = request.getParameter("firstname");
           String lastName = request.getParameter("lastname");
           String user = request.getParameter("user");
           String password = request.getParameter("password");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
           String district = request.getParameter("district");
//           String city = request.getParameter("city");
           String state = request.getParameter("state");
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
            out.print(user);
            out.print(password);
        %>
        
        <%            
     request.setCharacterEncoding("UTF-8");
     response.setCharacterEncoding("UTF-8");
     String sql = "";
     PreparedStatement pstm = null;

     try {

         //Comando SQL para inserir um novo registro no BD:
         sql = "INSERT INTO public.tb_users (first_name,last_name,email,district,address,state,zip_cod,password,user"+
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1,firstName);
                 pstm.setString(2,lastName);
                 pstm.setString(3,email);
                 pstm.setString(4,district);
                 pstm.setString(5,address);
                 pstm.setString(6,state);
                 pstm.setString(7,zipCod);
                 pstm.setString(8,password);
                 pstm.setString(9,user);
         //chamamos o m�todo para gravar dados no banco
         int retorno = pstm.executeUpdate();
         if (retorno > 0) {
             out.print("<p>Dados gravados com sucesso</p>");
         } else {
             out.print("<p>Erro. Tente novamente.</p>");
         }
     } catch (Exception ex) {
         out.print("<p>Algo errado inserindo no Banco de dados. Digite notas com ponto. N�o repita o RGM." + "<br/>Comando SQL: " + ex.getMessage() + "</p>");
//                out.print("<p>Algo errado inserindo no Banco de dados. Digite notas com ponto. N�o repita o RGM." + "<br/>Comando SQL: " + sql + "</p>");
     }
     finally { //parte finally, sempre ser� executada
         if(pstm!=null)pstm.close();
         if(con!=null)con.close();                
     }
        %>
     
    </body>
</html>