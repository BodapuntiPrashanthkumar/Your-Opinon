<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mini Reg.aspx.cs" Inherits="mini_project.Mini_Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            font-size: x-large;
        }
        sup {
            color:red;
        }
        .auto-style7 {
            background-color: #0000FF;
        }
        .auto-style8 {
            text-decoration: none;
        }
        .auto-style9 {
            text-align: left;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
        <div class="auto-style9">
            &nbsp;<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" BackColor="Blue" CssClass="auto-style5" ForeColor="White" Text="Join Your Opinon"></asp:Label>
            </strong>
            <br />
            <br />
        </div>
        </div>
    <p class="auto-style9">
        &nbsp;</p>
        <div class="auto-style9">
        <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Disabled" BorderColor="Blue" Width="272px"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter First Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;</div>
        <p class="auto-style9">
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Blue" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Last Name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="White" Width="272px">
                <asp:ListItem>Select Gender</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Select a Gender" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            &nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Blue" TextMode="Email" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter a Valid Email" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="Label6" runat="server" Text="Mobile No"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="Blue" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Mobile No" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="Blue" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Username" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="Blue" TextMode="Password" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style9">
            <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" BorderColor="Blue" TextMode="Password" Width="272px" AutoCompleteType="Disabled"></asp:TextBox>
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Password Not Match" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
        </p>
        <p class="auto-style9">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CssClass="auto-style7" Font-Bold="True" ForeColor="White" Text="Register" Width="120px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" ForeColor="Blue" Text="Label"></asp:Label>
        </p>
        <p class="auto-style9">
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style8" ForeColor="#3333CC" NavigateUrl="~/Mini login.aspx">Already have an account?</asp:HyperLink>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" ForeColor="#CC66FF" Text="or"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style8" ForeColor="#0066FF" NavigateUrl="~/Mini login.aspx">Login Page</asp:HyperLink>
        </p>
    </form>
    <p class="auto-style3">
&nbsp;&nbsp;
    </p>
    </body>
</html>
