<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Corona_Couriers.Order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StyleSheetOrder.css" />
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 288px;
        }
        .auto-style10 {
            width: 90px;
            font-size: x-large;
        }
        .auto-style14 {
            width: 90px;
        }
        .auto-style15 {
            width: 90px;
            height: 23px;
        }
        .auto-style16 {
            width: 120px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style19 {
            width: 100px;
        }
        .auto-style21 {
            width: 100%;
            height: 301px;
        }
        .auto-style24 {
            width: 308px;
        }
        .auto-style25 {
            width: 115px;
        }
        .auto-style26 {
            font-size: x-large;
        }
        .auto-style27 {
            width: 250px;
            height: 40px;
        }
        .auto-style28 {
            height: 40px;
        }
        .auto-style29 {
            width: 115px;
            height: 42px;
        }
        .auto-style30 {
            height: 42px;
        }
        .auto-style31 {
            width: 250px;
        }
        .auto-style35 {
            width: 101%;
        }
        .auto-style36 {
            width: 100%;
        }
        .auto-style38 {
            width: 120px;
        }
        .auto-style39 {
            width: 121px;
        }
        .auto-style41 {
            width: 2px;
        }
        .auto-style42 {
            width: 100%;
            height: 100px;
        }
        .auto-style43 {
            width: 315px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style42" style="margin-top: 15px; color: #FFFFFF; font-weight: bold; font-size: 50px; text-decoration: underline; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal;">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx" ToolTip="Return to homepage">Corona Couriers</asp:HyperLink>
        </div>
        <table class="auto-style1" style="background-color: #FFFFFF">
            <tr>
                <td class="auto-style24">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style10">Beer</td>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style19">Name:</td>
                            <td>Price (per case):</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnBlackLabel" runat="server" OnClick="Button1_Click" Text="Order" />
                            </td>
                            <td class="auto-style19">Black Label </td>
                            <td>192</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnCastleLager" runat="server" Text="Order" OnClick="btnCastleLager_Click" />
                            </td>
                            <td class="auto-style19">Castle Lager</td>
                            <td>216</td>
                        </tr>
                    </table>
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnCastleLite" runat="server" Text="Order" OnClick="btnCastleLite_Click" />
                            </td>
                            <td class="auto-style19">Castle Lite</td>
                            <td>192</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnWindhoek" runat="server" Text="Order" OnClick="btnWindhoek_Click" />
                            </td>
                            <td class="auto-style19">Windhoek</td>
                            <td>240</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnCorona" runat="server" Text="Order" OnClick="btnCorona_Click" />
                            </td>
                            <td class="auto-style19">Corona</td>
                            <td>216</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style43">
                    <table class="auto-style36">
                        <tr>
                            <td class="auto-style14" style="font-size: x-large">Brandy</td>
                            <td class="auto-style19">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">&nbsp;</td>
                            <td class="auto-style19">Name:</td>
                            <td>Price (per case):</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnOlof" runat="server" Text="Order" OnClick="btnOlof_Click" />
                            </td>
                            <td class="auto-style19">Olof</td>
                            <td>1740</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnRichelieu" runat="server" Text="Order" OnClick="btnRichelieu_Click" />
                            </td>
                            <td class="auto-style19">Richelieu</td>
                            <td>1860</td>
                        </tr>
                    </table>
                    <table class="auto-style35">
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnKWV5" runat="server" Text="Order" OnClick="btnKWV5_Click" />
                            </td>
                            <td class="auto-style19">KWV5</td>
                            <td>1980</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnKWV3" runat="server" Text="Order" OnClick="btnKWV3_Click" />
                            </td>
                            <td class="auto-style19">KWV3</td>
                            <td>1740</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnWellington" runat="server" Text="Order" OnClick="btnWellington_Click" />
                            </td>
                            <td class="auto-style19">Wellington</td>
                            <td>1700</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td>
                    <table class="auto-style36">
                        <tr>
                            <td class="auto-style14" style="font-size: x-large">Whisky</td>
                            <td class="auto-style38">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style15"></td>
                            <td class="auto-style16">Name:</td>
                            <td class="auto-style17">Price (per case):</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnJohnnieWalker" runat="server" Text="Order" OnClick="btnJohnnieWalker_Click" />
                            </td>
                            <td class="auto-style38">Johnnie Walker</td>
                            <td>2200</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnGlenfiddich" runat="server" Text="Order" OnClick="btnGlenfiddich_Click" />
                            </td>
                            <td class="auto-style38">Glenfiddich</td>
                            <td>1900</td>
                        </tr>
                    </table>
                    <table class="auto-style36">
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnJackDaniels" runat="server" Text="Order" OnClick="btnJackDaniels_Click" />
                            </td>
                            <td class="auto-style39">Jack Daniels</td>
                            <td>2100</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnJameson" runat="server" Text="Order" OnClick="btnJameson_Click" />
                            </td>
                            <td class="auto-style39">Jameson</td>
                            <td>2040</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                <asp:Button ID="btnKilchoman" runat="server" Text="Order" OnClick="btnKilchoman_Click" />
                            </td>
                            <td class="auto-style39">Kilchoman 12y</td>
                            <td>9600</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">
            <asp:GridView ID="GridView2" runat="server" CellPadding="4" Font-Size="Large" ForeColor="#333333" GridLines="None" Height="900px" Width="850px" HorizontalAlign="Left" BorderColor="Black" BorderStyle="Solid" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <RowStyle HorizontalAlign ="Left"></RowStyle>
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Remove" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style43">
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style27">
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Remove item:  "></asp:Label>
                                <asp:TextBox ID="tbxRemove" runat="server" Width="60px"></asp:TextBox>
&nbsp;<asp:Button ID="btnRemove" runat="server" Font-Bold="True" Height="23px" OnClick="btnRemove_Click" Text="Remove" Width="63px" />
                            </td>
                            <td class="auto-style28"></td>
                            <td class="auto-style28"></td>
                        </tr>
                        <tr>
                            <td class="auto-style27">
                                <asp:Button ID="btnDisplay" runat="server" Font-Bold="True" Font-Size="15pt" Height="32px" OnClick="Button2_Click" Text="Display/Refresh cart" Width="249px" />
                            </td>
                            <td class="auto-style28"></td>
                            <td class="auto-style28"></td>
                        </tr>
                        <tr>
                            <td class="auto-style31">
                    <asp:Button ID="btnFinalOrder" runat="server" Font-Bold="True" Font-Size="15pt" Height="32px" OnClick="Button3_Click" Text="Place final order" Width="180px" />
                                <br />
&nbsp;<asp:Label ID="lblEmptyCart" runat="server" Font-Size="XX-Large" ForeColor="Red">Cart is empty</asp:Label>
                    <asp:Label ID="lblFinalOrder" runat="server" CssClass="auto-style26" Font-Bold="True" Font-Size="25pt" Width="250px" ForeColor="Lime"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style41">&nbsp;</td>
                <td>
                    <table class="auto-style21">
                        <tr>
                            <td class="auto-style29">&nbsp;</td>
                            <td class="auto-style30"></td>
                            <td class="auto-style30"></td>
                        </tr>
                        <tr>
                            <td class="auto-style25">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style25">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
