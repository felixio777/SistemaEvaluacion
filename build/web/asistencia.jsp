<%-- 
    Document   : asistencia
    Created on : 29/12/2014, 09:27:24 PM
    Author     : felix
--%>

<%@page import="Model.Grupo"%>
<%@page import="Model.Alumno"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>Asistencia</title>
        <%
            HttpSession sesion = request.getSession(true);

            Vector alumnos_vector = new Vector();
            alumnos_vector = Alumno.getAlumnosGrupo(Integer.parseInt(request.getParameter("grupo")));

            Vector dias_vector = new Vector();
            dias_vector = Grupo.getDiasAsistencia(Integer.parseInt(request.getParameter("llave")));
            int totalDias = dias_vector.size() / 2;
        %>
    </head>
    <body>
        <Div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/asistencia_Servlet">
                <table border="1">
                    <tr>
                        <td colspan="4">
                            <%=sesion.getAttribute("noEmpleado")%>
                            <input type="hidden" name="TXT_RelMatGru" value="<%=request.getParameter("llave")%>"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            Dia
                        </td>
                        <td>
                            <select name="TXT_Dia">
                                <%
                                    for (int c = 0; c < dias_vector.size(); c = c + 2) {
                                %>
                                <option value="<%=dias_vector.get(c)%>">
                                    <%=dias_vector.get(c + 1)%>
                                </option>
                                <%
                                    }
                                %>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            No.
                        </td>
                        <td>
                            Matricula
                        </td>
                        <td>
                            Alumno
                        </td>
                        <td>
                            Asistencia
                        </td>
                    </tr>

                    <%
                        int lista = 1;
                        for (int i = 0; i < alumnos_vector.size(); i = i + 2) {
                    %>
                    <tr>
                        <td>
                            <%=lista%>
                        </td>
                        <td>
                            <%=alumnos_vector.get(i)%>
                            <input type="hidden" name="TXT_Alumno<%=lista%>" value="<%=alumnos_vector.get(i)%>">
                        </td>
                        <td>
                            <%=alumnos_vector.get(i + 1)%>
                        </td>
                        <td>
                            <input type="number" value="0" min="0" max="1" step="0.5" name="TXT_Asistencia<%=alumnos_vector.get(i)%>"/>
                        </td>
                    </tr>
                    <%
                            lista++;
                        }
                    %>
                </table>
                <table>
                    <tr>
                        <td>
                            <input type="hidden" name="TXT_TotalAlumno" value="<%=lista%>"/>
                            <a href="/SistemaEvaluacion/menu.jsp">
                                <input type="button" value="Cancelar"/>
                            </a>
                        </td>
                        <td>
                            <input type="submit" value="Guardar y salir"/>
                        </td>
                        <td>
                            <a href="/SistemaEvaluacion/reporteAsistencia.jsp?llave=<%=request.getParameter("llave")%>&idGrupo=<%=request.getParameter("idGrupo")%>&grupo=<%=request.getParameter("grupo")%>" target="_blank">
                                <input type="button" value="Ver reporte"/>
                            </a>
                        </td>
                    </tr>
                </table>
            </form>
        </Div>
    </body>
</html>
