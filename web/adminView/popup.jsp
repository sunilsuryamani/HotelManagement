<%-- 
    Document   : popup
    Created on : Feb 11, 2020, 6:06:24 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Header</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">
                            <div class="form-group">
                                <label for="email">Email address:</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd">
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox"> Remember me</label>
                            </div>
                            

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    <!--        employee insert data-->
    <div id="employee" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Employee</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>                        
                    </div>
                    <div class="modal-body">
                        <form action="../SaveEmployee" method="post">
                            <div class="form-group">
                                <label for="email">Full Name:</label>
                                <input type="text" class="form-control" id="fname" name="fullName" required placeholder="Full Name">
                            </div>
                            <div class="form-group">
                                <label for="email">Position:</label>
                                <input type="text" class="form-control" name="position" placeholder="Position" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Mobile Number:</label>
                                <input type="number" class="form-control" name="mobile" placeholder="Mobile No." required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email Id:</label>
                                <input type="email" class="form-control" name="email" placeholder="Email Id" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Age:</label>
                                <input type="number" class="form-control" name="age" placeholder="Position" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Joining Date:</label>
                                <input type="date" class="form-control" name="jdate" placeholder="" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Salary:</label>
                                <input type="number" class="form-control" name="salary" placeholder="Salary" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Address</label>
                                <input type="number" class="form-control" name="address" placeholder="Salary" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Gender:</label>
                                
                                <input type="radio"  name="gender" required value="male">Male
                                <input type="radio"  name="gender" required value="female">Female
                            </div>
                            <div class="form-group">
                                <label for="pwd">Status:</label>
                                <select class="form-control" id="coutry" name="status">
                                    <option disabled selected value="room_type">--Select Employee Status--</option>
                                    <option value="active">Active</option>
                                    <option value="nonActive">Non Active</option>
                                </select>
                            </div>                                                       
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--    wedding event data insert-->
<div id="wedding" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Wedding Event</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">                     
                            <div class="form-group">
                                <label for="image">Image:</label>
                                <input type="file" class="form-control" name="gimage1" placeholder="Position" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Image 2:</label>
                                <input type="file" class="form-control" name="gimage2" placeholder="Mobile No." required>
                            </div>
                            <div class="form-group">
                                <label for="title"> Title:</label>
                                <input type="text" class="form-control" name="email" placeholder="Email Id" required>
                            </div>
                            <div class="form-group">
                                <label for="desc">Description:</label>
                                <textarea name="desc" type="text" class="form-control"></textarea>
                            </div>
                           
                            <div class="form-group">
                                <label for="pwd">Status:</label>
                                <select class="form-control" id="coutry">
                                    <option disabled selected value="room_type">--Select Employee Status--</option>
                                    <option value="active">Active</option>
                                    <option value="nonActive">Non Active</option>
                                </select>
                            </div>                                                       
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--catering event data insert-->
<div id="catering" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Catering Event</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>                       
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">                     
                            <div class="form-group">
                                <label for="image">Image:</label>
                                <input type="file" class="form-control" name="gimage1" placeholder="Position" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Image 2:</label>
                                <input type="file" class="form-control" name="gimage2" placeholder="Mobile No." required>
                            </div>
                            <div class="form-group">
                                <label for="title"> Title:</label>
                                <input type="text" class="form-control" name="email" placeholder="Email Id" required>
                            </div>
                            <div class="form-group">
                                <label for="desc">Description:</label>
                                <textarea name="desc" type="text" class="form-control"></textarea>
                            </div>
                           
                            <div class="form-group">
                                <label for="pwd">Status:</label>
                                <select class="form-control" id="coutry">
                                    <option disabled selected value="room_type">--Select Employee Status--</option>
                                    <option value="active">Active</option>
                                    <option value="nonActive">Non Active</option>
                                </select>
                            </div>                                                       
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--gastro event data insert -->
<div id="gastro" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Gastro Event</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">                     
                            <div class="form-group">
                                <label for="image">Image:</label>
                                <input type="file" class="form-control" name="gimage1" placeholder="Position" required>
                            </div>
                            <div class="form-group">
                                <label for="image">Image 2:</label>
                                <input type="file" class="form-control" name="gimage2" placeholder="Mobile No." required>
                            </div>
                            <div class="form-group">
                                <label for="title"> Title:</label>
                                <input type="text" class="form-control" name="email" placeholder="Email Id" required>
                            </div>
                            <div class="form-group">
                                <label for="desc">Description:</label>
                                <textarea name="desc" type="text" class="form-control"></textarea>
                            </div>
                           
                            <div class="form-group">
                                <label for="pwd">Status:</label>
                                <select class="form-control" id="coutry">
                                    <option disabled selected value="room_type">--Select Employee Status--</option>
                                    <option value="active">Active</option>
                                    <option value="nonActive">Non Active</option>
                                </select>
                            </div>                                                       
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--about page data insert-->
<div id="aboutUs" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New About</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">
                            <div class="form-group">
                                <label for="email">Email address:</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd">
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox"> Remember me</label>
                            </div>
                            

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--Room available page data insert-->
<div id="roomAvailable" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Room</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="hall.jsp">
                            <div class="form-group">
                                <label for="email">Email address:</label>
                                <input type="email" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd">
                            </div>
                            <div class="checkbox">
                                <label><input type="checkbox"> Remember me</label>
                            </div>
                            

                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
<!--gallery page data insert-->
<div id="gallery" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title modal_text_title">New Gallery</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="../SaveGallery" method="post">
                            <div class="form-group">
                                <label for="email">Image:</label>
                                <input type="text" class="form-control" name="image">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Title:</label>
                                <input type="text" class="form-control" name="title">
                            </div>
                             <div class="form-group">
                                <label for="pwd">Page Url:</label>
                                <input type="text" class="form-control" name="pageurl">
                            </div>
                             <div class="form-group">
                                <label for="pwd">Status:</label>
                                <select class="form-control" id="coutry" name="status">
                                    <option disabled selected value="room_type">--Select Gallery Status--</option>
                                    <option value="active">Active</option>
                                    <option value="in_active">In-Active</option>                                
                                </select>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Confirm</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
