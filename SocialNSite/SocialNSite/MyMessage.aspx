<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="MyMessage.aspx.cs" Inherits="SocialNSite.MyMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style21 {
            width: 562px;
        }

        .style22 {
            text-align: right;
            font-size: medium;
            width: 99px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">My Message</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnnew" runat="server" CssClass="btnpost"
                    onclick="btnnew_Click" Text="New Message" Width="140px" />
                &nbsp;&nbsp;
                <asp:Button ID="btnoold" runat="server" CssClass="btnpost"
                    onclick="btnoold_Click" Text="Read Message" Width="140px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="tbl">
                            <tr>
                                <td bgcolor="#AEFFD7">&nbsp;Mew&nbsp; Message&nbsp; -&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVNew" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                        CellPadding="4" GridLines="Horizontal" style="text-align: center"
                                        Width="571px" onrowcommand="GVNew_RowCommand"
                                        onselectedindexchanged="GVNew_SelectedIndexChanged">
                                        <columns>
                                            <asp:BoundField DataField="FromUId" HeaderText="From Name" />
                                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                            <asp:TemplateField HeaderText="Read">
                                                <itemtemplate>
                                                    <asp:LinkButton ID="lnkread" runat="server" CommandArgument='<%#Eval("mid") %>'
                                                        Text="Read">
                                                    </asp:LinkButton>
                                                </itemtemplate>
                                                <itemstyle forecolor="#006600" width="60px" />
                                            </asp:TemplateField>
                                        </columns>
                                        <footerstyle backcolor="White" forecolor="#333333" />
                                        <headerstyle backcolor="#336666" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#336666" forecolor="White" horizontalalign="Center" />
                                        <rowstyle backcolor="White" forecolor="#333333" />
                                        <selectedrowstyle backcolor="#339966" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#F7F7F7" />
                                        <sortedascendingheaderstyle backcolor="#487575" />
                                        <sorteddescendingcellstyle backcolor="#E5E5E5" />
                                        <sorteddescendingheaderstyle backcolor="#275353" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table class="tbl">
                            <tr>
                                <td bgcolor="#AEFFD7">Read Message -&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GVRead" runat="server" AutoGenerateColumns="False"
                                        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px"
                                        CellPadding="4" GridLines="Horizontal" style="text-align: center"
                                        Width="571px" onrowcommand="GVRead_RowCommand">
                                        <columns>
                                            <asp:BoundField DataField="FromUId" HeaderText="From Name" />
                                            <asp:BoundField DataField="Subject" HeaderText="Subject" />
                                            <asp:TemplateField HeaderText="Read">
                                                <itemtemplate>
                                                    <asp:LinkButton ID="lnkread0" runat="server"
                                                        CommandArgument='<%#Eval("mid") %>' Text="Read" CommandName="Read">
                                                    </asp:LinkButton>
                                                </itemtemplate>
                                                <itemstyle forecolor="#006600" width="60px" />
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Delete">
                                                <itemtemplate>
                                                    <asp:LinkButton ID="lnkrdel" runat="server"
                                                        CommandArgument='<%#Eval("mid") %>' Text="Delete" CommandName="Remove">
                                                    </asp:LinkButton>
                                                </itemtemplate>
                                                <itemstyle forecolor="#006600" width="60px" />
                                            </asp:TemplateField>
                                        </columns>
                                        <footerstyle backcolor="White" forecolor="#333333" />
                                        <headerstyle backcolor="#336666" font-bold="True" forecolor="White" />
                                        <pagerstyle backcolor="#336666" forecolor="White" horizontalalign="Center" />
                                        <rowstyle backcolor="White" forecolor="#333333" />
                                        <selectedrowstyle backcolor="#339966" font-bold="True" forecolor="White" />
                                        <sortedascendingcellstyle backcolor="#F7F7F7" />
                                        <sortedascendingheaderstyle backcolor="#487575" />
                                        <sorteddescendingcellstyle backcolor="#E5E5E5" />
                                        <sorteddescendingheaderstyle backcolor="#275353" />
                                    </asp:GridView>
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <table class="tbl">
                            <tr>
                                <td bgcolor="#AEFFD7">Read Message</td>
                            </tr>
                            <tr>
                                <td>
                                    <table class="style21">
                                        <tr>
                                            <td class="style22">From :
                                            </td>
                                            <td>
                                                <asp:Label ID="lblfrom" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style22">Subject :</td>
                                            <td>
                                                <asp:Label ID="txtsub" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style22">Message :
                                            </td>
                                            <td>
                                                <asp:Label ID="txtmsg" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style22">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style22">Reply:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine" Width="180px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style22">&nbsp;</td>
                                            <td>
                                                <asp:Button ID="btnreply" runat="server" CssClass="btnpost"
                                                    onclick="btnreply_Click" Text="Reply" />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
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
