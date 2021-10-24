<%-- 
    Document   : validacao_cadastro
    Created on : 22 de out de 2021, 11:43:12
    Author     : fabinho
--%>

<%--<%@ include file="connectionDBLoc.jsp"%>--%>
<%@ include file="connectionDBWeb.jsp"%> 
<%
             request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");
//           String firstName = request.getParameter("firstname");
//           String lastName = request.getParameter("lastname");
//           String userForm = request.getParameter("user_form");
//           String password = request.getParameter("password");
//           String email = request.getParameter("email");
//           String address = request.getParameter("address");
//           String district = request.getParameter("district");
//           String city = request.getParameter("city");
//           String state = request.getParameter("state");
//           String state = "teste";
//           String zipCod = request.getParameter("zipcod");
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
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="css/bootstrap.css" />
        <script src="js/bootstrap.js"></script>
    </head>
    <body>
        <%
//            out.print(firstName);
//            out.print(lastName);
//            out.print(email);
//            out.print(district);
//            out.print(address);
//            out.print(state);
//            out.print(zipCod);
//            out.print(userForm);
//            out.print(password);
        %>

        <%            
     String sql = "";
     try {

         //Comando SQL para inserir um novo registro no BD:
         sql = "INSERT INTO public.tb_users (first_name,last_name,email,district,address,state,zip_cod,passwd,user_name)"+
                "VALUES (?,?,?,?,?,?,?,?,?);";
                 pstm = con.prepareStatement(sql);
                 pstm.setString(1,request.getParameter("firstname"));
                 pstm.setString(2,request.getParameter("lastname"));
                 pstm.setString(3,request.getParameter("email"));
                 pstm.setString(4,request.getParameter("district"));
                 pstm.setString(5,request.getParameter("address"));
                 pstm.setString(6,request.getParameter("state"));
                 pstm.setString(7,request.getParameter("zipcod"));
                 pstm.setString(8,request.getParameter("password"));
                 pstm.setString(9,request.getParameter("user"));
         //chamamos o m�todo para gravar dados no banco
         int retorno = pstm.executeUpdate();
         if (retorno > 0) {
             out.print("<p>Dados gravados com sucesso</p>");
        %>
        <script>
            alert("Cadastro efetuado com sucesso !");
        </script>

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