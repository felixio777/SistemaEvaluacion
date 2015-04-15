/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author felix
 */
public class getReporteAsistencia extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            response.reset();
            response.setHeader("Content-type","application/xls");
            response.setHeader("Content-disposition","inline; filename=nombre.csv");
            PrintWriter op = response.getWriter();
             //String CSV = "Cola1" + "," + "Cola2" + "Cola3" +"\r\n";
             //CSV=CSV+"Otro";
            String tabla="";
            HttpSession sesion = request.getSession(true);
            tabla="Empleado"+","+sesion.getAttribute("noEmpleado")+"\r\n";
            tabla=tabla+"Grupo"+","+request.getParameter("TXT_grupo")+"\r\n";
            tabla=tabla+"No.Lista"+","+"Nombre"+","+"Matricula"+","+"Acumulado"+","+"Posibles"+","+"Porcentajes"+"\r\n";
            for(int c=0;c<Integer.parseInt(request.getParameter("TXT_totalAlumnos"))-1;c++)
            {
                tabla=tabla+request.getParameter("TXT_noLista"+(c+1));
                tabla=tabla+","+request.getParameter("TXT_nombre"+(c+1));
                tabla=tabla+","+request.getParameter("TXT_matricula"+(c+1));
                tabla=tabla+","+request.getParameter("TXT_acumulada"+(c+1));
                tabla=tabla+","+request.getParameter("TXT_netaTotal");
                tabla=tabla+","+request.getParameter("TXT_porcentaje"+(c+1));
                tabla=tabla+"\r\n";
            }
            op.write(tabla);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
