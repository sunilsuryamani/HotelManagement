/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.EmployeeDetails;
import hotelDAO.EmployeeDataAccess;
/**
 *
 * @author admin
 */
@WebServlet(name = "SaveEmployee", urlPatterns = {"/SaveEmployee"})
public class SaveEmployee extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SaveEmployee</title>");            
            out.println("</head>");
            out.println("<body>");
            String name=request.getParameter("fullName");
            String position=request.getParameter("position");
            String mobile=request.getParameter("mobile");
            String email=request.getParameter("email");
            String eage=request.getParameter("age");
            int age=Integer.parseInt(eage);
            String jdate=request.getParameter("jdate");
            String sal=request.getParameter("salary");
            int salary=Integer.parseInt(sal);
            
            String address=request.getParameter("address");
            String gender=request.getParameter("gender");
            String status=request.getParameter("status");
            out.println(name+position+mobile+email+age+jdate+salary+address+gender+status);
            EmployeeDetails e=new EmployeeDetails();
            e.setEmployeeName(name);
            e.setPosition(position);
            e.setMobile(mobile);
            e.setEmail(email);
            e.setAge(age);
            e.setJoiningDate(jdate);
            e.setSalary(salary);
            e.setAddress(address);
            e.setGender(gender);
            e.setStatus(status);
            int status1=EmployeeDataAccess.saveEmployeeData(e);
            if(status1>0)
            {
             response.sendRedirect("adminView/employeeDetails.jsp"); 
             
            }else{  
                out.println("Sorry! Something !is Wrong to adding record");  
            }
            out.println("</body>");
            out.println("</html>");
        }catch(Exception e)
        {
            out.println(e.getMessage());
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
