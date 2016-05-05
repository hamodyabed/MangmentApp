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
        <div style=" text-align: right; border: 1px solid black; position:center">
            <table>
                <tr>
                    <td>
                         <asp:Button ID="CustAddNew" Text="Add New Custamer" runat="server" OnClick="CustAddNew_Click"  />
                    </td>
                </tr>
            </table>
        </div>
        <div style="border: 1px solid black; height: 168px;">
            <h1 style="float: right; text-align: right; border: 1px solid black;">רשימת לקוחות</h1>
            <!--  the continer-->
            <div style="height: 306px; width: 1347px; float: right; border: 1px thick" align="right" readonly="true">

                <table style="float: right;">
                    <tr>
                        <td>
                            <asp:Button ID="CustSearch" Text="חיפוש" runat="server" OnClick="CustSerch_Click" />
                        </td>
                        <td>
                            <asp:TextBox ID="CustSearchTextBox" runat="server" AutoPostBack="True"></asp:TextBox>
                        </td>

                        <td>
                            <asp:DropDownList ID="CustDropDownSearch" runat="server" Style="float: right;">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>שם</asp:ListItem>
                                <asp:ListItem>מספר טלפון</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <h3 style="text-align: right; float: right;">חיפוש לפי&nbsp;</h3>
                        </td>
                    </tr>

                </table>

            </div>
           



        </div>


    </form>
</body>
</html>
