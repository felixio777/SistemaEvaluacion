<%-- 
    Document   : evaluarRubrica3
    Created on : 3/02/2015, 01:06:00 AM
    Author     : felix
--%>

<%@page import="Model.Actividad"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <%
            Vector criterios_vector=new Vector();
            criterios_vector=Actividad.getCriterioByActividad(Integer.parseInt(request.getParameter("actividad")));
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Get" action="/SistemaEvaluacion/evaluarRubricaServlet">
                <fieldset>
                    <legend>
                        Informacion general de rubrica
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Matricula
                            </td>
                            <td>
                                <input type="text" readonly="readonly" name="TXT_Matricula" value="<%=request.getParameter("matricula")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nombre
                            </td>
                            <td>
                                <input type="text" readonly="readonly" name="TXT_Nombre" value="<%=request.getParameter("nombre")%>"/>
                                <input type="hidden" name="TXT_IdActividad" value="<%=request.getParameter("actividad")%>"/>
                                <input type="hidden" name="TXT_Criterios" value="<%=((criterios_vector.size())/4)%>"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Uso de rubrica
                    </legend>
                    <table>
                        <%
                            int indice=1;
                            for(int c=0;c<criterios_vector.size();c=c+4)
                            {
                        %>
                        <tr>
                            <td colspan="2">
                                Se evalua <%=criterios_vector.get(c+3)%> Con un valor de <%=criterios_vector.get(c+2)%>%
                            </td>
                        </tr>
                        <%
                            Vector subcriterios_Vector=new Vector();
                            subcriterios_Vector=Actividad.getSubcriterioByCriterio(Integer.parseInt((criterios_vector.get(c)).toString()));
                            for(int c2=0;c2<subcriterios_Vector.size();c2=c2+5)
                            {
                        %>
                            <tr>
                                <td>
                                    <input type="radio" name="TXT_Criterio<%=indice%>" value="<%=subcriterios_Vector.get(c2)%>"/>
                                    <%=subcriterios_Vector.get(c2+3)%>
                                </td>
                                <td>
                                    Valor<%=subcriterios_Vector.get(c2+2)%>%
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br>
                                </td>
                            </tr>
                        <%
                             }
                        %>
                            <tr>
                                <td>
                                    <br>
                                    <br>
                                    <br>
                                </td>
                            </tr>
                        <%
                            indice++;
                            }
                        %>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <input type="submit" value="Salir"/>
                            </td>
                            <td>
                                <input type="submit" value="Guardar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
