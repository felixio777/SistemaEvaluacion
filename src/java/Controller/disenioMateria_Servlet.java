/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Materia;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author felix
 */
@WebServlet(name = "disenioMateria_Servlet", urlPatterns = {"/disenioMateria_Servlet"})
public class disenioMateria_Servlet extends HttpServlet {

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
            Materia materia = new Materia();
            materia.setMateria(request.getParameter("TXT_Nombre"));
            materia.setFrecuencia(Integer.parseInt(request.getParameter("TXT_Frecuencia")));
            materia.addMateria();
            if(Integer.parseInt(request.getParameter("TXT_PIA"))!=0)
            {
                materia.addPIA(Integer.parseInt(
                                                request.getParameter("TXT_PIA")),
                                                request.getParameter("TXT_DescripcionPIA"),
                                                request.getParameter("TXT_TituloPIA"));
            }
            for (int c = 0; c < Integer.parseInt(request.getParameter("TXT_Examenes")); c++) 
            {
                
                materia.addExamenMateria(
                        Integer.parseInt(request.getParameter("TXT_TipoExamen" + (c + 1))),
                        Integer.parseInt(request.getParameter("TXT_ValorExamen" + (c + 1)))
                );
            }
            int actividad = 1;
            String[] dimension_array;
            for (int c = 0; c < Integer.parseInt(request.getParameter("TXT_Etapas")); c++) 
            {
                int valorEtapa=Integer.parseInt(request.getParameter("TXT_Valor"+(c+1)));
                int nivel=Integer.parseInt(request.getParameter("TXT_Nivel"+(c+1)));
                materia.addEtapa(c + 1,valorEtapa,nivel);
                for (int c2 = 0; c2 < Integer.parseInt(request.getParameter("TXT_Etapa" + (c + 1))); c2++)
                {
                    materia.addActividad(actividad, Integer.parseInt(request.getParameter("TXT_ValorAct" + actividad)));
                    dimension_array = request.getParameterValues("TXT_Dimension" + actividad);
                    for (int c3 = 0; c3 < dimension_array.length; c3++) 
                    {
                        materia.addRel_Act_Dim(Integer.parseInt(dimension_array[c3]));
                    }
                    actividad++;
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
