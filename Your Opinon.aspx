<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Your Opinon.aspx.cs" Inherits="mini_project.Your_Opinon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    
    <form id="form1" runat="server">
        <div>

            <table border="0">
          

         <tr>
                <td>
                    <asp:Label ID="l1" runat="server" Text="Sno" Font-Bold="true" ForeColor="Blue" /> &nbsp &nbsp &nbsp &nbsp
                </td>
             <td>
                 <asp:Label ID="l6" runat="server" Text="Poster" Font-Bold="true" ForeColor="Blue"  />
             </td>
             
               
                <td>
                    <asp:Label ID="l2" runat="server" Text="Name" Font-Bold="true"  ForeColor="Blue" />
                </td>
                <td>
                    <asp:Label ID="l3" runat="server" Text="Genre" Font-Bold="true" ForeColor="Blue"  />
                </td>
                <td>
                    <asp:Label ID="l4" runat="server" Text="Rating" Font-Bold="true" ForeColor="Blue"  />
                 </td>
                <td>
                    <asp:Label ID="l5" runat="server" Text="Review" Font-Bold="true" ForeColor="Blue"  />
                </td>
             <td></td>
         </tr>
                <tr>

                     <td>
                      <asp:Label ID="sno" runat="server" Visible="false"></asp:Label>
                    </td>
                    
                    <td>
                        <asp:FileUpload ID="fileupload" runat="server" AllowMultiple="false" BorderColor="Blue" />
                    </td>
                <td>
                      <asp:TextBox ID="name" runat="server" BorderColor="Blue"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="genreddl" runat="server" Width="238px">
                        <asp:ListItem Text="Select a Genre" Value=""></asp:ListItem>
                      <asp:ListItem Text="Family" Value="adventure"></asp:ListItem>
                     <asp:ListItem Text="Comedy" Value="comedy"></asp:ListItem>
                     <asp:ListItem Text="Love" Value="Love"></asp:ListItem>
                       <asp:ListItem Text="Drama" Value="drama"></asp:ListItem>
                        <asp:ListItem Text="Romance" Value="romance"></asp:ListItem>
                        <asp:ListItem Text="Horror" Value="Horror"></asp:ListItem>

                    </asp:DropDownList>
               </td>
                <td>
                    <asp:DropDownList ID="ratingddl" runat="server" Width="242px">
                        <asp:ListItem Text="Select a Rating" Value=""></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                     <asp:ListItem Text="2" Value="2"></asp:ListItem>
                     <asp:ListItem Text="3" Value="3"></asp:ListItem>
                       <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>

                    </asp:DropDownList>
                 </td>
                <td>
                      <asp:TextBox ID="review" runat="server" TextMode="MultiLine" BorderColor="Blue"></asp:TextBox>
                </td>
        
                  <td>  <asp:Button id="b1" runat="server" Text="Submit" OnClick="b1_Click" BorderColor="Blue" CssClass="auto-style1" Font-Bold="True" ForeColor="White" /></td>
                </tr>

            </table>  
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
             <br />
        </div>

        <div>
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="false" Height="155px" Width="697px" OnRowCancelingEdit="gv1_RowCancelingEdit" OnRowDeleting="gv1_RowDeleting" OnRowEditing="gv1_RowEditing" OnRowUpdating="gv1_RowUpdating" >
                <Columns>

                     <asp:TemplateField HeaderText="Sno">
                        <ItemTemplate>
                            <asp:Label ID="snoitem" runat="server" Text='<%#Eval("sno") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="snoedit" runat="server" Text='<%#Eval("sno") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

           
                  <asp:ImageField HeaderText="Poster" DataImageUrlField="Poster" ControlStyle-Height="100px" ControlStyle-Width="80px"></asp:ImageField> 


                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="nameitem" runat="server" Text='<%#Eval("Name") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="nameedit" runat="server" AutoCompleteType="Disabled" Text='<%#Eval("Name") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Genre">
                        <ItemTemplate>
                            <asp:Label ID="genreitem" runat="server" Text='<%#Eval("Genre") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="genreedit" runat="server" DataTextField='<%#Eval("Genre") %>'  Width="80px" >
                                <asp:ListItem Text="Thriller" Value="thriller" />
                                <asp:ListItem Text="Sci-Fi" Value="scifi" />
                                <asp:ListItem Text="Adventure" Value="adventure" />
                                <asp:ListItem Text="Comedy" Value="comedy" />
                                <asp:ListItem Text="Romance" Value="romance" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Rating">
                        <ItemTemplate>
                            <asp:Label ID="ratingitem" runat="server" Text='<%#Eval("Rating") %>'/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList ID="ratingedit" runat="server" DataTextField='<%#Eval("Rating") %>' Width="80px">
                                <asp:ListItem Text="1" Value="1"/>
                                <asp:ListItem Text="2" Value="2" />
                                <asp:ListItem Text="3" Value="3" />
                                <asp:ListItem Text="4" Value="4" />
                                <asp:ListItem Text="5" Value="5" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>


                    <asp:TemplateField HeaderText="Review">
                        <ItemTemplate>
                            <asp:Label ID="reviewitem" runat="server" Text='<%#Eval("Review") %>' />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="reviewedit" runat="server" Text='<%#Eval("Review") %>' />
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField >
                       <ItemTemplate>
                           <asp:LinkButton ID="lib1" runat="server" Text="Edit" CommandName="Edit" />
                           <asp:LinkButton ID="lib2" runat="server" Text="Delete" CommandName="Delete" />
                       </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="lib3" runat="server" Text="Update" CommandName="Update" />
                            <asp:LinkButton ID="lib4" runat="server" Text="Cancel" CommandName="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
        <p>
            &nbsp;</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        <p class="auto-style3">
&nbsp; <strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" ForeColor="White" Text="Your Opinon.Inc"></asp:Label>
            </strong>
        </p>
        </form>
    <p>
        &nbsp;</p>
</body>
</html>
