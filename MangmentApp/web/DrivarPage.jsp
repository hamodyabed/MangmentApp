<%-- 
    Document   : DrivarPage
    Created on : Apr 26, 2016, 10:43:41 AM
    Author     : iyada
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add New Driver</title>
    </head>
    <body>
        <h2>Driver Details</h2>
        <form action ="./StudentController" method="POST">
            שם נהג: <input type="text" name="driverName"/><br/>
            תאריך תחלת עבודה: <input type="text" name="driverStartDay"/><br/>
            תאריך לידה: <input type="text" name="driverBirthDay"/><br/>
            סכןם משכןרת חודשית: <input type="text" name="driverSalary"/><br/>
            ז"ת: <input type="text" name="driverID"/><br/>
          מס טלפון  1: <input type="text" name="driverPhoneNumber1"/><br/>
           מס טלפון 2: <input type="text" name="driverPhoneNumber2"/><br/>
            מס רישון: <input type="text" name="driverLicenseNumber"/><br/>
            תאריך הוצאת רישיון: <input type="text" name="driverLicenseDay"/><br/>
            מלגזה:  <input type="radio" name="driverCanDriveForklift" value="yes"/>
                    <input type="radio" name="driverCanDriveForklift" value="no"/>
            תוקף רישיון: <input type="text" name="driverLicenseExpiredDay"/><br/>
            דרגת רישיון: <input type="text" name="driverLicenseType"/><br/>
            
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
