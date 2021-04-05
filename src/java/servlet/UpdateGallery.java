/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import db.DataConnection;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.GalleryDetails;
import hotelDAO.GalleyDataAccess;
import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
/**
 *
 * @author admin
 */
@WebServlet("/UpdateGallery")
//@WebServlet(name = "UpdateGallery", urlPatterns = {"/UpdateGallery"})
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UpdateGallery extends HttpServlet {
    private static final String SAVE_DIR = "/RemoteAccess";
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
            String appPath = request.getServletContext().getRealPath("");
            String savePath = appPath + File.separator + SAVE_DIR;
            File fileSaveDir = new File(savePath);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }
            long unixTime = System.currentTimeMillis() / 1000L;

            Part part;
            part = request.getPart("gimage");
            String fileName = extractFileName(part);
            if (!fileName.equals("")) {
                fileName = unixTime + "_" + extractFileName(part);
                part.write(savePath + File.separator + fileName);
                out.println(fileName);
            } else {
                fileName = request.getParameter("image_name");

            }
            String gid=request.getParameter("id");  
            int id=Integer.parseInt(gid); 
            String title=request.getParameter("title");
            String pageurl=request.getParameter("pageurl");
            String status=request.getParameter("status");
            
            
//            out.println(id+image +" "+title+" "+pageurl+" "+status);
            GalleryDetails g=new GalleryDetails();
            g.setId(id);
            g.setImage(fileName);
            g.setTitle(title);
            g.setPageUrl(pageurl);
            g.setStatus(status);
            int status1=GalleyDataAccess.updateGallery(g);
            if(status1>0)
            {
             response.sendRedirect("adminView/gallery.jsp"); 
             
            }else{  
                out.println("Sorry! unable to update record");  
            }
           
        }catch(Exception ex){
            out.println(ex.getMessage());
        }
    }
     private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
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
