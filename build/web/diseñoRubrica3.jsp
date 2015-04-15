<%-- 
    Document   : diseñoRubrica3
    Created on : 5/01/2015, 11:31:00 AM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>
            Diseño de rubrica
        </title>
        <%
            Vector actividades_vector = new Vector();
            actividades_vector = Materia.getActivadesByEtapa(Integer.parseInt(request.getParameter("etapa")));
            String materia=request.getParameter("materia");
            int etapa=Materia.getEtapa(Integer.parseInt(request.getParameter("etapa")));
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form>
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
                                <input type="text" readonly name="TXT_Materia" value="<%=materia%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Etapa
                            </td>
                            <td>
                                <input type="text" readonly name="TXT_Etapa" value="<%=etapa%>">
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Actividad
                    </legend>
                    <table>
                        <tr>
                            <th>
                                No. Act. en etapa
                            </th>
                            <th>
                                No. Act. en materia
                            </th>
                            <th>
                                Valor
                            </th>
                            <th>
                                Modificar
                            </th>
                        </tr>
                        <%
                            int actividadEtapa=1;
                            for(int c=0;c<actividades_vector.size();c=c+3)
                            {
                        %>
                        <tr>
                            <td>
                                <%=actividadEtapa%>
                            </td>
                            <td>
                                <%=actividades_vector.get(c+1)%>
                            </td>
                            <td>
                                <%=actividades_vector.get(c+2)%>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/diseñoRubrica4.jsp?actividad=<%=actividades_vector.get(c)%>&etapa=<%=etapa%>&materia=<%=materia%>&NoAct=<%=actividadEtapa%>">
                                    <input type="button" value="modificar"/>
                                </a>
                            </td>
                        </tr>
                        <%
                            actividadEtapa++;
                            }
                        %>
                    </table>
                </fieldset>
                    <table>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/menuRubricaSeleccion">
                                    <input type="button" value="Cancelar"/>
                                </a>
                            </td>
                        </tr>
                    </table>
            </form>
        </div>
    </body>
</html>
