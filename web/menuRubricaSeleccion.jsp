<%-- 
    Document   : menuRubricaSeleccion
    Created on : 30/12/2014, 09:36:05 PM
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>Rubrica</title>
        <%
            HttpSession sesion = request.getSession(true);
            sesion.getAttribute("noEmpleado");
        %>
    </head>
    <body>
       <div class="DIV_Main">
           <form>
               <fieldset>
                   <legend>
                       <%=sesion.getAttribute("noEmpleado")%>
                   </legend>
                   <table>
                       <tr>
                           <td>
                               <a href="/SistemaEvaluacion/diseñoMateria1.jsp">
                                   <input type="Button" value="Diseñar materia"/>
                               </a>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <a href="/SistemaEvaluacion/disenioSaber1.jsp">
                                   <input type="Button" value="Diseñar saberes"/>
                               </a>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <a href="/SistemaEvaluacion/diseñoRubrica1.jsp">
                                   <input type="Button" value="Diseñar rubrica"/>
                               </a>
                           </td>
                       </tr>    
                       <tr>
                           <td>
                               <a href="/SistemaEvaluacion/disenioActividad1.jsp">
                                   <input type="Button" value="Editar actividad"/>
                               </a>
                           </td>
                       </tr> 
          <!--
                       <tr>
                           <td>
                               <a>
                                   <input type="Button" value="Modificar rubrica"/>
                               </a>
                           </td>
                       </tr>  -->                     
                   </table>
               </fieldset>
                   <table>
                       <tr>
                           <td>
                               <a href="/SistemaEvaluacion/menu.jsp">
                                   <input type="button" value="Regresar"/>
                               </a>
                           </td>
                       </tr>
                   </table>
           </form> 
       </div>
    </body>
</html>
