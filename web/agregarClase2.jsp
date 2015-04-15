<%-- 
    Document   : agregarClase2
    Created on : 20/02/2015, 12:05:28 AM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="Model.Grupo"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector grupo_vector=new Vector();
            Grupo grupo= new Grupo();
            grupo.setIdGrupo(Integer.parseInt(request.getParameter("TXT_Grupo")));
            grupo_vector=grupo.getGrupoById();
            
            Vector materia_vector=new Vector();
            Materia materia=new Materia();
            materia.setIdMateria(Integer.parseInt(request.getParameter("TXT_Materia")));
            materia_vector=materia.getMateriaById();
            
            Vector dias_vector=new Vector();
            dias_vector=Grupo.getDias();
            
            Vector horas_vector=new Vector();
            horas_vector=Grupo.getHoras();
            
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/agregarClase_Servlet">
                <fieldset>
                    <legend>
                        Datos Generales
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <input type="text" readonly="" name="TXT_NoGrupo" value="<%=grupo_vector.get(1)%>">
                                <input type="hidden" name="TXT_Grupo" value="<%=grupo_vector.get(0)%>">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <input type="text" readonly="" value="<%=materia_vector.get(1)%>">
                                <input type="hidden" name="TXT_Materia" value="<%=materia_vector.get(0)%>">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia
                            </td>
                            <td>
                                <input type="text" readonly="" name="TXT_Frecuencia" value="<%=materia_vector.get(2)%>"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Matriz de horarios
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Hora / Dia
                            </td>
                            <%
                                for(int c=0;c<dias_vector.size();c=c+2)
                                {
                            %>
                            <td>
                                <%=dias_vector.get(c+1)%>
                            </td>
                            <%
                                }
                            %>
                        </tr>
                        <%
                                int posVector=0;
                                int idHora=1;
                                for(int c2=0;c2<(horas_vector.size()/2);c2++)
                                {
                                    
                        %>
                        <tr>
                            <td>
                                <%= horas_vector.get(posVector+1)%>
                            </td>
                            <%
                                for(int dia=1;dia<7;dia++)
                                {
                            %>
                            <td>
                                <input type="checkbox" name="CHK_<%=dia%><%=idHora%>"/>
                            </td>
                            <%
                                }
                            %>
                        </tr>
                        <%
                                posVector=posVector+2;
                                idHora++;
                                }
                        %>
                        <tr>
                            <td>
                                <input type="submit" name="TXT_Aceptar" value="Crear grupo"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
