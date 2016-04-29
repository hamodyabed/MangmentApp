<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customers.aspx.cs" Inherits="WebApplication1.customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 51px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <div style="border: 1px solid black; height: 168px;">
            <h1 style="float: right; text-align: right; border: 1px solid black;">רשימת לקוחות</h1>
            <!--  the continer-->
            <div style="height: 306px; width: 1347px; float: right; border: 1px thick" align="right" readonly="true">

                <table style="float:right;">
                    <tr>

                        <td>
                            <input id="filterId" type="text" style="text-align:right;" />



                        </td>

                            <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" style="float: right;">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>שם</asp:ListItem>
                                <asp:ListItem>מספר טלפון</asp:ListItem>
                                
                            </asp:DropDownList>


                        </td>
                        <td class="auto-style1">
                            <h3 style="text-align: right; float: right;">חיפוש לפי&nbsp;</h3>
                        </td>
                    



                    </tr>
                </table>


                <!-- display the data-->
                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style2">תאריך לידה</td>
                        <td class="auto-style2">כתובת</td>
                        <td class="auto-style2">גיל</td>
                        <td class="auto-style2">שם</td>
                        <td class="auto-style2">מספר לקוח</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>




                <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="right">
                </asp:GridView>




            </div>
        </div>
    </form>
</body>
</html>
