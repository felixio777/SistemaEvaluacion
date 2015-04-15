<%-- 
    Document   : reporteAsistenciaIndividual
    Created on : 19/03/2015, 08:43:39 AM
    Author     : felix
--%>

<%@page import="Model.Alumno"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector asistencia_Vector=new Vector();
            Alumno alumno=new Alumno();
            alumno.setMatricula(Integer.parseInt(request.getParameter("matricula")));
            asistencia_Vector=alumno.getAsistenciaByAlumno(Integer.parseInt(request.getParameter("llave")));
            float cantidadAsistencia=0;
            float cantidadAsistenciaNeta=0;
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/actualizarAsistencia_Servlet">
                <fieldset>
                    <legend>
                        Datos del alumno
                    </legend>
                    <table>
                        <tr>
                            <td>
                                <input type="hidden" name="TXT_Llave" value="<%=request.getParameter("llave")%>"/>
                                Matricula
                            </td>
                            <td>
                                <input type="text" name="TXT_Matricula" value="<%=request.getParameter("matricula")%>" readonly=""/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Asistencias
                    </legend>
                    <table>
                        <tr>
                            <th>
                                Fecha
                            </th>
                            <th>
                                Asis. Obtenida
                            </th>
                            <th>
                                Asis. Posible
                            </th>
                        </tr>
                        <%
                            int dia=1;
                            for(int c=0;c<asistencia_Vector.size();c=c+4)
                            {
                        %>
                        <tr>
                            <td>
                                <%=asistencia_Vector.get(c+1)%>
                            </td>
                            <td>
                                <input name="TXT_Id<%=dia%>" type="hidden" value="<%=asistencia_Vector.get(c)%>"/>
                                <input name="TXT_Asistencia<%=dia%>" type="text" value="<%=asistencia_Vector.get(c+2)%>"/>
                            </td>
                            <td>
                                <%=asistencia_Vector.get(c+3)%>
                            </td>
                        </tr>
                        <%
                            cantidadAsistencia=
                                    cantidadAsistencia 
                                    +
                                    Float.parseFloat((asistencia_Vector.get(c+2)).toString());
                            cantidadAsistenciaNeta=
                                    cantidadAsistenciaNeta
                                    +
                                    Float.parseFloat((asistencia_Vector.get(c+3)).toString());
                            dia++;
                            }
                        %>
                        <tr>
                            <td>
                                <input name="TXT_CantidadDias" type="hidden" value="<%=(dia-1)%>"/>
                                Total
                            </td>
                            <td>
                                <%=cantidadAsistencia%>/<%=(cantidadAsistencia/cantidadAsistenciaNeta)*100%>%
                            </td>
                            <td>
                                <%=cantidadAsistenciaNeta%>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <input type="submit" value="Actualizar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
