<%-- 
    Document   : disenioSaber2
    Created on : 30/01/2015, 09:26:01 AM
    Author     : felix
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.Materia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector materias_vector = new Vector();
            materias_vector = Materia.getEtapasByMateria(Integer.parseInt(request.getParameter("materia")));
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Datos generales
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <input type="text" readonly name="TXT_Materia" value="<%=Materia.getMateriaNombre(Integer.parseInt(request.getParameter("materia")))%>"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Etapas
                    </legend>
                    <table>
                        <tr>
                            <th>
                                Etapas
                            </th>
                        </tr>
                        <%
                            for (int i = 0; i < materias_vector.size(); i = i + 2) {
                        %>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/disenioSaberEtapa.jsp?clave=<%=materias_vector.get(i)%>&materia=<%=Materia.getMateriaNombre(Integer.parseInt(request.getParameter("materia")))%>&etapa=<%=materias_vector.get(i + 1)%>">
                                    <input type="button" value="Matriz de saber de etapa <%=materias_vector.get(i + 1)%>"/>
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        <!--<tr>
                            <td>
                                <a href="/SistemaEvaluacion/disenioSaberGlobal.jsp?materia=<%=request.getParameter("materia")%>">
                                    <input type="button" value="Matriz de saber Global  "/>
                                </a>
                            </td>
                        </tr>-->
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
