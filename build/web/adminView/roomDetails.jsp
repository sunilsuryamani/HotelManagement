<%-- 
    Document   : home
    Created on : Feb 11, 2020, 2:49:19 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.RoomDetails,hotelDAO.RoomDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="add_data">
     <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#roomAvailable">Add New Room</button>
</div>
<body id="page-top">
  <%
      String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<RoomDetails> list = RoomDataAccess.getAllRoom();
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
          <h1 class="h3 mb-2 text-gray-800">Room Details</h1>          
          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Room Data</h6>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Image</th>
                                <th>Room Type</th>
                                <th>Room Description</th>
                                <th>Offer</th>
                                <th>Available Room</th>
                                <th>Single Room Price</th>
                                <th>Double Room Price</th>
                                <th>Room Facility</th>
                                <th>Status</th>
                                <th>BTN Action</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>Id</th>
                                 <th>Image</th>
                                <th>Room Type</th>
                                <th>Room Description</th>
                                <th>Offer</th>
                                <th>Available Room</th>
                                <th>Single Room Price</th>
                                <th>Double Room Price</th>
                                <th>Room Facility</th>
                                <th>Status</th>
                                <th>BTN Action</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            <c:forEach items="${list}" var="u">  
                                <tr>
                                    <td>${u.id}</td>
                                    <td><img src="../RemoteAccess/images/gallery/${u.image}" width="100%"></td>
                                    <td>${u.roomType}</td>
                                    <td>${u.roomDes}</td>
                                    <td>${u.offer}</td>
                                    <td>${u.availableRoom}</td>
                                    <td>${u.singleRoomPrice}</td>
                                    <td>${u.doubleRoomPrice}</td>
                                    <td>${u.roomFacility}</td>
                                    <td>${u.status}</td>
                                    <td><a href="../DeleteHotelData?galleryId=${u.getId()}">
                                            <button type="button" class="btn-danger"> Delete </button>
                                        </a>
                                        <a href="EditRoomDetails.jsp?roomEid=${u.getId()}">
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
  <!-- End of Page Wrapper -->


  


  <!-- Bootstrap core JavaScript-->
  <%@include file="footer.jsp"  %>

</body>

</html>
