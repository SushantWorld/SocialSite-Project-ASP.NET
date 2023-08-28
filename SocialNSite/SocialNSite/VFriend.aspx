<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="VFriend.aspx.cs" Inherits="SocialNSite.VFriend" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 251px;
        }

        .style23 {
            width: 70px;
        }

        .style22 {
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                <asp:Label ID="lblname" runat="server"></asp:Label>
                &#39;s Friend(<asp:Label ID="lblfcnt" runat="server"></asp:Label>
                )</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="2" Width="574px"
                    onitemcommand="DataList1_ItemCommand">
                    <itemstyle cssclass="grid1" />
                    <itemtemplate>
                        <table class="style21">
                            <tr>
                                <td class="style23" rowspan="2">
                                    <asp:Image ID="Image7" runat="server" ImageUrl='<%#Eval("profilepic") %>' Height="58px" Width="58px" />
                                </td>
                                <td class="style22">
                                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Fname") %>'></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("lname") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style22">
                                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="#006600" CommandName="V" CommandArgument='<%#Eval("email") %>'>View Profile</asp:LinkButton>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style23">&nbsp;</td>
                                <td class="style22">&nbsp;</td>
                                <td>&nbsp;</td>
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

