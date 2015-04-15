<%-- 
    Document   : reporteAsistencia
    Created on : 26/02/2015, 11:14:27 PM
    Author     : felix
--%>

<%@page import="Model.Grupo"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector alumnos_vector=new Vector();
            int idRelMatGru=Integer.parseInt(request.getParameter("llave"));
            alumnos_vector=Grupo.getAsistenciaAcumulada(idRelMatGru);
            float asistenciaNetaTotal=Grupo.getAsistenciaNetaTotal(Integer.parseInt(request.getParameter("llave")));
            float porcentajeAsistencia=100;
            HttpSession sesion = request.getSession(true);
            
        %>
    </head>
    <body>
        <DIV class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/getReporteAsistencia">
                <fieldset >
                    <legend>
                        Datos generales
                    </legend>
                    <table>
                        <tr>
                            <td>
                                No. Empleado
                            </td>
                            <td>
                                <input type="Text" name="TXT_NoEmpleado" value="<%=sesion.getAttribute("noEmpleado")%>"/>
                                <input type="Hidden" name="TXT_grupo" value="<%=request.getParameter("grupo")%>"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Reporte de asistencia
                    </legend>
                    <table mame="Table_Asistencia">
                        <tr>
                            <td>
                                No.
                            </td>
                            <td>
                                Nombre
                            </td>
                            <td>
                                Matricula
                            </td>
                            <td>
                                Acumulado
                            </td>
                            <td>
                                Posibles
                            </td>
                            <td>
                                Porcentajes
                            </td>
                        </tr>
                        <%
                            int noLista=1;
                            for(int c=0;c<alumnos_vector.size();c=c+3)
                            {
                                porcentajeAsistencia=100.0f*(
                                                            Float.parseFloat((alumnos_vector.get(c)).toString())/
                                                            asistenciaNetaTotal                                                            
                                                            );
                        %>
                        <tr>
                            <td>
                                <%=noLista%>
                                <input type="hidden" name="TXT_noLista<%=noLista%>" value="<%=noLista%>"/>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/reporteAsistenciaIndividual.jsp?llave=<%=request.getParameter("llave")%>&matricula=<%=alumnos_vector.get(c+1)%>" target="_blank">
                                    <%=alumnos_vector.get(c+2)%>
                                    <input type="hidden" name="TXT_nombre<%=noLista%>" value="<%=alumnos_vector.get(c+2)%>"
                                </a>
                            </td>
                            <td>
                                <%=alumnos_vector.get(c+1)%>
                                <input type="hidden" name="TXT_matricula<%=noLista%>" value="<%=alumnos_vector.get(c+1)%>"/>
                            </td>
                            <td>
                                <%=alumnos_vector.get(c)%>
                                <input type="hidden" name="TXT_acumulada<%=noLista%>" value="<%=alumnos_vector.get(c)%>"/>
                            </td>
                            <td>
                                <%=asistenciaNetaTotal%>
                                <input type="hidden" name="TXT_netaTotal" value="<%=asistenciaNetaTotal%>"/>
                            </td>
                            <td>
                               <%=porcentajeAsistencia%>
                              <input type="hidden" name="TXT_porcentaje<%=noLista%>" value="<%=porcentajeAsistencia%>"/>
                            </td>
                           
                        </tr>
                        <%
                            noLista++;
                            }
                        %>
                    </table>
                </fieldset>
                <table>
                    <tr>
                        <td>
                            <input type="hidden" name="TXT_totalAlumnos" value="<%=noLista%>"/>
                            <input type="submit" value="Descargar reporte"/>
                        </td>
                    </tr>
                </table>
            </form>
        </DIV>
    </body>
</html>
