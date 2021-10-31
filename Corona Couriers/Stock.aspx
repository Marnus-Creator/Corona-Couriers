<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="Corona_Couriers.Stock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StyleSheet-Stock.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 1px;
        }
        .auto-style2 {
            height: 42px;
        }
        </style>
</head>
<body style="height: 461px; margin-right: 0px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin-top: 15px; color: #FFFFFF; font-weight: bold; font-size: 50px; text-decoration: underline; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal;">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx" ToolTip="Return to homepage">Corona Couriers</asp:HyperLink>
        </div>
        <p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
                <tr>
                    <td class="auto-style2">
                        <br />
                    </td>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="White" Text="Search Name:"></asp:Label>
                        <asp:TextBox ID="tbxSearch" runat="server" Font-Size="X-Large" ForeColor="Black" Height="24px" Width="150px"></asp:TextBox>
&nbsp;&nbsp;
                        <asp:Button ID="btnSearch" runat="server" Font-Size="Large" Height="25px" Text="Search" Width="68px" OnClick="btnSearch_Click" />
&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Size="XX-Large" ForeColor="White" Text="Show:"></asp:Label>
&nbsp;
                        <asp:Button ID="btnBeer" runat="server" Text="Beer" Width="68px" Font-Size="Large" Height="25px" OnClick="btnBeer_Click" />
&nbsp;
                        <asp:Button ID="btnBrandy" runat="server" Text="Brandy" Width="68px" Font-Size="Large" Height="25px" OnClick="btnBrandy_Click" />
&nbsp;
                        <asp:Button ID="btnWhiskey" runat="server" Text="Whiskey" Width="80px" Font-Size="Large" Height="25px" OnClick="btnWhiskey_Click" />
&nbsp;
                        </td>
                    <td class="auto-style2"></td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Size="Large" ForeColor="#333333" GridLines="None" Height="900px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="850px" HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <RowStyle HorizontalAlign ="Left"></RowStyle>
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                        </td>
                    <td>&nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
            <asp:Button ID="btnSignInCont1" runat="server" BorderStyle="Outset" BorderWidth="5px" Font-Size="XX-Large" Height="74px" Text="Continue to Sign in" Width="398px" OnClick="btnCheckout1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</body>
</html>
