<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Corona_Couriers.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link rel ="stylesheet" type="text/css" href="StyleSheet-Home.css" />
<html lang="en">
<head>
    <title>CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

/*
body {
    background-image: url(adam-wilson-6UIonphZA5o-unsplash.JPG);
}
*/



/* Styles the sidebar */
.sidenav {
  height: 177%;
  width: 190px;
  position: fixed;
  z-index: 1;
  top: -385px;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
}


/* Sidebar links */
.sidenav a {
  color: white;
  padding: 16px;
  text-decoration: none;
  display: block;
        height: 177px;
    }

/* Change the color when hovering */
.sidenav a:hover {
  background-color: #ddd;
  color: black;
}

/* Styles content */
.content {
  margin-left: 200px;
  padding-left: 20px;
}
    #form1 {
        height: 123px;
    }
    .auto-style1 {
        height: 228px;
    }
    .auto-style2 {
        height: 276px;
    }
</style>
</head>
<body>

    <form id="form1" runat="server" class="auto-style1">

<div class="sidenav">
  <a href="#">Link</a>&nbsp;
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <a href="#" class="auto-style2">
    <asp:Button ID="btnStock" runat="server" BorderWidth="5px" Font-Size="XX-Large" Height="122px" style="margin-top: 23px" Text="Stock" Width="157px" OnClick="Button1_Click" />
    </a>
    <br />
    <a href="#" class="auto-style2">
    <asp:Button ID="btnOrder" runat="server" BorderWidth="5px" Font-Size="XX-Large" Height="122px" OnClick="Button1_Click1" Text="Order" Width="157px" />
    </a><br />
    <a href="#">
    <asp:Button ID="btnSignIn" runat="server" BorderWidth="5px" Font-Size="XX-Large" Height="122px" style="margin-top: 23px" Text="Sign in" Width="157px" OnClick="Button2_Click" />
    </a>&nbsp;</div>

        <div class="content">
            <h2>Corona Couriers</h2>
            <p>
                <asp:Label ID="Label1" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="8px" Font-Bold="True" Font-Names="Comic Sans MS" Text="Don't want to stand in line to get your alcoholic beverages?" BackColor="White" ForeColor="Black"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Label2" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="8px" Font-Bold="True" Font-Names="Comic Sans MS" Text="Say no more!" BackColor="White" ForeColor="Black"></asp:Label>
            </p>

</div>
    </form>

</body>
</html>
