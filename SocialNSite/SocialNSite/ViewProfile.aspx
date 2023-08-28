<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="ViewProfile.aspx.cs" Inherits="SocialNSite.ViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 582px;
        }

        .style22 {
            height: 18px;
        }

        .style23 {
            width: 135px;
            text-align: center;
        }

        .style24 {
            width: 406px;
        }

        .style25 {
            text-align: right;
            font-size: medium;
            width: 109px;
        }

        .style27 {
            width: 384px;
        }

        .style28 {
            text-align: right;
            font-size: medium;
            width: 117px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                <asp:Label ID="lblpfile" runat="server"></asp:Label>
                &#39;s Profile</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style21">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image7" runat="server" Height="141px" Width="139px" />
                        </td>
                        <td valign="top">
                            <table class="style24">
                                <tr>
                                    <td class="style25">Name :</td>
                                    <td>
                                        <asp:Label ID="lblname" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style25">Email :</td>
                                    <td>
                                        <asp:Label ID="lblemail" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style25">Mobile :</td>
                                    <td>
                                        <asp:Label ID="lblmobile" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style25">Gender :</td>
                                    <td>
                                        <asp:Label ID="lblgender" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style25">BirthDate :
                                    </td>
                                    <td>
                                        <asp:Label ID="lbldob" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style25">Education :</td>
                                    <td>
                                        <asp:Label ID="lbledu" runat="server"></asp:Label>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Button ID="Button2" runat="server" CssClass="btnpost" Height="25px"
                                Text="ADD Friend" Width="160px" />
                        </td>
                        <td rowspan="4" valign="top">
                            <table class="style27">
                                <tr>
                                    <td bgcolor="#AEFFD7" colspan="2">ADDRESS DETAIL :&nbsp;&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style28">City :</td>
                                    <td>
                                        <asp:Label ID="lblcity" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">Pincode :</td>
                                    <td>
                                        <asp:Label ID="lblpin" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style28">Website :
                                    </td>
                                    <td>
                                        <asp:Label ID="lbladd" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Button ID="Button4" runat="server" CssClass="btnpost" Height="25px"
                                Text="Friend List" Width="160px" PostBackUrl="~/VFriend.aspx" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">
                            <asp:Button ID="Button6" runat="server" CssClass="btnpost" Height="25px"
                                Text="View Gallary" Width="160px" onclick="Button6_Click"
                                PostBackUrl="~/VAlbum.aspx" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style23">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style22">About 
                <asp:Label ID="lblabout" runat="server"></asp:Label>
                &nbsp;:
                <asp:Label ID="lbaboutus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <table class="tbl">
                    <tr>
                        <td class="tblhead">SEND MESSAGE</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="style21">
                                <tr>
                                    <td class="lbl">Message To :</td>
                                    <td>
                                        <asp:Label ID="lblto" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl">Subject :
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="197px" style="height: 22px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbl">Message :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Height="50px" TextMode="MultiLine"
                                            Width="200px" ontextchanged="TextBox3_TextChanged">
                                        </asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button5" runat="server" CssClass="btnpost" Text="SEND"
                                            onclick="Button5_Click" />
                                        <asp:Label ID="lbsend" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style22">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
