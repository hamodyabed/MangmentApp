<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewCustomer.aspx.cs" Inherits="WebApplication1.MyProject.Classes.Customers.AddNewCustomer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 559px;
        }
        .auto-style3 {
            width: 193px;
        }
        .auto-style4 {
            width: 559px;
            height: 26px;
        }
        .auto-style5 {
            width: 193px;
            height: 26px;
        }
        .auto-style6 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtBoxFirstName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>First Name</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtBoxLastName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Last Name</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtBoxID" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Customer ID</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtBoxComapny" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Company Name</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TxtBoxAddress" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Address</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:TextBox ID="TxtBoxMikod" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style6">Mikod</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="CustAdd" runat="server" OnClick="CustAdd_Click" Text="Add New Customer" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
