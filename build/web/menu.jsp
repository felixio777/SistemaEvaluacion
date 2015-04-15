<%-- 
    Document   : menu
    Created on : 8/12/2014, 01:42:07 PM
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>Menu</title>
        <%
            HttpSession sesion = request.getSession(true);
            sesion.getAttribute("noEmpleado");
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Empleado No.<%=sesion.getAttribute("noEmpleado")%>
                    </legend>
                    <table>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/menuRubricaSeleccion.jsp">
                                    <input type="button" name="BTN_rubrica" id="BTN_rubrica" value="Unidad de aprendizaje" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/menuGrupoSeleccion.jsp">
                                    <input type="button" name="BTN_Grupo" id="BTN_grupo" value="Grupo"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/agregarClase.jsp">
                                    <input type="button" name="BTN_Clase" id="BTN_Clase" value="Agregar Clase"/>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/agregarAlumnoGrupo.jsp">
                                    <input type="button" name="BTN_AlumnoGrupo" id="BTN_AlumnoGrupo" value="Agregar alumno/grupo"/>
                                </a>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
