<%-- 
    Document   : sabanaEvaluarExamen
    Created on : 3/03/2015, 01:32:55 PM
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
        <title>JSP Page</title>
        <%
            Vector examen_Vector=new Vector();
            examen_Vector=Materia.getExamenByIdExamen(Integer.parseInt(request.getParameter("idExamen")));
            Vector examenCalificacion_Vector=new Vector();
            examenCalificacion_Vector=Grupo.getExamenesByGrupo(Integer.parseInt(request.getParameter("grupo")),Integer.parseInt(request.getParameter("idExamen")));           
            int noLista=1;
        %>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
    </head>
    <body>
        <div class="DIV_Main" >
            <form method="Post" action="/SistemaEvaluacion/actualizarEvaluacionExamen_Servlet">
                <fieldset>
                    <legend>
                        Datos del examen
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
                                Tipo
                            </td>
                            <td>
                                <%=examen_Vector.get(1)%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Valor
                            </td>
                            <td>
                                <%=examen_Vector.get(0)%>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Calificaciones 
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
                        <%
                            for(int c=0;c<examenCalificacion_Vector.size();c=c+4)
                            {
                        %>
                        <tr>
                            <td>
                                <%=noLista%>
                                <input type="hidden" name="TXT_llave<%=noLista%>" value="<%=examenCalificacion_Vector.get(c)%>"/>
                            </td>
                            <td>
                                <%=examenCalificacion_Vector.get(c+1)%>
                            </td>
                            <td>
                                <%=examenCalificacion_Vector.get(c+2)%>
                            </td>
                            <td>
                                <input type="text" name="TXT_valor<%=noLista%>" value="<%=examenCalificacion_Vector.get(c+3)%>" required=""/>
                            </td>
                        </tr>
                        <%
                            noLista++;
                            }
                        %>
                        <tr>
                            <td>
                                <input type="hidden" name="TXT_CantidadAlumnos" value="<%=noLista%>"/>
                                <input type="submit" value="Actualiza"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>      
            </form>
        </div>
    </body>
</html>
