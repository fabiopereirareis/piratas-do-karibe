<%-- 
    Document   : validacao_cadastro
    Created on : 22 de out de 2021, 11:43:12
    Author     : fabinho
--%>

<%
           String firstName = request.getParameter("firstname");
           String lastName = request.getParameter("lastname");
           String user = request.getParameter("user");
           String password = request.getParameter("password");
           String email = request.getParameter("email");
           String address = request.getParameter("address");
           String district = request.getParameter("district");
           String city = request.getParameter("city");
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
    </body>
</html>