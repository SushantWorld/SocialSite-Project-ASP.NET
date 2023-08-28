<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Gallay.aspx.cs" Inherits="SocialNSite.Gallay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 570px;
        }

        .style22 {
            width: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <link href="Aimg/lightbox.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript" src="Aimg/prototype.js"></script>
        <script type="text/javascript" src="Aimg/scriptaculous.js"></script>
        <script type="text/javascript" src="Aimg/lightbox.js"></script>
    </div>
    <table class="tbl">
        <tr>
            <td class="tblhead">Create Gallary</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style21">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Photo Title:
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" CssClass="btnpost"
                                PostBackUrl="~/Album.aspx" Text="Back To Album" Width="120px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Select Image :</td>
                        <td>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="Button4" runat="server" CssClass="btnpost"
                                OnClick="Button4_Click" Text="Remove Photo" Width="120px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnupload" runat="server" CssClass="btnpost"
                                OnClick="btnupload_Click" Text="Uload" Width="120px" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="border-bottom-style: solid; border-bottom-width: medium; border-bottom-color: #808080">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style22">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:DataList ID="dlImages" runat="server" RepeatColumns="4"
                                        RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                            <a id="imageLink" runat="server" href='<%#Eval("Image") %>'
                                                rel="lightbox[Brussels]" title='<%#Eval("description") %>'>
                                                <asp:Image ID="Image2" runat="server" CssClass="rdd" Height="100"
                                                    ImageUrl='<%#Eval("Image") %>' Width="145" />
                                            </a>
                                        </ItemTemplate>
                                        <%--  <ItemStyle BorderColor="#3366FF" BorderStyle="Dashed" BorderWidth="2px" 
                                                    HorizontalAlign="Center" VerticalAlign="Bottom" />--%>
                                    </asp:DataList>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="style22">
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" CssClass="btnsearch" Text="Back" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:GridView ID="dgmysell" runat="server" AutoGenerateColumns="False"
                                        BorderColor="#C4C4C4" BorderStyle="Solid" BorderWidth="1px" CellPadding="4"
                                        DataKeyNames="GID" ForeColor="#333333" GridLines="None"
                                        OnRowCommand="dgmysell_RowCommand" Width="300px">
                                        <RowStyle BorderColor="#C4C4C4" BorderStyle="Solid" BorderWidth="1px"
                                            CssClass="grid1" HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Image">
                                                <ItemTemplate>
                                                    <asp:Image runat="server" Height="70px" ImageUrl='<%#Eval("Image") %>'
                                                        Width="60px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnksremove" runat="server"
                                                        CommandArgument='<%#Eval("GID") %>' CommandName="aremove" ForeColor="Red"
                                                        Text="Remove">
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                                <ItemStyle Width="50px" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#FFC75E" Font-Bold="True" ForeColor="White"
                                            HorizontalAlign="Center" />
                                        <EditRowStyle BackColor="#2461BF" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

