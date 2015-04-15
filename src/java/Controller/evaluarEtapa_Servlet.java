/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.Materia;
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
public class evaluarEtapa_Servlet extends HttpServlet {

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
            int idEtapa=Integer.parseInt(request.getParameter("TXT_idEtapa"));
            int grupo=Integer.parseInt(request.getParameter("TXT_grupo"));
            Vector actividades_vector=new Vector();
            actividades_vector=Materia.getActividadesToEvaluar(grupo, idEtapa);
            Vector idEvaluacion_vector=new Vector();
            for(int c=0;c<actividades_vector.size();c=c+4)
            {
                idEvaluacion_vector.add(actividades_vector.get(c));
            }
            for(int c2=0;c2<idEvaluacion_vector.size();c2++)
            {
               String parameter="TXT_EvaluacionActividad"+idEvaluacion_vector.get(c2);
               int calificacion=Integer.parseInt(request.getParameter(parameter));
               Materia.updateEvaluacionActividad(Integer.parseInt((idEvaluacion_vector.get(c2)).toString()), calificacion);
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
