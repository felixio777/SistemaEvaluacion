<%-- 
    Document   : diseñoMateria2
    Created on : 31/12/2014, 12:42:53 PM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diseñando materia:<%=request.getParameter("TXT_Nombre")%> </title>
        <%
            Vector TipoExamen_vector = new Vector();
            TipoExamen_vector = Materia.getExamenTipo();
        %>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Get" name="FRM_Main" action="/SistemaEvaluacion/diseñoMateria3.jsp">
                <fieldset>
                    <legend>
                        Diseño de <%=request.getParameter("TXT_Nombre")%>
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
                                    <input type="text" name="TXT_Nombre" readonly="" value="<%=request.getParameter("TXT_Nombre")%>"/>
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
                                    <input type="text" name="TXT_Etapas" readonly value="<%=request.getParameter("TXT_Etapas")%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Examenes
                                </td>
                                <td>
                                    <input type="text" name="TXT_Examenes" readonly value="<%=request.getParameter("TXT_Examenes")%>"/>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <% if (request.getParameter("CHK_PIA") != null) {
                                    %>
                                    Esta materia cuenta con un producto integrador
                                    <%
                                    } else {
                                    %>
                                    Esta materia no cuenta con ningun producto integrador
                                    <%
                                        }
                                    %>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <% if (request.getParameter("CHK_PIA") != null) {
                    %>      
                    <fieldset>
                        <legend>
                            Producto Integrados
                        </legend>
                        <table>
                            <tr>
                                <td>
                                    Titulo
                                </td>
                                <td>
                                    <input type="Text" name="TXT_TituloPIA"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Descripcion
                                </td>
                                <td>
                                    <textarea name="TXT_DescripcionPIA">
                                    
                                    </textarea>
                                </td>
                            </tr>
                        </table>
                    </fieldset>
                    <%
                    }
                    %>
                    <fieldset>
                        <legend>
                            Se compone de <%=request.getParameter("TXT_Etapas")%> etapas
                        </legend>
                        <table>
                            <% for (int i = 0; i < Integer.parseInt(request.getParameter("TXT_Etapas")); i++) {
                            %>
                            <tr>
                                <td colspan="2">
                                    Etapa <%=i + 1%>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Cant. Act.
                                </td>
                                <td>
                                    <input type="number" name="TXT_Etapa<%=i + 1%>" min="1" max="6" value="1"/>
                                </td>

                                <td>
                                    Valor de etapa
                                </td>
                                <td>
                                    <input type="number" name="TXT_Valor<%=i + 1%>" min="1" max="30" value="15"/>
                                </td>
                                <td>
                                    % Nivel Dominio
                                </td>
                                <td>
                                    <input type="number" name="TXT_Nivel<%=i + 1%>" min="1" max="50" value="20"/>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </fieldset>
                    <% if (request.getParameter("CHK_PIA") != null) {
                    %>
                    <fieldset>
                        <legend>
                            Producto Integrador
                        </legend>
                        <table>
                            <tr>
                                <td>
                                    Valor
                                </td>
                                <td>
                                    <input type="number" name="TXT_PIA" min="0" max="80" value="10" required>                               </td>
                            </tr>
                        </table>
                    </fieldset>
                    <%
                        }
                    %>
                    <fieldset>
                        <legend>
                            Se aplican <%=request.getParameter("TXT_Examenes")%> examenes
                        </legend>
                        <table>
                            <% for (int j = 0; j < Integer.parseInt(request.getParameter("TXT_Examenes")); j++) {
                            %>
                            <tr>
                                <td>
                                    Examen <%= j + 1%>
                                </td>
                                <td>
                                    <select required name="TXT_TipoExamen<%=j + 1%>">
                                        <%
                                            for (int k = 0; k < TipoExamen_vector.size(); k = k + 2) {
                                        %>
                                        <option value="<%=TipoExamen_vector.get(k)%>">
                                            <%=TipoExamen_vector.get(k + 1)%>
                                        </option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </td>
                                <td>
                                    <input type="number" name="TXT_ValorExamen<%=j + 1%>" step="0.5" min="0.5" max="100" required="required"/>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </fieldset>
                    <table>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/menuRubricaSeleccion.jsp">
                                    <input type="button" name="TXT_Cancelar" id="TXT_Cancelar" value="Cancelar"/>
                                </a>
                            </td>
                            <td>
                                <input type="submit" name="TXT_Continuar" id="TXT_Continuar" value="Continuar"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
            </form>   
        </div>
    </body>
</html>
