<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mini login.aspx.cs" Inherits="mini_project.Mini_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            color: #003366;
            background-color: #CCCCFF;
        }
        .auto-style4 {
            background-color: #CCCCFF;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            color: #FFFFFF;
            background-color: #6600FF;
        }
        .auto-style8 {
            color: #0066CC;
        }
        .auto-style9 {
            font-size: small;
            color: #3333FF;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            text-decoration: none;
            background-color: #66FF33;
        }
    </style>
</head>
<body style="height: 881px">
    <form id="form1" runat="server">
        <div class="auto-style5">
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" BorderColor="#FF33CC" CssClass="auto-style10" Font-Bold="True" ForeColor="#3366FF" Text="Your Opinon"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" BorderColor="#9900FF" CssClass="auto-style3" Text="Username :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BackColor="White" BorderColor="Blue" Width="230px" AutoCompleteType="Disabled"></asp:TextBox>
        </div>
        <p class="auto-style5">
            <asp:Label ID="Label3" runat="server" BorderColor="#9900FF" CssClass="auto-style4" Text="Password :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BackColor="White" BorderColor="#3366FF" Width="229px" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BorderColor="#6600FF" CssClass="auto-style6" Font-Bold="True" OnClick="Button1_Click" Text="Log In" Width="161px" />
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="or"></asp:Label>
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" Font-Bold="True" ForeColor="White" NavigateUrl="~/Mini Reg.aspx">Create New Account</asp:HyperLink>
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text="Forgotten password?"></asp:Label>
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" CssClass="auto-style9" Text="Your Opinon Inc."></asp:Label>
        </p>
    </form>
</body>
</html>
