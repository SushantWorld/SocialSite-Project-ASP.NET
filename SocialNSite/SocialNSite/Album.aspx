<%@ Page Language="C#"  MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Album.aspx.cs" Inherits="SocialNSite.Album" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 523px;
        }

        .style22 {
            font-size: medium;
            color: #CC0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Create Album</td>
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
                    </tr>
                    <tr>
                        <td class="lbl">Album Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txtaname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Cover Image :</td>
                        <td>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnaddalbum" runat="server" CssClass="btnpost"
                                onclick="btnaddalbum_Click" Text="Create Album" Width="140px" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="gvalbum" runat="server" onitemcommand="gvalbum_ItemCommand"
                    RepeatColumns="3" RepeatDirection="Horizontal" Width="100%">
                    <alternatingitemstyle cssclass="grid1" />
                    <itemstyle cssclass="grid1" />
                    <itemtemplate>
                        <table align="center">
                            <tr>
                                <td
                                    width="112">
                                    <asp:LinkButton ID="lnkalbumn" runat="server"
                                        CommandArgument='<%#Eval("AID") %>' CommandName="View" Font-Bold="True"
                                        Font-Size="Medium" Font-Underline="False" ForeColor="#0066FF"
                                        Text='<%#Eval("Aname") %>' ToolTip="View Album">
                                    </asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td height="100"
                                    style="background-image: url('img/gbg.png'); vertical-align: top; padding: 10px;"
                                    width="112">
                                    <asp:ImageButton ID="img" runat="server" CommandArgument='<%#Eval("AID") %>'
                                        CommandName="View" Height="85px" ImageUrl='<%#Eval("Image") %>'
                                        Width="105px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <strong>Remove&nbsp;
                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("AID") %>' CommandName="Del" ImageUrl="~/img/del.jpeg"
                                        ToolTip="Delete Album" />
                                    </strong></td>
                            </tr>
                        </table>
                    </itemtemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
