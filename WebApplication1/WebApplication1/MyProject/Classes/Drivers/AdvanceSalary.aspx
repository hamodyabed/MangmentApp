<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdvanceSalary.aspx.cs" Inherits="WebApplication1.MyProject.Classes.Drivers.AdvanceSalary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 270px;
        }

        .auto-style3 {
            width: 465px;
        }

        .auto-style4 {
            margin-left: 240px;
        }
        .auto-style5 {
            width: 270px;
            height: 23px;
        }
        .auto-style6 {
            width: 465px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">Soalfa - Advance On Salary</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownListDriverName" runat="server" AutoPostBack="True" CssClass="auto-style4" DataSourceID="SqlDataSourceDriver" DataTextField="Name" DataValueField="Name" Height="16px" Width="284px" OnSelectedIndexChanged="DropDownListDriverName_SelectedIndexChanged" >
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceDriver" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [Driver]">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="1" Name="Id" QueryStringField="Id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>Driver</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="LabelDate" runat="server"></asp:Label>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="17px"
                        ImageUrl="~/image/calender.jpg" OnClick="ImageButton1_Click" Width="21px" />
                    <asp:Calendar ID="CalendarDate" runat="server"
                        OnSelectionChanged="CalendarDate_SelectionChanged" Visible="False"></asp:Calendar>
                    &nbsp;</td>
                <td>Date</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxAmount" runat="server" Width="165px"></asp:TextBox>
                </td>
                <td>Amount</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6">
                    <asp:Label ID="LabelTotalAmount" runat="server" Text="TotalAmount"></asp:Label>
                    </td>
                <td class="auto-style7">Total Amount</td>
            </tr>
            <tr>
                <td >
                    <asp:Button ID="ButtonAddAdvanceOnSalary" runat="server" Text="Add" Width="77px" />
                </td>
            </tr>
        </table>
        <div>
            <asp:GridView ID="GridViewDriverAdvanceOnSalary" runat="server" AutoGenerateColumns="False">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
