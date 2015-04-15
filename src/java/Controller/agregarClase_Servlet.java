/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Controller;

import Model.Actividad;
import Model.Alumno;
import Model.Empleado;
import Model.Grupo;
import Model.Materia;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author felix
 */
public class agregarClase_Servlet extends HttpServlet {

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
          
            HttpSession sesion = request.getSession(true);
            Empleado empleado=new Empleado();
            empleado.setIdEmpleado(Empleado.getEmpleadoByNoEmpleado((sesion.getAttribute("noEmpleado")).toString()));
            
            Grupo grupo=new Grupo();
            grupo.setGrupo(Integer.parseInt(request.getParameter("TXT_NoGrupo")));
            grupo.setIdGrupo(Integer.parseInt(request.getParameter("TXT_Grupo")));
            
            Materia materia=new Materia();
            materia.setIdMateria(Integer.parseInt(request.getParameter("TXT_Materia")));
            
            Vector pia_Vectar=new Vector();
            pia_Vectar=materia.getPia();
            
            empleado.addRel_Mat_Grupo(grupo.getIdGrupo(), materia.getIdMateria());
            int lastRelacion=Empleado.getLastRel_Mat_Gru();
            
            Vector alumnos_vector=new Vector();
            alumnos_vector=Alumno.getAlumnosGrupo(grupo.getGrupo());
            
            for(int dia=1;dia<7;dia++)
            {
                for(int hora=1;hora<16;hora++)
                {
                    if(request.getParameter("CHK_"+dia+hora)!=null)
                    {
                        empleado.addRel_Mat_Gru_Emp_Hora(dia, hora);
                    }
                }
            }
            
            Vector etapas_vector=new Vector();
            etapas_vector=Materia.getEtapasByMateria(materia.getIdMateria());
            Vector actividades_vector=new Vector();
            Vector idActividades_vector=new Vector();
            
            Vector idExamenes_vector= new Vector();
            idExamenes_vector=Materia.getExamenByMateria(materia.getIdMateria());
            
            for(int i=0;i<etapas_vector.size();i=i+2)
            {
                actividades_vector.clear();
                actividades_vector=(Materia.getActivadesByEtapa((int) (etapas_vector.get(i))));
                for(int j=0;j<actividades_vector.size();j=j+3)
                {
                    idActividades_vector.add(actividades_vector.get(j));
                }
            }
            Alumno alumno=new Alumno();
            for(int i=0;i<alumnos_vector.size();i=i+2)
            {
                for(int j=0;j<idActividades_vector.size();j++)
                {
                    Actividad.addEvaluacionActividad(
                                                    ((int) idActividades_vector.get(j)),
                                                    ((int) alumnos_vector.get(i))
                                                    );
                }
                for(int k=0;k<idExamenes_vector.size();k++)
                {
                    Actividad.addExamenEvaluacion(
                                                  ((int) idExamenes_vector.get(k)),
                                                  ((int) alumnos_vector.get(i))
                                                 );
                }
                alumno.setMatricula(Integer.parseInt((alumnos_vector.get(i)).toString()));
                alumno.addEvaluacionPia(Integer.parseInt((pia_Vectar.get(0)).toString()));
  
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
