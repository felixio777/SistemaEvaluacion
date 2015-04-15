<%-- 
    Document   : diseñoMateria1
    Created on : 31/12/2014, 11:10:50 AM
    Author     : felix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diseño Materia</title>
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Get" name="FRM_Main" action="/SistemaEvaluacion/diseñoMateria2.jsp">
                <fieldset>
                    <legend>
                        Diseño de materia
                    </legend>
                    <table>
                        <tr>
                            <td>
                                Nombre
                            </td>
                            <td>
                                <input type="text" name="TXT_Nombre" id="TXT_Nombre" required="required"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Frecuencia/Semana
                            </td>
                            <td>
                                <input type="number" name="TXT_Frecuencia" id="TXT_Frecuencia" required="required" min="1" max="12" value="4"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Producto Integrador
                            </td>
                            <td>
                                <input type="checkbox" name="CHK_PIA"/>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                Cant. de Etapas
                            </td>
                            <td>
                                <input type="number" name="TXT_Etapas" id="TXT_Etapas" required="required" min="4" max="5" value="4"/>
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                Cant. de Examenes
                            </td>
                            <td>
                                <input type="number" name="TXT_Examenes" id="TXT_Examenes" required="required" min="0" max="10" value="2"/>
                            </td>
                        </tr>
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
