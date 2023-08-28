<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SocialNSite.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1 {
            width: 369px;
        }

        .style2 {
            width: 577px;
        }

        .style3 {
            width: 31px;
        }

        .style4 {
            width: 100px;
        }

        .style5 {
            text-align: center;
        }

        .style6 {
            font-size: 38pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="header">
            <div id="loginmain">
                <div id="logo">
                    <table class="style4">
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/logo/sns.png" />
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="login">
                    <table class="style1">
                        <tr>
                            <td>UserName</td>
                            <td>Password</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtun" runat="server" CssClass="txtlogin"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="txtpswd" runat="server" CssClass="txtlogin"
                                    TextMode="Password"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>
                                <asp:Button ID="btnlgn" runat="server" CssClass="btnlogin" Text="Login"
                                    OnClick="btnlgn_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div id="main">
            <div id="left" class="style5">
                <asp:Image ID="Image2" runat="server" Height="380px" ImageUrl="~/logo/sn3.png"
                    Width="600px" />
                <br />
                <br />
                
            </div>
            <div id="right">
                <table class="style2">
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3"
                            style="font-weight: 700; text-align: center; font-size: xx-large; font-family: 'Arial Unicode MS'; color: #FF6600">Create New Account - Free !!</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtfn" runat="server" placeholder="First Name" CssClass="txtreg"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtln" runat="server" placeholder="Last Name" CssClass="txtreg"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" placeholder="Email" CssClass="txtreg"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ControlToValidate="txtemail" ErrorMessage="Plz Enter valid email !!"
                                ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtmo" runat="server" placeholder="Mobile" CssClass="txtreg"></asp:TextBox>
                        </td>
                        <td style="color: #FF6600; font-size: 12pt">Birth Date :</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:DropDownList ID="drpday" runat="server" CssClass="txtreg"
                                Width="70px" ForeColor="#000066"
                                OnSelectedIndexChanged="drpday_SelectedIndexChanged">
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpmnth" runat="server" CssClass="txtreg"
                                Width="70px" ForeColor="#000066"
                                OnSelectedIndexChanged="drpmnth_SelectedIndexChanged">
                                <asp:ListItem Value="1">Jan</asp:ListItem>
                                <asp:ListItem Value="2">Feb</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">Aug</asp:ListItem>
                                <asp:ListItem Value="9">Sep</asp:ListItem>
                                <asp:ListItem Value="10">Oct</asp:ListItem>
                                <asp:ListItem Value="11">Nov</asp:ListItem>
                                <asp:ListItem Value="12">Dec</asp:ListItem>
                            </asp:DropDownList>
                            <asp:DropDownList ID="drpyear" runat="server" CssClass="txtreg"
                                Width="70px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtcty" runat="server" placeholder="City" CssClass="txtreg"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtun1" runat="server" placeholder="User Name" CssClass="txtreg"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                ControlToValidate="txtun1" ErrorMessage="Plz Enter email id !!"
                                ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtpswd1" runat="server" placeholder="Password"
                                CssClass="txtreg" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtpswd2" runat="server" placeholder="Conf-Pass"
                                CssClass="txtreg" OnTextChanged="txtpswd2_TextChanged1" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnregister" runat="server" CssClass="btnlogin" Font-Size="Medium"
                                Height="40px" Text="Register Now !" Width="150px"
                                OnClick="btnregister_Click" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style3">&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        <div id="footer"></div>
    </form>
</body>
</html>

