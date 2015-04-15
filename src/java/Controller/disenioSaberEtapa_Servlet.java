/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Etapa;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author felix
 */
public class disenioSaberEtapa_Servlet extends HttpServlet {

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
            if (request.getParameter("TXT_Guardar") != null)
            {
                Etapa etapa = new Etapa();
                etapa.setIdEtapa(Integer.parseInt(request.getParameter("TXT_Etapa")));
                for (int c = 0; c < Integer.parseInt(request.getParameter("TXT_CantDimensiones")); c++)
                {
                    String conoce,hace,ser;
                    int dimension;
                    conoce=request.getParameter("TXT_Conoce"+(c + 1));
                    hace=request.getParameter("TXT_Hacer"+(c + 1));
                    ser=request.getParameter("TXT_Ser"+(c + 1));
                    dimension=Integer.parseInt(request.getParameter("TXT_Dimension"+(c + 1)));
                           
                    etapa.addSaberEtapa
                    (
                            request.getParameter("TXT_Conoce"+(c + 1)),
                            request.getParameter("TXT_Hacer"+(c + 1)),
                            request.getParameter("TXT_Ser"+(c + 1)),
                            Integer.parseInt(request.getParameter("TXT_Dimension"+(c + 1)))
                    );
                }
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
