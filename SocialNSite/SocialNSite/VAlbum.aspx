<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="VAlbum.aspx.cs" Inherits="SocialNSite.VAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">Gallary Album</td>
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

