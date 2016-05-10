<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewDriver.aspx.cs" Inherits="WebApplication1.MyProject.Classes.Drivers.AddNewDriver" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 424px;
        }
        .auto-style3 {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Add New Driver</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Name</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxID" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>ID</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxStartDay" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Start Day</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPhoneNumber1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Phone Number 1</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxPhoneNumber2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Phone Number 2</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLicenseID" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>License ID</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxBirthday" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>Birthday</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLicenseDate" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>License Date</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLicenseExpiredDate" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>License Expired Date</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxLicenseType" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>License Type</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListForkLift" runat="server">
                        <asp:ListItem>True</asp:ListItem>
                        <asp:ListItem>False</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>Can Drive forkLift</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="Driver_AddNew" runat="server" OnClick="Driver_AddNew_Click" Text="Add New Driver" Width="192px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
