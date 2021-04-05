<%-- 
    Document   : home
    Created on : Feb 11, 2020, 2:49:19 PM
    Author     : admin
--%>
<%@include file="header.jsp"  %>
<%@page import="model.GalleryDetails,hotelDAO.GalleyDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<div class="add_data">
    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#gallery">Add Gallery</button>
</div>
<!--<div class="update-success-msg">
    <div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> This alert box could indicate a successful or positive action.
  </div>
</div>-->
<body id="page-top">
    <%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("adminLogin.jsp");
        }
        List<GalleryDetails> list = GalleyDataAccess.getAllGalley();
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
                    <h1 class="h3 mb-2 text-gray-800">Gallery Details</h1>          
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Gallery Data</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Image</th>
                                            <th>Title</th>                  
                                            <th>Page</th>
                                            <th>status</th>
                                            <th>BTN Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Id</th>
                                            <th>Image</th>
                                            <th>Title</th>                  
                                            <th>Page</th>
                                            <th>status</th>
                                            <th>BTN Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach items="${list}" var="u">  
                                            <tr>
                                                <td>${u.id}</td>
                                                <td><img width="200px" height="100px"src="../RemoteAccess/images/gallery/${u.getImage()}"></td>                             
                                                <td>${u.getTitle()}</td>
                                                <td>${u.getPageUrl()}</td>
                                                <td>${u.getStatus()}</td>
                                                <td><a href="../DeleteHotelData?galleryId=${u.getId()}">
                                                        <button type="button" class="btn-danger"> Delete </button>
                                                    </a>
                                                    <a href="UploadGallery.jsp?id=${u.getId()}">
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



        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="galleryDelete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Confirmation ?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body"> Are You Sure You Want To Delete This </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="#">Confirm</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <%@include file="footer.jsp"  %>

</body>

</html>
