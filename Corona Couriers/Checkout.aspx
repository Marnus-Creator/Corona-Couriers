<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="Corona_Couriers.Checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StyleSheet.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
            width: 575px;
            height: 48px;
        }
        .auto-style3 {
            width: 575px;
            text-align: left;
        }
        .auto-style6 {
            height: 48px;
        }
        .auto-style7 {
            text-align: left;
            width: 278px;
            height: 48px;
        }
        .auto-style8 {
            width: 278px;
        }
        .auto-style10 {
            color: #FFFFFF;
        }
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style12 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin-top: 15px; color: #FFFFFF; font-weight: bold; font-size: 50px; text-decoration: underline; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal;">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx" ToolTip="Return to homepage">Corona Couriers</asp:HyperLink>
            <br />
        </div>
        <table style="width:100%;" align="center">
            <tr>
                <td aria-orientation="horizontal" class="auto-style7">
                    <h2>&nbsp;&nbsp; </h2>
                </td>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Font-Bold="True" Font-Size="25pt" Text="Happy with your order?" Width="354px"></asp:Label>
                    <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="X-Large" Height="32px" OnClick="Button3_Click" Text="Order" Width="128px" />
                    <br />
                </td>
                <td class="auto-style6">
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td aria-orientation="vertical" class="auto-style8">
                    <h2></h2>
                </td>
                <td class="auto-style3">
                    <h2 class="auto-style12">
                        <asp:Label ID="Label3" runat="server" BackColor="White" Font-Size="X-Large" ForeColor="Black" Height="30px" Text="Remove Item (ID):"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Font-Size="Large" Height="30px" Width="88px"></asp:TextBox>
&nbsp;
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="X-Large" Height="35px" Text="Remove" Width="122px" />
&nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" CssClass="auto-style9" Font-Size="X-Large" ForeColor="Black" Height="484px" Width="516px"></asp:ListBox>
                    </h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
            <tr>
                <td aria-orientation="vertical" class="auto-style8">
                    <h2></h2>
                </td>
                <td class="auto-style3">
                    <h2>
                        <asp:Label ID="lblFinish" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="XX-Large" ForeColor="#009900"></asp:Label>
                    </h2>
                </td>
                <td>
                    <h2></h2>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
