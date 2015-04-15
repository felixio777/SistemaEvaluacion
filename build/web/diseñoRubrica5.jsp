<%-- 
    Document   : diseñoRubrica5
    Created on : 5/01/2015, 01:40:51 PM
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diseño Rubrica</title>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/disenioRubricaServlet">
                <fieldset>
                    <legend>
                        Diseño de Rubrica
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <input type="text" name="TXT_Materia" value="<%=request.getParameter("TXT_Materia")%>"/>
                            </td>
                            <td>
                                Etapa
                            </td>
                            <td>
                                <input type="text" name="TXT_Etapa" value="<%=request.getParameter("TXT_Etapa")%>"/>
                            </td>
                            <td>
                                Actividad No.
                            </td>
                            <td>
                                <input type="text" name="TXT_Actividad" value="<%=request.getParameter("TXT_Actividad")%>"/>
                            </td>
                            <td>
                                Titulo
                            </td>
                            <td>
                                <input type="text" name="TXT_Titulo" value="<%=request.getParameter("TXT_Titulo")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="8">
                                <textarea cols="40" rows="8" readonly="">
                                    <%=request.getParameter("TXT_Comentarios")%>
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cant. Criterios
                            </td>
                            <td>
                                <input type="text" name="TXT_Criterios" readonly="" value="<%=request.getParameter("TXT_Criterios")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Cant. Rangos
                            </td>
                            <td>
                                <input type="text" name="TXT_Rango" readonly="" value="<%=request.getParameter("TXT_Rango")%>"/>
                            </td>
                        </tr>
                    </table>
                    <!--REGION A DUPLICAR CON FORS-->
                    <table>
                        <%
                            String criterio;
                            String rango;
                            for (int c = 0; c < Integer.parseInt(request.getParameter("TXT_Criterios")); c++)
                            {
                                criterio=Integer.toString(c+1);
                        %>
                        <tr>
                            <td colspan="5">
                                <hr>
                                <hr>
                                <hr>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Criterio <%=c + 1%>
                            </td>
                            <td>
                                ¿Que se evaluo?
                            </td>
                            <td>
                                <input type="text" name="TXT_Evaluo<%=criterio%>"/>
                            </td>
                            <td>
                                Valor
                            </td>
                            <td>
                                <input type="text" name="TXT_Valor<%=criterio%>"/>
                            </td>
                        </tr>
                        <%
                            for (int c2 = 0; c2 < Integer.parseInt(request.getParameter("TXT_Rango")); c2++) 
                            {
                                
                                String nombre=Integer.toString(c+1)+Integer.toString(c2+1);
                        %>
                        <td rowspan="2">
                            Rango <%=c2+1%>
                        </td>
                        <td>
                            Puntos que vale
                        </td>
                        <td>
                            Explicacion 
                        </td>
                        <td>
                            Retroalimentacion
                        </td>
                        <tr>
                            <td>
                                <input type="text" name="TXT_Puntos<%=nombre%>">
                            </td>
                            <td>
                                <textarea name="TXT_Explicacion<%=nombre%>">
                                    
                                </textarea>
                            </td>
                            <td>
                                <textarea name="TXT_Retroalimentacion<%=nombre%>">
                                    
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <hr>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                        <%
                            }
                        %>
                    </table>
                </fieldset>
                    <table>
                        <tr>
                            <td>
                                <input type="submit" name="BTN_Salir" value="Salir sin guardar"/>
                            </td>
                            <td>
                                <input type="submit" name="BTN_Agregar" value="Agregar rúbrica"/>
                            </td>
                        </tr>
                    </table>
            </form>
        </div>
    </body>
</html>
