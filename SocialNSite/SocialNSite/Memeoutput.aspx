<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Memeoutput.aspx.cs" Inherits="SocialNSite.Memeoutput" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        * {
            border-style: none;
            border-color: inherit;
            border-width: 0;
            margin: 0 0 0 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">




    <table class="tbl">
        <tr>
            <td class="tblhead">Result</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>

                <table>
                    <tr>
                        <td>&nbsp;</td>
                        <td align="right">
                            <asp:Image ID="Image1" runat="server" Height="238px" Width="236px" />
                            <br />

                            <asp:Button ID="Button1" runat="server" CssClass="btnpost" Font-Size="20pt"
                                Height="40px" onclick="Button1_Click" Text="Download" Width="160px" />
                        </td>
                        <td width="30%"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td align="center">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>







</asp:Content>

