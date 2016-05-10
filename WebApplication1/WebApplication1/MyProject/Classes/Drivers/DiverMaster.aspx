<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DiverMaster.aspx.cs" Inherits="WebApplication1.MyProject.Classes.Drivers.DiverMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                
                <td class="auto-style2">
                    <h1>
                        Drivers
                    </h1></td>
            </tr>
            <tr>

                <td>
                    <div>
                        <table>
                            <tr>
                                <td>

                                    <asp:Button ID="AddNewCustomer" runat="server" Text="Add New Driver" Width="180px" OnClick="AddNewCustomer_Click" />

                                </td>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <div style="float:right">
                    </div>
                   
                   
                    <asp:GridView ID="GridViewDriver" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceDriver" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="DriverID" HeaderText="DriverID" SortExpression="DriverID" />
                            <asp:BoundField DataField="StartDay" HeaderText="StartDay" SortExpression="StartDay" />
                            <asp:BoundField DataField="PhoneNumber1" HeaderText="PhoneNumber1" SortExpression="PhoneNumber1" />
                            <asp:BoundField DataField="PhoneNumber2" HeaderText="PhoneNumber2" SortExpression="PhoneNumber2" />
                            <asp:BoundField DataField="LicenseID" HeaderText="LicenseID" SortExpression="LicenseID" />
                            <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                            <asp:BoundField DataField="LicenseDate" HeaderText="LicenseDate" SortExpression="LicenseDate" />
                            <asp:BoundField DataField="LicenseExpiredDate" HeaderText="LicenseExpiredDate" SortExpression="LicenseExpiredDate" />
                            <asp:BoundField DataField="LicenseType" HeaderText="LicenseType" SortExpression="LicenseType" />
                            <asp:BoundField DataField="CanDriveForkLift" HeaderText="CanDriveForkLift" SortExpression="CanDriveForkLift" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                   
                   
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSourceDriver" runat="server" ConnectionString="<%$ ConnectionStrings:CustomerConnectionString %>" SelectCommand="SELECT * FROM [Driver]" DeleteCommand="DELETE FROM [Driver] where [id]=@id" UpdateCommand="UPDATE [Driver] SET [DriverID]=@DriverID,[StartDay]=@StartDay,[PhoneNumber1]=@PhoneNumber1,[PhoneNumber2]=@PhoneNumber2,[LicenseID]=@LicenseID,[Birthday]=@Birthday,[LicenseDate]=@LicenseDate,[LicenseExpiredDate]=@LicenseExpiredDate,[LicenseType]=@LicenseType,[CanDriveForkLift]=@CanDriveForkLift,[Name]=@Name where [id]=@id"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body></html>
