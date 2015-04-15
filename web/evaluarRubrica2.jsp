<%-- 
    Document   : evaluarRubrica2
    Created on : 2/02/2015, 11:33:29 PM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page import="Model.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            Vector alumnos_vector= new Vector();
            alumnos_vector=Alumno.getAlumnosGrupo(Integer.parseInt(request.getParameter("grupo")));
            Vector actividades_vector=new Vector();
            actividades_vector=Materia.getActivadesByEtapa(Integer.parseInt(request.getParameter("etapa")));
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Selecciona alumno y etapa 
                    </legend>
                    <table class="Lista">
                        <tr>
                            <th>
                                Matricula
                            </th>
                            <th>
                                Nombre
                            </th>
                            <th>
                                Actividad
                            </th>
                        </tr>
                        <%
                            for(int c=0;c<alumnos_vector.size();c=c+2)
                            {
                        %>
                        <tr>
                            <td>
                                <%=alumnos_vector.get(c)%>
                            </td>
                            <td>
                                <%=alumnos_vector.get(c+1)%>
                            </td>
                            <%
                                for(int c2=0;c2<actividades_vector.size();c2=c2+3)
                                {
                            %>
                            <td>
                                <a href="/SistemaEvaluacion/evaluarRubrica3.jsp?matricula=<%=alumnos_vector.get(c)%>&nombre=<%=alumnos_vector.get(c+1)%>&actividad=<%=actividades_vector.get(c2)%>">
                                    <input type="button" value="Actividad <%=actividades_vector.get(c2+1)%>"/>
                                </a>
                            </td>
                            <%
                                }
                            %>
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
