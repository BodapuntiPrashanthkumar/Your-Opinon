<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Your.aspx.cs" Inherits="mini_project.Your" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
            font-size: x-large;
            background-color: #0000FF;
        }
        .auto-style2 {
            text-align: center;
            height: 104px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            color: #FFFFFF;
            background-color: #0099FF;
        }
        .auto-style5 {
            color: #FFFFFF;
            background-color: #3399FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Your Opinon"></asp:Label>
            <br />
        </div>
        <div class="auto-style3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Movie Poster" CssClass="auto-style4"></asp:Label>
&nbsp;&nbsp;
            <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="Blue" />
&nbsp;
            <asp:Button ID="Button1" runat="server" BorderColor="#0000CC" Text="Upload" OnClick="Button1_Click" />
        </div>
        <p class="auto-style3">
            <asp:Label ID="Label3" runat="server" Text="Movie Name" CssClass="auto-style5"></asp:Label>
&nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Blue" Width="214px"></asp:TextBox>
        </p>
        <p class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="Movie Genre" CssClass="auto-style5"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Width="213px">
                <asp:ListItem>Selecte a Genre</asp:ListItem>
                <asp:ListItem>Love</asp:ListItem>
                <asp:ListItem>Drama</asp:ListItem>
                <asp:ListItem>Action</asp:ListItem>
                <asp:ListItem>Thriller</asp:ListItem>
                <asp:ListItem>Sports</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Movie Rating" CssClass="auto-style5"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Width="214px">
                <asp:ListItem>Select Rating</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Movie Review" CssClass="auto-style5"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Blue" TextMode="MultiLine" Width="213px"></asp:TextBox>
        </p>
    
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="b1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </p>
    <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" ShowFooter="false" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting">
        <Columns>
            <asp:TemplateField HeaderText="Movie Poster">
                <ItemTemplate>
   <asp:Image ID="img1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="100px" Width="150px" />
                    </ItemTemplate>
                      <EditItemTemplate>  
                    <asp:Image ID="img_user" runat="server" ImageUrl='<%# Eval("Image") %>' Height="100px" Width="150px" />  
                    <br />  
                    <asp:FileUpload ID="FileUpload1" runat="server" />  
                </EditItemTemplate>  
          
            </asp:TemplateField>

           
            <asp:TemplateField HeaderText="Movie Name" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblMovieName" runat="server" Text='<%# Eval("MovieName") %>'></asp:Label>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("MovieName") %>'></asp:TextBox>  
                </EditItemTemplate>  
            </asp:TemplateField>  

             <asp:TemplateField HeaderText="Movie Genre" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblMovieGenre" runat="server" Text='<%# Eval("MovieGenre") %>'></asp:Label>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:DropDownList ID="DropDownList4" runat="server"></asp:DropDownList>
                </EditItemTemplate>  
            </asp:TemplateField> 

             <asp:TemplateField HeaderText="Movie Rating" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblMovieRating" runat="server" Text='<%# Eval("MovieRating") %>'></asp:Label>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:DropDownList ID="DropDownList3" runat="server"></asp:DropDownList>
                </EditItemTemplate>  
            </asp:TemplateField> 

             <asp:TemplateField HeaderText="Movie Review" HeaderStyle-Width="200px">  
                <ItemTemplate>  
                    <asp:Label ID="lblMovieReview" runat="server" Text='<%# Eval("MovieReview") %>'></asp:Label>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:TextBox ID="txt_Review" runat="server" Text='<%# Eval("MovieReview") %>'></asp:TextBox>  
                </EditItemTemplate>  
            </asp:TemplateField> 

            <asp:TemplateField HeaderText="Actions">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>  
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
            </asp:TemplateField> 

        </Columns>



    </asp:GridView>
</form>
</body>
</html>
