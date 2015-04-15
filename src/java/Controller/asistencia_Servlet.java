/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.Alumno;
import Model.Grupo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author felix
 */
public class asistencia_Servlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) 
        {
            int idRelMatGru=Integer.parseInt(request.getParameter("TXT_RelMatGru"));
            int matricula;
            float valor;
            int totalAlumno=Integer.parseInt(request.getParameter("TXT_TotalAlumno"));
            int dia=Integer.parseInt(request.getParameter("TXT_Dia"));
            int frecuenciaDia=Grupo.getAsistenciaNeta(dia, idRelMatGru);
            Alumno.addAsistenciaNeta(frecuenciaDia, idRelMatGru);
            for(int c=1;c<(totalAlumno);c++)
            {
                String parameter;
                parameter="TXT_Alumno"+c;
                matricula=Integer.parseInt(request.getParameter(parameter));
                parameter="TXT_Asistencia"+matricula;
                valor=(Float.parseFloat(request.getParameter(parameter)))*frecuenciaDia;
                Alumno.addAsistencia(idRelMatGru, matricula, valor);   
            }
            response.sendRedirect("/SistemaEvaluacion/menu.jsp");
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
