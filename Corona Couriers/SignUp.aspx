<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Corona_Couriers.SignUp" %>

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
            <asp:Label ID="lblError" runat="server" Font-Size="40pt" ForeColor="Red"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="tbxUsernameSU" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px" OnTextChanged="tbxUsername_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbxUsernameSU" ErrorMessage="Please enter a username" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxPasswordSU" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbxPasswordSU" ErrorMessage="Please enter a password" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:TextBox ID="tbxConfirmSU" runat="server" Font-Size="XX-Large" Height="70px" style="margin-left: 0px" Width="388px" OnTextChanged="tbxConfirm_TextChanged" TextMode="Password"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="50pt" ForeColor="White" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbxPasswordSU" ControlToValidate="tbxConfirmSU" ErrorMessage="Passwords must match" Font-Size="XX-Large" ForeColor="#FFB7B7" BorderStyle="Dotted" Font-Bold="True" Font-Underline="True"></asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="btnSignUp" runat="server" BorderStyle="Outset" BorderWidth="5px" Font-Size="XX-Large" Height="74px" Text="Sign Up" Width="398px" OnClick="btnSignUp_Click" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Size="40pt" ForeColor="White" Text="Already have an account?" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="40pt" Font-Underline="True" ForeColor="#DBDBDB" NavigateUrl="~/SignIn.aspx" Font-Bold="True"> Click here</asp:HyperLink>
        </p>
        <p id="btnCheckout2">
            &nbsp;</p>
    </form>
</body>
</html>
