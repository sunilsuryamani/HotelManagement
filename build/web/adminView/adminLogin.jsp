<%-- 
    Document   : adminLogin
    Created on : Feb 26, 2020, 11:13:43 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="../RemoteAccess/admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

      <div class="col-xl-8 col-lg-10 col-md-9">

        <div class="card o-hidden border-0 shadow-lg my-5">
          <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
              
              <div class="col-lg-6">
                <div class="p-5">
                  <div class="text-center">
                      <%
                        String email = (String) session.getAttribute("email");

                        //redirect user to home page if already logged in
                        if (email != null) {
                            response.sendRedirect("home.jsp");
                        }

                        String status = request.getParameter("status");

                        if (status != null) {
                            if (status.equals("false")) {%>
                            <div class="text-danger"><%out.println("Incorrect login details!");%></div>
                           <% } else {%>
                                <div class="text-warning"><%out.println("Some error occurred!");%></div>
                            <%}
                        }
                    %>
                    <h1 class="h4 text-gray-900 mb-4">Welcome Admin Page!</h1>
                  </div>
                    <form action="loginSession.jsp" method="post">
                    <div class="form-group">
                        <input type="email" class="form-control form-control-user" name="email" placeholder="Enter Email Address..." required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control form-control-user" name="password" placeholder="Password" required>
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">Remember Me</label>
                      </div>
                    </div>
                        <input type="submit" class="btn btn-primary btn-user btn-block" value="Login">
                    
                  </form>
                  <hr>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="../RemoteAccess/admin/vendor/jquery/jquery.min.js"></script>
  <script src="../RemoteAccess/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="../RemoteAccess/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="../RemoteAccess/admin/js/sb-admin-2.min.js"></script>

</body>

</html>
