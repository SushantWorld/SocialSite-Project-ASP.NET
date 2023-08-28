<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="SocialNSite.Main" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style10 {
            width: 288px;
        }

        .style11 {
            width: 52px;
        }

        .style12 {
            width: 14px;
        }

        .style14 {
            width: 100px;
        }

        .style21 {
            width: 274px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style7">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style14">
                    <tr>
                        <td>
                            <asp:TextBox ID="txtpost" runat="server" Height="60px" TextMode="MultiLine"
                                Width="470px" BorderColor="#00CC66" BorderStyle="Solid" BorderWidth="1px"
                                BackColor="#FBFBFB" ontextchanged="txtpost_TextChanged">
                            </asp:TextBox>
                        </td>
                        <td valign="bottom">
                            <asp:Button ID="btnpst" runat="server" Text="POST" CssClass="btnpost"
                                onclick="btnpst_Click" />
                        </td>
                    </tr>
                </table>
                &nbsp;<font size="2">Share your good thoughts to your world.</font></td>
        </tr>
        <tr>
            <td style="border-top-style: solid; border-top-width: thin; border-top-color: #808080">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <div id="postt">
                    <asp:DataList ID="Datalistpost" runat="server"
                        Width="560px" onitemcommand="Datalistpost_ItemCommand">
                        <itemstyle cssclass="grid1" />
                        <itemtemplate>
                            <table style="width: 546px">
                                <tr>
                                    <td class="style11">
                                        <asp:Image ID="imagepost" runat="server" ImageUrl='<%#Eval("img") %>' Height="54px" Width="56px" />
                                    </td>
                                    <td valign="top">
                                        <asp:Label ID="lablepost" runat="server" Text='<%# Eval("Text") %>'
                                            Font-Bold="True" ForeColor="#9900FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">
                                        <asp:Label ID="lblname" runat="server" Text='<%# Eval("name") %>'
                                            ForeColor="#0033CC"></asp:Label>
                                    </td>
                                    <td style="text-align: right">
                                        <asp:LinkButton ID="LinkButton3" CommandName="like"
                                            CommandArgument='<%#Eval("pid") %>' runat="server" Text='Like'>
                                        </asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton1" CommandName="like"
                                            CommandArgument='<%#Eval("pid") %>' runat="server" Text='<%#Eval("like") %>'>
                                        </asp:LinkButton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" CommandName="share" CommandArgument='<%#Eval("pid") %>' runat="server">Share</asp:LinkButton>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">&nbsp;</td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style11">&nbsp;</td>
                                    <td style="text-align: left">
                                        <table class="style21">
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Image7" runat="server" ImageUrl='<%#Eval("img") %>'
                                                        Height="26px" Width="32px" Visible="False" />
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtcomt" runat="server" Height="22px" Width="329px"
                                                        Visible="False">
                                                    </asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button2" runat="server" Text="comment" Height="26px"
                                                        Visible="False" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style11">&nbsp;</td>
                                    <td style="text-align: left">&nbsp;</td>
                                </tr>
                            </table>
                        </itemtemplate>
                    </asp:DataList>
                </div>

            </td>
        </tr>
    </table>
</asp:Content>
