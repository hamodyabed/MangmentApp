<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="WebApplication1.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" type="text/css" href="Content\menu.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

        <script>
            $(document).ready(function () {
                $("#addsuborder").click(function () {
                   // $("#maincontinater").hide();
                  //  confirm("Press a button!");
                   $("#maincontinater").load("subOrder.aspx");
                });
               // $(".search").click(function () {
                   // $("#maincontinater").show();
                //});
            });
        </script>
    <title></title>

</head>

<body>
    <form id="form1" runat="server">
        
        <!--customer details -->
        <!-- menu-->
        <div style=" border: 8px solid blue; height: 53px;">
            <input type="submit"  value="יציאה" id="genricButton"/>

            <asp:Button runat="server" Text="חיפוש הזמנות" id="searchOrder" class="search" style="float:right;"  OnClick="AddOrder_Click"/>
            <input type="button" value="הוספת תעודת משלוח" id="addsuborder" class="search" style="float:right;" />

        </div>

                <center><font size="5" style="font-style: oblique; font-size: xx-large;"> הזמנה </font></center>
                <br><br>
        <!--the main container -->
        
        <div id="maincontinater">
            <div align="right">

                <table aria-busy="False" draggable="auto">
                    <tr>
                        <td class="auto-style2"><input type="text" name="CustomerLocation" value="" /></td>

                        <td class="auto-style3"><font id="orderfields"> לכבוד לקוח</font></td> 
                    </tr>
                    <tr>
                        <td><input type="text" name="CustomerLocation" value="" /></td>

                        <td class="auto-style1"><font id="orderfields"> אתר</font></td>

                    </tr>
                    <tr>
                        <td><input type="text" name="CustomerLocation" readonly="true" /></td>

                        <td class="auto-style1"><font id="orderfields"> מספר הזמנה</font></td>

                    </tr>
                    <tr>
                        <td><input type="text" name="CustomerLocation" value="" /></td>

                        <td class="auto-style1"><font id="orderfields"> שם המזמין</font></td>

                    </tr>
                    <tr>
                        <td><input type="text" name="CustomerLocation" value="" /></td>
                        <td class="auto-style1"><font id="orderfields"> כמות</font></td>

                    </tr>
                    <tr>
                        <td><input type="text" name="CustomerLocation" value="" /></td>
                        <td class="auto-style1" ><font id="orderfields" > הוזמן</font></td>

                    </tr>


                </table>

            </div>


            <div>

                <center>
                    <input  type="submit" value="הוספה"  style="width:171px; height:50px; top: -2px; left: -305px;"/>

                </center>
            </div>

        </div>
 

        <div style="height: 137px; position:relative; top: 4px; left: 5px; width: 1345px;">
        </div>
 

    </form>
</body>
</html>
