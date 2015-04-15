<%-- 
    Document   : diseñoMateria3
    Created on : 31/12/2014, 03:57:27 PM
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
        <title>Diseño de materia</title>
        <%
            Vector dimensiones_vector = new Vector();
            dimensiones_vector = Actividad.getDimensiones();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" name="FRM_Main" action="/SistemaEvaluacion/disenioMateria_Servlet">
                <fieldset>
                    <legend>
                        Diseño de materia <%=request.getParameter("TXT_Nombre")%>
                    </legend>
                    <fieldset>
                        <legend>
                            Informacion
                        </legend>
                        <table>
                            <tr>
                                <td>
                                    Nombre
                                </td>
                                <td>
                                    <input type="text" name="TXT_Nombre" readonly=""  value="<%=request.getParameter("TXT_Nombre")%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Frecuencia/Semana
                                </td>
                                <td>
                                    <input type="text" name="TXT_Frecuencia" readonly="" value="<%=request.getParameter("TXT_Frecuencia")%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Etapas
                                </td>
                                <td>
                                    <input type="text" name="TXT_Etapas" readonly="" value="<%=request.getParameter("TXT_Etapas")%>"/>
                                </td>
                            </tr>
                            <%
                                for (int i = 0; i < Integer.parseInt(request.getParameter("TXT_Etapas")); i++) {
                            %>
                            <tr>
                                <td>
                                    --Cantidad de act. etapa <%=i + 1%>
                                </td>
                                <td>
                                    <input type="text" name="TXT_Etapa<%=i + 1%>" readonly="" value="<%=request.getParameter(("TXT_Etapa" + (i + 1)))%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ----Valor de etapa 
                                </td>
                                <td>
                                        <input type="text" name="TXT_Valor<%=i + 1%>" readonly="" value="<%=request.getParameter(("TXT_Valor" + (i + 1)))%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    ----% Nivel Dominio
                                </td>
                                <td>
                                        <input type="text" name="TXT_Nivel<%=i + 1%>" readonly="" value="<%=request.getParameter(("TXT_Nivel"+(i + 1)))%>"/>
                                </td>
                            </tr>
                            <%
                                }
                            %>

                            <tr>
                                <td>
                                    Examenes
                                </td>
                                <td>
                                    <input type="text" name="TXT_Examenes" readonly="" value="<%=request.getParameter("TXT_Examenes")%>"/>
                                </td>
                            </tr>
                            <%
                                for (int j = 0; j < Integer.parseInt(request.getParameter("TXT_Examenes")); j++) {
                            %>
                            <tr>
                                <td>
                                    -Examen <%=j + 1%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    --idTipo 
                                </td>
                                <td>
                                    <input type="text" name="TXT_TipoExamen<%=j + 1%>"  readonly="" value="<%=request.getParameter("TXT_TipoExamen" + (j + 1))%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    --Valor 
                                </td>
                                <td>
                                    <input type="text" name="TXT_ValorExamen<%=j + 1%>" readonly="" value="<%=request.getParameter("TXT_ValorExamen" + (j + 1))%>">
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            <tr>
                                <td>
                                    PIA
                                </td>
                                <%
                                    if(request.getParameter("TXT_PIA")!=null)
                                    {
                                %>
                                <td>
                                    <input type="text" name="TXT_PIA"  value="<%=request.getParameter("TXT_PIA")%>" readonly/>
                                </td>
                                <td>
                                    <input type="text" name="TXT_TituloPIA" value="<%=request.getParameter("TXT_TituloPIA")%>" readonly/>
                                </td>
                                <td>
                                    <input type="text" name="TXT_DescripcionPIA" value="<%=request.getParameter("TXT_DescripcionPIA")%>" readonly/>
                                </td>
                                <%
                                    }
                                    else
                                    {
                                %>
                                <td>
                                    <input type="text" name="TXT_PIA"  value="0" readonly/>
                                </td>
                                <%
                                    }
                                %>
                            </tr>
                        </table>
                    </fieldset>
                    <fieldset>
                        <legend>
                            Dimensiones
                        </legend>
                        <table>
                            <%
                                int valor = 1;
                                for (int etapa = 0; etapa < Integer.parseInt(request.getParameter("TXT_Etapas")); etapa++) {
                            %>
                            <%
                                for (int actividad = 0; actividad < Integer.parseInt(request.getParameter("TXT_Etapa" + (etapa + 1))); actividad++) {
                            %>
                            <tr>
                                <td>
                                    Etapa <%=etapa + 1%> 
                                </td>
                                <td>
                                    Valor de etapa<input type="text" readOnly="" value="<%=request.getParameter(("TXT_Valor" + (etapa + 1)))%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                   Act <%=actividad + 1%>
                                </td>
                                <td>
                                    Valor de act.<input type="text" name="TXT_ValorAct<%=valor%>">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <table>
                                        <%
                                            for (int dimension = 0; dimension < dimensiones_vector.size(); dimension = dimension + 2) {
                                        %>
                                        <tr>
                                            <td>
                                                <%=dimensiones_vector.get(dimension+1)%>
                                            </td>
                                            <td>
                                                <input type="checkbox" name="TXT_Dimension<%=valor%>" value="<%=dimensiones_vector.get(dimension)%>"/>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %> 
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <br/>
                                    <br/>
                                </td>
                            </tr>
                            <%
                                    valor++;
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
                                <a href="/SistemaEvaluacion/menuRubricaSeleccion.jsp">
                                    <input type="button" value="Cancelar"/>
                                </a>
                            </td>
                            <td>
                                <input type="submit" value="Finalizar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
