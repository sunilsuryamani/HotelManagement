/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;
import javax.mail.Transport;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.*;
import hotelDAO.*;

/**
 *
 * @author admin
 */
@WebServlet(name = "BookRoom", urlPatterns = {"/BookRoom"})
public class BookRoom extends HttpServlet {

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
            out.println("<title>Servlet BookRoom</title>");            
            out.println("</head>");
            out.println("<body>");
            Random rand = new Random(); 
            String cname=request.getParameter("cname");
            String mobile=request.getParameter("mobile");            
            String check_in=request.getParameter("checkin");
            String check_out=request.getParameter("checkout");
            String roomType=request.getParameter("roomType");
            String bedType=request.getParameter("typeBed");
            String noRoom=request.getParameter("noRoom");
            int noOfroom=Integer.parseInt(noRoom);
            int bookinId = rand.nextInt(10000); 
            BookingDetails bd=new BookingDetails();
            bd.setCustomerName(cname);
            bd.setMobile(mobile);
            bd.setBookingDate(check_in);
            bd.setCheckout(check_out);
            bd.setBookingId(bookinId);
            bd.setRoomType(roomType);
            bd.setBedType(bedType);
            bd.setNoRoom(noOfroom);

            int status = BookingDataaccess.bookingRoom(bd);
            if (status > 0) {
                RoomDetails rd = new RoomDetails();
                rd.setRoomType(roomType);
                rd.setAvailableRoom(noOfroom);
                out.println(bookinId);
                int updateroom = RoomDataAccess.bookingUpdate(rd);
                if (updateroom > 0) {
                    response.sendRedirect("hotelReview.jsp"); 

                } else {
                    out.println("Sorry! unable to update record");
                }
            } else {
                out.println("no");
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
