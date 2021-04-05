<%-- 
    Document   : home
    Created on : Feb 11, 2020, 2:49:19 PM
    Author     : admin
--%>
 <%@include file="header.jsp"  %>
 <%@page import="model.ContactUsDetails,hotelDAO.ContactUsDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<body id="page-top">
  <%
        List<ContactUsDetails> list = ContactUsDataAccess.getAllContact();
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
          <h1 class="h3 mb-2 text-gray-800">Contact Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Contact Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                       <th>Title</th>
                       <th>Description</th>                     
                      <th>Address</th>
                      <th>Contact Email</th>
                       <th>Contact Person</th>
                      <th>Contact phone1</th>
                      <th>Contact phone1</th>
                      <th>Contact Email</th>
                      <th>status</th>
                      <th>BTN Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Series Of No.</th>
                      <th>Full Name</th>
                      <th>Email Id</th>
                      <th>Message</th>
                      <th>Subscribe Email</th>
                      <th>BTN Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach items="${list}" var="u">  
                    <tr>
                      <td>${u.getId()}</td>
                      <td>${u.getTitle()}</td>
                      <td>${u.getDescription()}</td>
                      <td>${u.getAddress()}</td>
                      <td>${u.getContactEmail()}</td>
                      <td>${u.getContactPerson()}</td>
                      <td>${u.getMobile()}</td>
                      <td>${u.getPageUrl()}</td>
                      <td>${u.getStatus()}</td>
                      
                      
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
