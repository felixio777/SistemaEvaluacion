<%-- 
    Document   : sabanaEvaluarPia
    Created on : 21/03/2015, 08:13:29 PM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="Model.Alumno"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            int grupo = Integer.parseInt(request.getParameter("grupo"));
            Vector alumnos_Vector = new Vector();
            alumnos_Vector = Alumno.getAlumnosGrupo(grupo);
            Materia materia=new Materia();
            materia.setIdMateria(Integer.parseInt(request.getParameter("idMateria")));
            Vector pia_Vector= new Vector();
            pia_Vector=materia.getPia();
            
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Evaluar PIA
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <%=request.getParameter("materia")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <%=request.getParameter("grupo")%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Descripcion
                            </td>
                            <td>
                                <%=pia_Vector.get(3)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Titulo
                            </td>
                            <td>
                                <%=pia_Vector.get(4)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Valor
                            </td>
                            <td>
                                <%=pia_Vector.get(2)%>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Calificaciones Actuales
                    </legend>
                    <table>
                        <tr>
                            <th>
                                No.
                            </th>
                            <th>
                                Nombre
                            </th>
                            <th>
                                Matricula
                            </th>
                            <th>
                                Calificacion
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <input type="submit" value="Actualizar"
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
