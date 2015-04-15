<%-- 
    Document   : disenioActividad4
    Created on : 19/02/2015, 09:35:46 AM
    Author     : felix
--%>

<%@page import="Model.Actividad"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diseño Rubrica</title>
        <%
            Vector dimensiones_vector = new Vector();
            dimensiones_vector = Actividad.getDimensionesByActividad(Integer.parseInt(request.getParameter("actividad")));
        %>
    </head>
    <body>
         <div class="DIV_Main">
            <form method="get" action="/SistemaEvaluacion/disenioActividad_Servlet">
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
                                <input type="text" readonly name="TXT_Materia" value="<%=request.getParameter("materia")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Etapa
                            </td>
                            <td>
                                <input type="text" readonly name="TXT_Etapa" value="<%=request.getParameter("etapa")%>">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Dimensiones que abarca:
                            </td>
                        </tr>
                        <%
                            for (int i = 0; i < dimensiones_vector.size(); i++) 
                            {
                        %>
                        <tr>
                            <td colspan="2">
                                --<%=dimensiones_vector.get(i)%>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Diseño de Rubrica, Actividad <%=request.getParameter("NoAct")%>
                    </legend>
                    <table>
                        <tr>
                            <td>
                                idActividad
                            </td>
                            <td>
                                <input type="text" name="TXT_Actividad" value="<%=request.getParameter("actividad")%>" readonly=""/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Titulo
                            </td>
                            <td>
                                <input type="text" name="TXT_Titulo"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Comentarios
                            </td>
                            <td>
                                <textarea name="TXT_Comentarios" cols="20" rows="10" maxlength="1000">
                                    
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/menuRubricaSeleccion.jsp">
                                    <input type="button" name="TXT_Cancelar" value="Cancelar"/>
                                </a>
                            </td>
                            <td>
                                <input type="submit" value="Aceptar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
