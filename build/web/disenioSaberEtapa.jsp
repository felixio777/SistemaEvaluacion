<%-- 
    Document   : disenioSaberEtapa
    Created on : 30/01/2015, 10:36:32 AM
    Author     : felix
--%>

<%@page import="Model.Etapa"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <title>JSP Page</title>
        <%
            Vector dimension_Vector=new Vector();
            Etapa etapa=new Etapa();
            etapa.setIdEtapa(Integer.parseInt(request.getParameter("clave")));
            dimension_Vector=etapa.getActividadDimensionByEtapa();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/disenioSaberEtapa_Servlet">
                <fieldset>
                    <legend>
                        Matriz de saberes por etapa
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Unidad de aprendizaje
                            </td>
                            <td>
                                <input type="text" name="TXT_Materia" readonly="readonly" value="<%=request.getParameter("materia")%>"/>
                            </td>
                            <td>
                                Etapa
                            </td>
                            <td>
                                <input type="text" readonly="readonly" value="<%=request.getParameter("etapa")%>"/>
                            </td>
                            <td>
                                Clave
                            </td>
                            <td>
                                <input type="text" name="TXT_Etapa" value="<%=request.getParameter("clave")%>" readonly="readonly"/>
                            </td>
                            <td>
                                Cant. de dimensiones
                            </td>
                            <td>
                                <input type="text" name="TXT_CantDimensiones" value="<%=(dimension_Vector.size())/4%>">
                            </td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <th>
                                Dimension
                            </th>
                            <th>
                                Actividad
                            </th>
                            <th>
                                Titulo
                            </th>
                            <th>
                                Sabe conocer
                            </th>
                            <th>
                                Sabe hacer
                            </th>
                            <th>
                                Sabe ser
                            </th>
                        </tr>
                        <%
                            int dimension=1;
                            for(int c=0;c<dimension_Vector.size();c=c+4)
                            {
                        %>
                        <tr>
                            <td>
                                <%=dimension_Vector.get(c)%>
                            </td>
                            <td>
                                <%=dimension_Vector.get(c+2)%>
                            </td>
                            <td>
                                <%=dimension_Vector.get(c+3)%>                         
                                 <input type="hidden" name="TXT_Dimension<%=dimension%>" value="<%=dimension_Vector.get(c+1)%>"/>
                            </td>
                            <td>
                                <textarea name="TXT_Conoce<%=dimension%>">
                                </textarea>
                            </td>
                            <td>
                                <textarea name="TXT_Hacer<%=dimension%>">
                                </textarea>
                            </td>
                            <td>
                                <textarea name="TXT_Ser<%=dimension%>">
                                </textarea>
                            </td>
                        </tr>
                        <%
                            dimension++;
                            }
                        %>
                    </table>
                    <table>
                        <tr>
                            <td>
                                <input type="submit" value="Salir sin guardar" name="TXT_Salir"/>
                            </td>
                            <td>
                                <input type="submit" value="Guardar matriz" name="TXT_Guardar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
