<%-- 
    Document   : SabanaEvaluarEtapa
    Created on : 2/03/2015, 09:46:15 PM
    Author     : felix
--%>

<%@page import="java.util.Vector"%>
<%@page import="Model.Materia"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            int idEtapa=Integer.parseInt(request.getParameter("idEtapa"));
            int grupo=Integer.parseInt(request.getParameter("grupo"));
            int cantidadActividades=Materia.getActividadCountByEtapa(idEtapa);
            Vector actividades=new Vector();
            actividades=Materia.getActividadesToEvaluar(grupo, idEtapa);
        %>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
    </head>
    <body>
        <Div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/evaluarEtapa_Servlet">
                <fieldset>
                    <legend>
                        Datos de la etapa
                    </legend>
                    <table>
                        <tr>
                            <td>
                                <input type="hidden" name="TXT_idEtapa" value="<%=idEtapa%>">
                            </td>
                            <td>
                                <input type="hidden" name="TXT_grupo" value="<%=grupo%>">
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Evaluar etapa
                    </legend>
                    <table>
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
                            <%
                                for(int i=0;i<cantidadActividades;i++)
                                {
                            %>
                            <td>
                                Act.<%=i+1%>
                            </td>
                            <%
                                }
                            %>
                        </tr>
                        <%
                                int noLista=1;
                            for(int c=0;c<actividades.size();c=c+(4*cantidadActividades))
                            {
                        %>
                        <tr>
                            <td>
                                <%=noLista%>
                            </td>
                            <td>
                                <%=actividades.get(c+1)%>
                            </td>
                            <td>
                                <%=actividades.get(c+2)%>
                            </td>
                            <%
                                int c2=0;
                                while(c2<cantidadActividades)
                                {
                            %>
                            <td>
                                <input type="text" name="TXT_EvaluacionActividad<%=actividades.get(c+(c2*4))%>" value="<%=actividades.get(c+3+(c2*4))%>"/>
                            </td>
                            <%
                                c2++;
                                }
                            %>
                        </tr>
                        <%
                                noLista++;
                            }
                        %>
                        <tr>
                            <td>
                                <input type="submit" value="Actualizar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </Div>
    </body>
</html>
