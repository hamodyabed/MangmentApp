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




                <asp:GridView ID="GridView1" runat="server"  HorizontalAlign="Right" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="מספר_לקוח" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField DeleteText="מחיקה" ShowDeleteButton="True" />
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:CommandField CancelText="ביטול" DeleteText="מחיקה" EditText="עריכה" ShowEditButton="True" />
                        <asp:BoundField DataField="אתר" HeaderText="אתר" SortExpression="אתר" />
                        <asp:BoundField DataField="תאריך" HeaderText="תאריך" SortExpression="תאריך" />
                        <asp:BoundField DataField="גיל" HeaderText="גיל" SortExpression="גיל" />
                        <asp:BoundField DataField="שם" HeaderText="שם" SortExpression="שם" />
                        <asp:BoundField DataField="מספר_לקוח" HeaderText="מספר_לקוח" ReadOnly="True" SortExpression="מספר_לקוח" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>




                <asp:EntityDataSource ID="EntityDataSource1" runat="server">
                </asp:EntityDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:mysqlConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [מספר לקוח] = @original_מספר_לקוח AND (([שם] = @original_שם) OR ([שם] IS NULL AND @original_שם IS NULL)) AND (([גיל] = @original_גיל) OR ([גיל] IS NULL AND @original_גיל IS NULL)) AND (([אתר] = @original_אתר) OR ([אתר] IS NULL AND @original_אתר IS NULL)) AND (([תאריך] = @original_תאריך) OR ([תאריך] IS NULL AND @original_תאריך IS NULL))" InsertCommand="INSERT INTO [customer] ([מספר לקוח], [שם], [גיל], [אתר], [תאריך]) VALUES (@מספר_לקוח, @שם, @גיל, @אתר, @תאריך)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [מספר לקוח] AS מספר_לקוח, [שם], [גיל], [אתר], [תאריך] FROM [customer]" UpdateCommand="UPDATE [customer] SET [שם] = @שם, [גיל] = @גיל, [אתר] = @אתר, [תאריך] = @תאריך WHERE [מספר לקוח] = @original_מספר_לקוח AND (([שם] = @original_שם) OR ([שם] IS NULL AND @original_שם IS NULL)) AND (([גיל] = @original_גיל) OR ([גיל] IS NULL AND @original_גיל IS NULL)) AND (([אתר] = @original_אתר) OR ([אתר] IS NULL AND @original_אתר IS NULL)) AND (([תאריך] = @original_תאריך) OR ([תאריך] IS NULL AND @original_תאריך IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_מספר_לקוח" Type="Int32" />
                        <asp:Parameter Name="original_שם" Type="String" />
                        <asp:Parameter Name="original_גיל" Type="String" />
                        <asp:Parameter Name="original_אתר" Type="String" />
                        <asp:Parameter Name="original_תאריך" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="מספר_לקוח" Type="Int32" />
                        <asp:Parameter Name="שם" Type="String" />
                        <asp:Parameter Name="גיל" Type="String" />
                        <asp:Parameter Name="אתר" Type="String" />
                        <asp:Parameter Name="תאריך" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="שם" Type="String" />
                        <asp:Parameter Name="גיל" Type="String" />
                        <asp:Parameter Name="אתר" Type="String" />
                        <asp:Parameter Name="תאריך" Type="String" />
                        <asp:Parameter Name="original_מספר_לקוח" Type="Int32" />
                        <asp:Parameter Name="original_שם" Type="String" />
                        <asp:Parameter Name="original_גיל" Type="String" />
                        <asp:Parameter Name="original_אתר" Type="String" />
                        <asp:Parameter Name="original_תאריך" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>




            </div>
        </div>
        <asp:Button ID="Button12" runat="server" Text="Button" />
    </form>
</body>
</html>
