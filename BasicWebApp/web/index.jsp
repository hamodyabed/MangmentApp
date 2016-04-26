<%-- 
    Document   : index
    Created on : Apr 26, 2016, 9:56:34 AM
    Author     : iyada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Student Details</h2>
        <form action ="./StudentController" method="POST">
            גד: <input type="text" name="id"/><br/>
            Name: <input type="text" name="name"/><br/>
            Address: <input type="text" name="address"/><br/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
