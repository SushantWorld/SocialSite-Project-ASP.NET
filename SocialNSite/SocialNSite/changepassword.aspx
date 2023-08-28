<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="SocialNSite.changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style28 {
            width: 391px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="tbl">
        <tr>
            <td class="tblhead">Change Password Form</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style28">
                    <tr>
                        <td class="lbl">Enter Current Password :</td>
                        <td>
                            <asp:TextBox ID="txtopswd" runat="server" placeholder="Current Password" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">Enter New Password :</td>
                        <td>
                            <asp:TextBox ID="txtnpswd" runat="server" placeholder="New Password"
                                BorderColor="#00CC66" CssClass="txt">
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">Confirm - Password :
                        </td>
                        <td>
                            <asp:TextBox ID="txtcpswd" runat="server" placeholder="Retype New Password"
                                BorderColor="#00CC66" CssClass="txt">
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="lbl">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="btnchange" runat="server" style="text-align: center;"
                                Text="Change" onclick="btnchange_Click" Width="110px"
                                CssClass="btnpost" Height="28px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Label ID="lblchnge" runat="server" style="text-align: center"
                    ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
