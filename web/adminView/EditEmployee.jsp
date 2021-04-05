<%-- 
    Document   : EditEmployee
    Created on : Feb 17, 2020, 7:49:09 AM
    Author     : admin
--%>

<%@include file="header.jsp"  %>
<%@page import="model.EmployeeDetails,hotelDAO.EmployeeDataAccess,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
        String id=request.getParameter("empUid");  
        EmployeeDetails e=EmployeeDataAccess.getEmployeeId(Integer.parseInt(id));  
        %> 
        <section class="upload-gallery evet-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 upload-form1">
                        <form action="../UpdateEmployee" method="post">
                          <div class="form-group form-check">
                              <input type="hidden" class="form-control" name="id" value="<%=e.getId()%>" >
                        </div>
                        <div class="form-group">
                            <label for="email">Name:</label>
                            <input type="text" class="form-control" placeholder="Enter Name" value="<%=e.getEmployeeName()%>" disabled>
                        </div>
                        <div class="form-group">
                            <label for="email">Position :</label>
                            <input type="text" class="form-control" disabled value="<%=e.getPosition()%>">                            
                        </div>
                        <div class="form-group">
                            <select class="form-control" id="coutry" name="position">
                                <option disabled selected value="room_type">--Select Employee Position--</option>
                                <option value="Manager">Manager</option>
                                <option value="Cook">Cook</option>
                                <option value="Supervisor">Supervisor</option>
                                <option value="Accountain">Accountain</option>
                                <option value="Receptionist">Receptionist</option>
                                <option value="Waiter">Waiter</option>
                            </select>
                        </div>
                         <div class="form-group">
                            <label for="page">Mobile:</label>
                            <input type="text" class="form-control" placeholder="Enter Mobile" name="mobile" value="<%=e.getMobile()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Email:</label>
                            <input type="email" class="form-control" placeholder="Enter Email" name="email" value="<%=e.getEmail()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Salary:</label>
                            <input type="number" class="form-control" placeholder="Enter Salary" name="salary" value="<%=e.getSalary()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Address:</label>
                            <input type="text" class="form-control" placeholder="Enter Address" name="address" value="<%=e.getAddress()%>">
                        </div>
                         <div class="form-group">
                            <label for="page">Status:</label>
                            <input type="text" class="form-control" value="<%=e.getStatus()%>" disabled>
                        </div>
                       <div class="form-group">
                            <select class="form-control" id="coutry" name="status">
                                <option disabled selected value="room_type">--Select Employee Status--</option>
                                <option value="active">Active</option>
                                <option value="nonactive">In-Active</option>                                
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary">Upload Gallery</button>
                    </form>
                        </div>
                    <div class="col-lg-4"></div>
                </div>
            </div>
        </section>
        <%@include file="footer.jsp"  %>
    </body>
</html>
