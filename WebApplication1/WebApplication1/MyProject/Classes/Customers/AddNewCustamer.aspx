<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewCustamer.aspx.cs" Inherits="WebApplication1.Classes.Cusatmers.AddNewCustamer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Add New Custamer</title>
</head>

<body>
    <form id="form1" runat="server">
        <!--customer details -->
        <!-- menu-->



        <div style="float:right">

            <div style="text-align: center;">
                <h1>לקוחות</h1>
            </div>

            <div style="float: right;">
                <table style="float:right">
                    <tr>
                        <td>
                            <asp:TextBox ID="CustomerFirstName" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label1" Text="First Name" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="CustomerLastName" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label2" Text="Last Name" runat="server"></asp:Label></td>
                    </tr>
                      <tr>
                        <td>
                            <asp:TextBox ID="CustomerID" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label3" Text="Customer ID" runat="server"></asp:Label></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:TextBox ID="CustomerCompany" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label4" Text="Company" runat="server"></asp:Label></td>
                    </tr>
                      <tr>
                        <td>
                            <asp:TextBox ID="CustomerAddress" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label5" Text="Address" runat="server"></asp:Label></td>
                    </tr>
                     <tr>
                        <td>
                            <asp:TextBox ID="CustomerMikod" runat="server"></asp:TextBox>
                        </td>

                        <td>
                            <asp:Label ID="Label6" Text="Mikod" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <div style="text-align:center">
                <asp:Button ID="CustSearch" Text="Add" runat="server" OnClick="AddNewCust_Click"/>
            </div>
        </div>
    </form>
</body>

</html>
