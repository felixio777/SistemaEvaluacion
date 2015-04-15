<%-- 
    Document   : menuGrupoSeleccion
    Created on : 29/12/2014, 01:53:04 PM
    Author     : felix
--%>

<%@page import="Model.Empleado"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grupos activos</title>
         <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            HttpSession sesion = request.getSession(true);
            Empleado empleado = new Empleado();
            empleado.setNoEmpleado((sesion.getAttribute("noEmpleado")).toString());
            Vector grupos_vector = new Vector();
            grupos_vector = empleado.getGrupos();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Empleado No.  <%=sesion.getAttribute("noEmpleado")%>
                    </legend>
                    <table>
                        <tr>
                            <th>
                                Grupo
                            </th>
                            <th>
                                Materia
                            </th>
                            <th>
                                Asistencia
                            </th>
                            <th>
                                Sabana
                            </th>
                            <th>
                                Rubrica
                            </th>
                            <th>
                                Retroalimentacion
                            </th>
                            <th>
                                Alumnos en riesgo
                            </th>
                        </tr>
                        <%
                            for (int i = 0;i < grupos_vector.size();i = i + 5) {
                        %>
                        <tr>
                           
                            <td>
                                <%= grupos_vector.get(i + 2)%>
                            </td>
                            <td>
                                <%= grupos_vector.get(i + 3)%>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/asistencia.jsp?llave=<%= grupos_vector.get(i)%>&grupo=<%=grupos_vector.get(i + 2)%>&idGrupo=<%=grupos_vector.get(i+1)%>">
                                    <input type="button" name="<%=grupos_vector.get(i)%>" value="Asistencia">
                                </a>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/sabana.jsp?llave=<%=grupos_vector.get(i)%>&grupo=<%=grupos_vector.get(i+2)%>&materia=<%=grupos_vector.get(i+3)%>&idMateria=<%=grupos_vector.get(i+4)%>">
                                    <input type="button" name="<%=grupos_vector.get(i)%>" value="Sabana">
                                </a>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/evaluarRubrica1.jsp?grupo=<%=grupos_vector.get(i+2)%>&materia=<%=grupos_vector.get(i+3)%>&idMateria=<%=grupos_vector.get(i+4)%>">
                                    <input type="button" name="<%=grupos_vector.get(i)%>" value="Rubrica">
                                </a>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/retroalimentacionRubrica1.jsp?grupo=<%=grupos_vector.get(i+2)%>&materia=<%=grupos_vector.get(i+3)%>&idMateria=<%=grupos_vector.get(i+4)%>">
                                    <input type="button" name="<%=grupos_vector.get(i)%>" value="Retroalimentacion">
                                </a>        
                            </td>
                            <td>
                                <input type="button" name="<%=grupos_vector.get(i)%>" value="Alumnos en riesgo">
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
