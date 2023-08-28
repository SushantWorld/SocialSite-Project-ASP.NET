<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="SocialNSite.Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 573px;
        }

        .txtreg {
            margin-top: 5px;
            width: 200px;
            height: 35px;
            border-radius: 6px;
            border: solid 2px #ff944d;
            padding-left: 3px;
            font-size: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">My Account Detail</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style21"
                            style="border-bottom-style: solid; border-bottom-width: thin; border-bottom-color: #006600">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbl">FName :
                                </td>
                                <td>
                                    <asp:Label ID="lblfname" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">City :
                                </td>
                                <td>
                                    <asp:Label ID="lblcity" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">LName :
                                </td>
                                <td>
                                    <asp:Label ID="lbllname" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">Pincode :
                                </td>
                                <td>
                                    <asp:Label ID="lblpin" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Email :&nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lblemail" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">Gender :
                                </td>
                                <td>
                                    <asp:Label ID="lblgndr" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Mobile :
                                </td>
                                <td>
                                    <asp:Label ID="lblmobile" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">Website:
                                </td>
                                <td>
                                    <asp:Label ID="lblwebsite" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Education :
                                </td>
                                <td>
                                    <asp:Label ID="lbledu" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" style="color: Green">About Us :
                                    <asp:Label ID="lblabout" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>
                                    <asp:Button ID="bteit" runat="server" CssClass="btnpost" Text="Edit Detail"
                                        Width="100px" onclick="bteit_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="style21">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="lbl">FName :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtfname" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                                <td class="lbl">City :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcity" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">LName :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtlname" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                                <td class="lbl">Pincode :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpin" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Email :&nbsp;
                                </td>
                                <td>
                                    <asp:Label ID="lblemail0" runat="server" ForeColor="#6600CC"></asp:Label>
                                </td>
                                <td class="lbl">Gender :
                                </td>
                                <td>
                                    <asp:RadioButton ID="RadioButton1" runat="server" Text="MALE" Checked="True"
                                        GroupName="a" />
                                    <asp:RadioButton ID="RadioButton2" runat="server" Text="FEMALE" GroupName="a" />
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Mobile :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtmobile" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                                <td class="lbl">Website:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtweb" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">Education :
                                </td>
                                <td>
                                    <asp:TextBox ID="txtedu" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px">
                                    </asp:TextBox>
                                </td>
                                <td class="lbl">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" style="color: Green">About Us :
                                    <asp:TextBox ID="txtabout" runat="server" BorderColor="#6600CC"
                                        BorderStyle="Groove" BorderWidth="1px" TextMode="MultiLine" Width="400px">
                                    </asp:TextBox>
                                    &nbsp;
                                    <asp:Button ID="btnupdate" runat="server" CssClass="btnpost"
                                        onclick="btnupdate_Click" Text="Update" Width="80px" />
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
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
