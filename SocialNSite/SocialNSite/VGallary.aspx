<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="VGallary.aspx.cs" Inherits="SocialNSite.VGallary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="Aimg/lightbox.css" rel="stylesheet"  type="text/css" media="screen"/>
    <script type="text/javascript" src="Aimg/prototype.js"></script>
    <script type="text/javascript" src="Aimg/scriptaculous.js"></script>
    <script type="text/javascript" src="Aimg/lightbox.js"></script>
    <table class="tbl">
        <tr>
            <td class="tblhead">Photo of
                <asp:Label ID="lblalbum" runat="server"></asp:Label>
                &nbsp;Album</td>
        </tr>
        <tr>
            <td>&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="btnsearch"
                    PostBackUrl="~/VAlbum.aspx" Text="Back" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="dlImages" runat="server" RepeatColumns="4"
                    RepeatDirection="Horizontal">
                    <itemtemplate>
                        <a id="imageLink" runat="server" href='<%#Eval("Image") %>'
                            rel="lightbox[Brussels]" title='<%#Eval("description") %>'>
                            <asp:Image ID="Image2" runat="server" CssClass="rdd" Height="100"
                                ImageUrl='<%#Eval("Image") %>' Width="145" />
                        </a>
                    </itemtemplate>
                    <%--  <ItemStyle BorderColor="#3366FF" BorderStyle="Dashed" BorderWidth="2px" 
                                                    HorizontalAlign="Center" VerticalAlign="Bottom" />--%>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
