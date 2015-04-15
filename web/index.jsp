<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Loggin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="/SistemaEvaluacion/estilo/estilo1.css">
    </head>
    <body>
        <div class="DIV_Main">
            <form method="Post" action="/SistemaEvaluacion/isUser_Servlet">
            <table>
                <tr>
                    <td>
                        No. Empleado
                    </td>
                    <td>
                        <input type="text" name="TXT_noEmpleado" id="TXT_noEmpleado" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password
                    </td>
                    <td>
                        <input type="password" name="TXT_password" id="TXT_password" required="required"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <input type="submit" name="BTN_entrar" id="BTN_entrar" value="Entrar"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="BTN_recuperar" id="BTN_recuperar" value="Recuperar Contraseña" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
        
    </body>
</html>
