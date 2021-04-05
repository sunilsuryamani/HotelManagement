<%-- 
    Document   : home
    Created on : Feb 11, 2020, 2:49:19 PM
    Author     : admin
--%>
  <%@include file="header.jsp"  %>
 <%@page import="model.HotelNewsDetails,hotelDAO.HotelNewsDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="add_data">
     <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Add News</button>
</div>
<body id="page-top">
 <%
       String email1=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email1==null){
        	response.sendRedirect("adminView/adminLogin.jsp");
        }
        List<HotelNewsDetails> list = HotelNewsDataAccess.getNews();
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
          <h1 class="h3 mb-2 text-gray-800">Hotel Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Hotel News Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Top Image</th>
                      <th>Bottom Image</th>
                      <th>Post Date</th>
                      <th>Employee Name</th>
                      <th>News Title</th>
                      <th>News</th>
                      <th>PagePosition</th>
                      <th>Status</th>
                      <th>BTN Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id</th>
                      <th>Top Image</th>
                      <th>Bottom Image</th>
                      <th>Post Date</th>
                      <th>Employee Name</th>
                      <th>News Title</th>
                      <th>News</th>
                      <th>PagePosition</th>
                      <th>Status</th>
                      <th>BTN Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach items="${list}" var="u">  
                    <tr>
                      <td>${u.getId()}</td>
                      <td><img width="200px" height="100px"src="../RemoteAccess/images/${u.getTopImage()}"></td>
                      <td><img width="200px" height="100px"src="../RemoteAccess/images/${u.getButtomImage()}"></td>
                      <td>${u.getPostDate()}</td>
                      <td>${u.getEmployeeName()}</td>
                      <td>${u.getNewsTitle()}</td>
                      <td>${u.getNews()}</td>
                      <td>${u.getPagePosition()}</td>
                      <td>${u.getStatus()}</td>
                      <td><a href="../DeleteHotelData?newsId=${u.getId()}">
                              <button type="button" class="btn-danger"> Delete </button>
                          </a>
                          <a href="EditHotelNews.jsp?newsUpId=${u.getId()}">
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
