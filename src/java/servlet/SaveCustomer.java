/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.UserDetails;
import hotelDAO.UserDataAccess;

/**
 *
 * @author admin
 */
@WebServlet(name = "SaveCustomer", urlPatterns = {"/SaveCustomer"})
public class SaveCustomer extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveCustomer</title>");
            out.println("</head>");
            out.println("<body>");
            String fname=request.getParameter("fname");
            String cage=request.getParameter("cage");
            int age=Integer.parseInt(cage);
            String email=request.getParameter("cemail");
            String mobile=request.getParameter("cmobile");
            String password=request.getParameter("cpass");
            String country=request.getParameter("countryname");
            String city=request.getParameter("cityname");
            String gender=request.getParameter("gender");
//            out.println(fname+" "+age+" "+email+" "+mobile+" "+password+" "+country+" "+city+" "+gender);
            UserDetails u=new UserDetails();
            u.setName(fname);
            u.setAge(age);
            u.setEmail(email);
            u.setMobile(mobile);
            u.setPassword(password);
            u.setCountry(country);
            u.setCity(city);
            u.setGender(gender);
            int status=UserDataAccess.saveCustomerData(u);
            if(status>0)
            {
             response.sendRedirect("customerLogin.jsp"); 
             
            }else{  
                out.println("Sorry! unable to update record");  
            }
            
            out.println("</body>");
            out.println("</html>");
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
