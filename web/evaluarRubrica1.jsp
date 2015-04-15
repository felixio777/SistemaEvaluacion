<%-- 
    Document   : evaluarRubrica
    Created on : 2/02/2015, 10:57:57 PM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Evaluar con rubrica</title>
         <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            Vector etapas_Vector=new Vector();
            etapas_Vector=Materia.getEtapasByMateria(Integer.parseInt(request.getParameter("idMateria")));
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Elige una etapa de <%=request.getParameter("materia")%>
                    </legend>
                    <table>
                        <%
                            for(int c=0;c<etapas_Vector.size();c=c+2)
                            {
                        %>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/evaluarRubrica2.jsp?grupo=<%=request.getParameter("grupo")%>&etapa=<%=etapas_Vector.get(c)%>">
                                    <input type="button" value="Etapa <%=etapas_Vector.get(c+1)%>">
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
