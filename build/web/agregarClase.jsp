<%-- 
    Document   : agregarClase
    Created on : 19/02/2015, 11:50:48 PM
    Author     : felix
--%>

<%@page import="Model.Grupo"%>
<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector materias_vector=new Vector();
            materias_vector=Materia.getMaterias();
            Vector grupos_vector=new Vector();
            grupos_vector=Grupo.getAllGrupos();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="get" action="/SistemaEvaluacion/agregarClase2.jsp">
                <fieldset>
                    <legend>
                        Agregar horario
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <select name="TXT_Grupo">
                                    <%
                                        for(int i=0;i<grupos_vector.size();i=i+2)
                                        {
                                    %>
                                    <option value="<%=grupos_vector.get(i)%>">
                                        <%=grupos_vector.get(i+1)%>
                                    </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <select name="TXT_Materia">
                                    <%
                                        for(int i=0;i<materias_vector.size();i=i+2)
                                        {
                                    %>
                                    <option value="<%=materias_vector.get(i)%>">
                                        <%=materias_vector.get(i+1)%>
                                    </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" value="Seleccion horas"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
