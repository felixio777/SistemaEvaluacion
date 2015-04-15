<%-- 
    Document   : agregarAlumnoGrupo
    Created on : 5/03/2015, 02:21:44 PM
    Author     : felix
--%>

<%@page import="Model.Grupo"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema de Evaluación</title>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            Vector grupos_vector = new Vector();
            grupos_vector = Grupo.getAllGrupos();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Get" action="/SistemaEvaluacion/agregarAlumno_Servlet">
                <fieldset>
                    <legend>
                        Agregar alumno
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <select name="TXT_Grupo">
                                    <%
                                        for (int c = 0; c < grupos_vector.size(); c = c + 2) {
                                    %>
                                    <option value="<%=grupos_vector.get(c + 1)%>">
                                        <%=grupos_vector.get(c + 1)%>
                                    </option>
                                    <%
                                        }
                                    %>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Matricula
                            </td>
                            <td>
                                <input type="text" name="TXT_Matricula" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido paterno
                            </td>
                            <td>
                                <input type="text" name="TXT_Paterno"  required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Apellido materno
                            </td>
                            <td>
                                <input type="text" name="TXT_Materno" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nombre(s)
                            </td>
                            <td>
                                <input type="text" name="TXT_Nombre" required=""/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="BTN_AgregarAlumno" value="Agregar alumno"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
            <form method="Get" action="agregarGrupo_Servlet">
                <fieldset>
                    <legend>
                        Agregar grupo
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <input type="text" name="TXT_Grupo">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="TXT_AgregarGrupo" value="Agregar grupo"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
