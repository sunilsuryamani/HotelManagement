<%-- 
    Document   : test
    Created on : Mar 9, 2020, 4:26:07 PM
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
        <h3>File Upload:</h3>
      Select a file to upload: <br />
      <form action = "test" method = "post" enctype = "multipart/form-data">
         <input type = "file" name = "product_image" size = "50" />
         <br />
         <input type = "submit" value = "Upload File" />
      </form>
    </body>
</html>
