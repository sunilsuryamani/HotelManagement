<%-- 
    Document   : service
    Created on : Feb 15, 2020, 4:48:47 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.*,hotelDAO.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
   
<body id="page-top">
    <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<ServiceDetails> list = ServiceDataAccess.getAllProduct();
        request.setAttribute("list", list);
    %>  
  <!-- Page Wrapper -->
  <div id="wrapper">

  
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Service Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Service Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Image</th>
                      <th>Image 2</th>
                      <th>Title</th>
                      <th>Description</th>
                      <th>PageUrl</th>
                      <th>status</th>
                      <th>BTN Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id</th>
                      <th>Image</th>
                      <th>Image 2</th>
                      <th>Title</th>
                      <th>Description</th>
                      <th>PageUrl</th>
                      <th>status</th>
                      <th>BTN Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                      <c:forEach items="${list}" var="u">  
                          <tr>
                              <td>${u.getId()}</td>
                              <td><img width="100px" height="150px"src="../RemoteAccess/images/${u.getImage1()}"></td>
                              <td><img width="100px" height="150px"src="../RemoteAccess/images/${u.getImage2()}"></td>
                              <td>${u.getTitle()}</td>
                              <td>${u.getDescription()}</td>
                              <td>${u.getPageUrl()}</td>
                              <td>${u.getStatus()}</td>
                              <td><a href="../DeleteHotelData?serviceId=${u.getId()}">
                                      <button type="button" class="btn-danger"> Delete </button>
                                  </a>
                                  <a href="EditServicePage.jsp?serviceUId=${u.getId()}">
                                      <button type="button" class="btn-success"> Upload </button>
                                  </a>
                              </td>
                          </tr>
                      </c:forEach>  

                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <%@include file="footer.jsp"  %>

</body>
</html>
