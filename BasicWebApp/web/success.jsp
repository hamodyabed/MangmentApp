<%-- 
    Document   : success
    Created on : Apr 26, 2016, 10:09:05 AM
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
        <h1> Student Details</h1><br/>
        Student ID: ${requestScope.student.studentID}<br/>
        Student Name: ${requestScope.student.studentName}<br/>
        Student Address: ${requestScope.student.studentAddress}<br/>
     
    </body>
</html>
