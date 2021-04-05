<%-- 
    Document   : home
    Created on : Feb 11, 2020, 2:49:19 PM
    Author     : admin
--%>
 <%@include file="header.jsp"  %>
 <%@page import="model.BookingDetails,hotelDAO.BookingDataaccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<body id="page-top">
<%
    String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<BookingDetails> list = BookingDataaccess.getAllBooking();
        request.setAttribute("list", list);
    %> 
  <!-- Page Wrapper -->
  

  
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">
      <!-- Main Content -->
      <div id="content">
        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Booking Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">BooKing Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Series Of No.</th>
                      <th>Customer Name</th>
                      <th>Mobile No.</th>
                      <th>Booking Date</th>
                      <th>CheckOut Date</th>
                      <th>Customer Review</th>                      
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Series Of No.</th>
                      <th>Customer Name</th>
                      <th>Mobile No.</th>
                      <th>Booking Date</th>
                      <th>CheckOut Date</th>
                      <th>Customer Review</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach items="${list}" var="u">  
                    <tr>
                      <td>${u.getId()}</td>
                      <td>${u.getCustomerName()}</td>
                      <td>${u.getMobile()}</td>
                      <td>${u.getBookingDate()}</td>
                      <td>${u.getCheckout()}</td>
                      <td>${u.getCustomerReview()}</td>                    
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

      

    </div>
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>


  <!-- Bootstrap core JavaScript-->
  <%@include file="footer.jsp"  %>

</body>

</html>
