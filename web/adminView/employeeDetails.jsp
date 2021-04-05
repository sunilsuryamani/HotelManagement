<%-- 
    Document   : EmployeeDetalis
    Created on : Feb 12, 2020, 7:40:29 AM
    Author     : admin
--%>

 <%@include file="header.jsp"  %>
 <%@page import="model.EmployeeDetails,hotelDAO.EmployeeDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="add_data">
     <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#employee">New Employee</button>
</div>
<body id="page-top">
  <%
      String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<EmployeeDetails> list = EmployeeDataAccess.getAllEmployee();
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
          <h1 class="h3 mb-2 text-gray-800">Employee Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Employee Data</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                       <th>Id</th> 
                      <th>Name</th>
                      <th>Position</th>
                      <th>Mobile No</th>
                      <th>email Id</th>
                      <th>Age</th>
                      <th>Start date</th>
                      <th>Salary</th>
                      <th>Address</th>
                      <th>Gender</th>
                      <th>Active</th>
                      <th>BTN Action</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                     <th>Id</th> 
                      <th>Name</th>
                      <th>Position</th>
                      <th>Mobile No</th>
                      <th>email Id</th>
                      <th>Age</th>
                      <th>Start date</th>
                      <th>Salary</th>
                      <th>Address</th>
                      <th>Gender</th>
                      <th>Active</th>
                      <th>BTN Action</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <c:forEach items="${list}" var="u">   
                    <tr>
                      <td>${u.getId()}</td>
                      <td>${u.getEmployeeName()}</td>
                      <td>${u.getPosition()}</td>
                      <td>${u.getMobile()}</td>
                      <td>${u.getEmail()}</td>
                      <td>${u.getAge()}</td>
                      <td>${u.getJoiningDate()}</td>
                      <td>${u.getSalary()}</td>
                      <td>${u.getAddress()}</td>
                      <td>${u.getGender()}</td>
                      <td>${u.getStatus()}</td>
                      <td><a href="../DeleteHotelData?empDeleteId=${u.getId()}">
                              <button type="button" class="btn-danger"> Delete </button>
                          </a>
                          <a href="EditEmployee.jsp?empUid=${u.getId()}">
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
    </div>
    <!-- End of Content Wrapper -->

  </div>

  <%@include file="footer.jsp"  %>
</body>

</html>
