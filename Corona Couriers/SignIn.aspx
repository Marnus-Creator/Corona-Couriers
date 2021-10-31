<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Corona_Couriers.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StyleSheet.css" />
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="margin-top: 15px; color: #FFFFFF; font-weight: bold; font-size: 50px; text-decoration: underline; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal;">
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/Home.aspx" ToolTip="Return to homepage">Corona Couriers</asp:HyperLink>
        </div>
        <p>
            <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="40pt" ForeColor="Red"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="tbxUsernameSI" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxUsernameSI" ErrorMessage="Please enter a username" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxEmailSI" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Shipping Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tbxEmailSI" ErrorMessage="Please enter a valid email" Font-Size="XX-Large" ForeColor="#FFB7B7" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RegularExpressionValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxAddressSI" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Shipping Address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbxAddressSI" ErrorMessage="Please enter an address" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxPasswordSI" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxPasswordSI" ErrorMessage="Please enter a password" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxConfirmSI" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxPasswordSI" ControlToValidate="tbxConfirmSI" ErrorMessage="Passwords must match" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:CompareValidator>
        </p>
        <p>
            <asp:CheckBox ID="cbxRemberMe" runat="server" Font-Size="50pt" ForeColor="White" Height="99px" OnCheckedChanged="cbxRemberMe_CheckedChanged" Text="Remember me" Width="416px" />
        </p>
        <p>
            <asp:Button ID="btnSignIn" runat="server" BorderStyle="Outset" BorderWidth="5px" Font-Size="XX-Large" Height="74px" Text="Sign In" Width="398px" OnClick="btnSignIn_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Size="40pt" ForeColor="White" Text="Don't have an account?" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="40pt" Font-Underline="True" ForeColor="#DBDBDB" NavigateUrl="~/SignUp.aspx" Font-Bold="True"> Click here</asp:HyperLink>
        </p>
    </form>
</body>
</html>
