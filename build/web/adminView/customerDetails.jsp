<%-- 
    Document   : customerDetails
    Created on : Feb 12, 2020, 7:40:08 AM
    Author     : admin
--%>
<%@include file="header.jsp" %>
<%@page import="model.UserDetails,hotelDAO.UserDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>

 

<body id="page-top">
    <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<UserDetails> list = UserDataAccess.getAllUSerInfo();
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
          <h1 class="h3 mb-2 text-gray-800">Customer Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Customer Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Age</th>
                      <th>Email ID</th>
                      <th>Mobile No.</th>
                      <th>Country</th>
                      <th>City Name</th>
                      <th>Gender</th>
                      <th>Customer Bio</th>
                      
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>Age</th>
                      <th>Email ID</th>
                      <th>Mobile No.</th>
                      <th>Country</th>
                      <th>City Name</th>
                      <th>Gender</th>
                      <th>Customer Bio</th>
                    </tr>
                  </tfoot>
                  <tbody>
                     <c:forEach items="${list}" var="u">
                    <tr>
                      <td>${u.getId()}</td>
                      <td>${u.getName()}</td>
                      <td>${u.getAge()}</td>
                      <td>${u.getEmail()}</td>
                      <td>${u.getMobile()}</td>                      
                      <td>${u.getCountry()}</td>  
                      <td>${u.getCity()}</td> 
                      <td>${u.getGender()}</td>
                      <td>${u.getBio()}</td>
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
