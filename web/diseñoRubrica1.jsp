<%-- 
    Document   : diseñoRubrica1
    Created on : 4/01/2015, 11:16:14 PM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diseño Rubrica</title>
        <%
            Vector materias_vector = new Vector();
            materias_vector = Materia.getMaterias();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Materias
                    </legend>
                    <table>
                        <tr>
                            <th>
                                Materia
                            </th>
                        </tr>
                        <%
                            for (int c = 0; c < materias_vector.size(); c = c + 2) {
                        %>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/diseñoRubrica2.jsp?materia=<%=materias_vector.get(c)%>">
                                    <input type="button" value="<%=materias_vector.get(c + 1)%>">
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </fieldset>
                <table>
                    <tr>
                        <td>
                            <a href="/SistemaEvaluacion/menuRubricaSeleccion.jsp">
                                <input type="button" value="Cancelar"/>
                            </a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
