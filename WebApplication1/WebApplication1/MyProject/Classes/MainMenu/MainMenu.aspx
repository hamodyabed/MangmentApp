<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="WebApplication1.MainMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" type="text/css" href="Content\menu.css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <title></title>
        <style type="text/css">
            #Button1 {
                width: 118px;
            }
        </style>


    <script>
            $(document).ready(function () {
                $("#customers").click(function () {
                   $("#maincontinater").load("subOrder.aspx");
                });
                $("#orders").click(function () {
                    $("#header").hide();
                    $("#maincontinater").load("orders.aspx");
                });

                $("#customers").click(function () {
                    $("#header").hide();
                    $("#maincontinater").load("orders.aspx");
                });
               
            });
        </script>


</head>
<body>
    <form id="form1" runat="server">
    <div>

    
    </div>
        <div id="header">
<h1>בטון וטיט ד&quot;ר סמי</h1>
</div>






   <div class="table-responsive" id="maincontinater">
  <table class="table" style="border-color:blue;" border="1">
        <tr>
            <td>
                <input id="drivers" style="width:99%; height:149px;" type="button" value="נהגים" /></td>
            <td>
                <input id="orders" style="width:99%; height:149px;" type="button" value="הזמנות" /></td>
            <td>
                <input id="customers" style="width:99%; height:149px;"  type="button" value="לקוחות" /></td>
        </tr>
        <tr>
            <td>
                <input id="Button8" type="button" value="button" style="width:99%; height:149px;" /></td>
            <td>
                <input id="Button5" type="button" value="button"style="width:99%; height:149px;"  /></td>
            <td>
                <input id="Button2" type="button" value="button" style="width:99%; height:149px;" /></td>
        </tr>
        <tr>
            <td>
                <input id="Button9" type="button" value="button" style="width:99%; height:149px;" /></td>
            <td>
                <input id="Button6" type="button" value="button" style="width:99%; height:149px;" /></td>
            <td>
                <input id="Button3" type="button" value="button" style="width:99%; height:149px;" /></td>
        </tr>
    </table>
</div>

        <div id="footer">
Copyright © W3Schools.com
</div>
    </form>
</body>
</html>
