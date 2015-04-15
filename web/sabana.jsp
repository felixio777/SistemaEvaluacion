<%-- 
    Document   : sabana
    Created on : 1/02/2015, 01:26:34 AM
    Author     : felix
--%>

<%@page import="Model.Materia"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            Vector etapas_Vector=new Vector();
            etapas_Vector=Materia.getEtapasByMateria(Integer.parseInt(request.getParameter("idMateria")));
            Vector examenes_Vector=new Vector();
            examenes_Vector=Materia.getExamenByMateria(Integer.parseInt(request.getParameter("idMateria")));  
            Vector pia_Vector=new Vector();
            Materia materia=new Materia();
            materia.setIdMateria(Integer.parseInt(request.getParameter("idMateria")));
            pia_Vector=materia.getPia();
        %>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
    </head>
    <body>
        <div class="DIV_Main">
            <form>
                <fieldset>
                    <legend>
                        Datos Generales
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Materia
                            </td>
                            <td>
                                <input type="text" name="TXT_Materia" readonly="" value="<%=request.getParameter("materia")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Grupo
                            </td>
                            <td>
                                <input type="text" name="TXT_Grupo" readonly="" value="<%=request.getParameter("grupo")%>"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="button" name="BTN_VerSabana" value="Ver sabana en forma de matriz"/>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Evaluar etapa
                    </legend>
                    <table>
                        <%
                            for(int c=0;c<etapas_Vector.size();c=c+2)
                            {
                        %>
                        <tr>
                            <td>
                                Etapa<%=etapas_Vector.get(c+1)%>
                            </td>
                            <td>
                                <a href="/SistemaEvaluacion/sabanaEvaluarEtapa.jsp?idEtapa=<%=etapas_Vector.get(c)%>&grupo=<%=request.getParameter("grupo")%>" target="_blank">
                                    <input type="button" name="TXT_Evaluar<%=etapas_Vector.get(c)%>" value="Evaluar"/>
                                </a>
                            </td>
                        </tr>
                        <tr>

                            
                        <%
                            }
                        %>
                            <td>
                                PIA
                            </td>
                            <td>
                        <%
                           if(pia_Vector.size()!=0)
                           {
                        %>
                        
                        <a href="/SistemaEvaluacion/sabanaEvaluarPia.jsp?llave=<%=pia_Vector.get(0)%>&grupo=<%=request.getParameter("grupo")%>&idMateria=<%=request.getParameter("idMateria")%>&materia=<%=request.getParameter("materia")%>" target="_blank">
                            <input type="button" value="Evaluar PIA"/>
                        </a>
                        <%
                           }
                           else
                           {
                        %>
                            No cuenta con un PIA
                        <%
                           }
                        %>
                            </td>
                        </tr>
                    </table>
                </fieldset>
                <fieldset>
                    <legend>
                        Evaluar examen
                    </legend>
                    <table>
                        <%
                            for(int i=0;i<examenes_Vector.size();i++)
                            {
                        %>
                        <tr>
                            <td>
                                <a href="/SistemaEvaluacion/sabanaEvaluarExamen.jsp?idExamen=<%=examenes_Vector.get(i)%>&grupo=<%=request.getParameter("grupo")%>&materia=<%=request.getParameter("materia")%>" target="_blank">
                                    <input type="button" name="TXT_Examen" value="Evaluar"/>
                                </a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
