<%@ Page Language="C#" MasterPageFile="~/login.Master" AutoEventWireup="true" CodeBehind="Meme.aspx.cs" Inherits="SocialNSite.Meme" %>

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
            <td class="tblhead">MEME Generator</td>
        </tr>
        <tr>
            <td>
                <div>
                    <table style="border: thin solid #008000; font-size: medium;" width="100%">
                        <tr>
                            <td class="lbl">Enter Text :
                            </td>
                            <td class="lblcnta">
                                <asp:TextBox ID="txttilte" runat="server" CssClass="txtupdate" Width="155px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td class="lbl">Location - X :</td>
                            <td>
                                <asp:DropDownList ID="drpx" runat="server" CssClass="txt">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>90</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                    <asp:ListItem>120</asp:ListItem>
                                    <asp:ListItem>140</asp:ListItem>
                                    <asp:ListItem>160</asp:ListItem>
                                    <asp:ListItem>180</asp:ListItem>
                                    <asp:ListItem>200</asp:ListItem>
                                    <asp:ListItem>220</asp:ListItem>
                                    <asp:ListItem>240</asp:ListItem>
                                    <asp:ListItem>260</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">Select Color :
                            </td>
                            <td>
                                <asp:DropDownList ID="drpcolor" runat="server" CssClass="txt"
                                    Width="70px">
                                    <asp:ListItem>Black</asp:ListItem>
                                    <asp:ListItem>White</asp:ListItem>
                                    <asp:ListItem>Red</asp:ListItem>
                                    <asp:ListItem>Blue</asp:ListItem>
                                    <asp:ListItem>Maroon</asp:ListItem>
                                    <asp:ListItem>Yellow</asp:ListItem>
                                    <asp:ListItem>Green</asp:ListItem>
                                    <asp:ListItem>Indigo</asp:ListItem>
                                    <asp:ListItem>Orange</asp:ListItem>
                                    <asp:ListItem>Pink</asp:ListItem>
                                    <asp:ListItem>Gray</asp:ListItem>
                                    <asp:ListItem>Lavender</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="drpweigth" runat="server" CssClass="txt"
                                    Width="90px">
                                    <asp:ListItem>Regular</asp:ListItem>
                                    <asp:ListItem>Bold</asp:ListItem>
                                    <asp:ListItem>Italic</asp:ListItem>
                                    <asp:ListItem>Underline</asp:ListItem>
                                    <asp:ListItem>Strickout</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td class="lbl">Location - Y :</td>
                            <td>
                                <asp:DropDownList ID="drpy" runat="server" CssClass="txt">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>
                                    <asp:ListItem>50</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                    <asp:ListItem>70</asp:ListItem>
                                    <asp:ListItem>80</asp:ListItem>
                                    <asp:ListItem>90</asp:ListItem>
                                    <asp:ListItem>100</asp:ListItem>
                                    <asp:ListItem>120</asp:ListItem>
                                    <asp:ListItem>140</asp:ListItem>
                                    <asp:ListItem>160</asp:ListItem>
                                    <asp:ListItem>180</asp:ListItem>
                                    <asp:ListItem>200</asp:ListItem>
                                    <asp:ListItem>220</asp:ListItem>
                                    <asp:ListItem>240</asp:ListItem>
                                    <asp:ListItem>260</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">Select Text Font :</td>
                            <td>
                                <asp:DropDownList ID="drpfont" runat="server" CssClass="txt"
                                    Width="115px">
                                    <asp:ListItem>Arial</asp:ListItem>
                                    <asp:ListItem>Algerian</asp:ListItem>
                                    <asp:ListItem>Arial Black</asp:ListItem>
                                    <asp:ListItem>Broadway</asp:ListItem>
                                    <asp:ListItem>Calibri</asp:ListItem>
                                    <asp:ListItem>Century</asp:ListItem>
                                    <asp:ListItem>Comic Sans MS</asp:ListItem>
                                    <asp:ListItem>Impact</asp:ListItem>
                                    <asp:ListItem>Magneto</asp:ListItem>
                                    <asp:ListItem>Script MT Bold</asp:ListItem>
                                    <asp:ListItem>Shruti</asp:ListItem>
                                    <asp:ListItem>Tahoma</asp:ListItem>
                                    <asp:ListItem>Verdana</asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="drpsize" runat="server" CssClass="txt" Width="45px">
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>36</asp:ListItem>
                                    <asp:ListItem>48</asp:ListItem>
                                    <asp:ListItem>72</asp:ListItem>

                                </asp:DropDownList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id="abc">
                    <table>
                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image1" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r1.jpg" />
                                </div>
                                <div id="memechk">

                                    <asp:RadioButton ID="r1" runat="server" GroupName="meme" Checked="true" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image2" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r2.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r2" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image3" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r22.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r3" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image4" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r3.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r4" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image5" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r4.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r5" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image6" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r5.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r6" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image7" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r6.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r7" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image8" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r7.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r8" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image9" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r8.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r9" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image10" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r9.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r10" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image31" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r10.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r11" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image32" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r11.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r12" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image33" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r13.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r13" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image34" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r14.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r14" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image35" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/r15.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r15" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image11" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/1.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r111" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image12" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/2.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r122" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image15" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/3.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r133" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image13" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/4.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r144" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image14" runat="server" Height="120px"
                                        Width="100px" ImageUrl="~/meme/5.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r155" GroupName="meme" runat="server" />
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image16" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/6.jpg" />
                                </div>
                                <div id="memechk">

                                    <asp:RadioButton ID="r16" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image17" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/7.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r17" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image18" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/8.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r18" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image19" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/9.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r19" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image20" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/10.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r20" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image21" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/11.jpg" />
                                </div>
                                <div id="memechk">

                                    <asp:RadioButton ID="r21" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image22" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/12.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r22" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image23" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/13.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r23" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image24" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/14.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r24" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image25" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/15.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r25" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div>
                                    <asp:Image ID="Image26" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/16.jpg" />
                                </div>
                                <div id="memechk">

                                    <asp:RadioButton ID="r26" runat="server" GroupName="meme" Checked="true" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image27" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/17.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r27" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image28" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/18.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r28" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image29" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/19.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r29" runat="server" GroupName="meme" />
                                </div>
                            </td>
                            <td>
                                <div>
                                    <asp:Image ID="Image30" runat="server" Height="120px" Width="100px"
                                        ImageUrl="~/meme/20.jpg" />
                                </div>
                                <div id="memechk">
                                    <asp:RadioButton ID="r30" runat="server" GroupName="meme" />
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div>
                    <table>
                        <tr>
                            <td width="80%">&nbsp;</td>
                            <td width="20%">
                                <asp:Button ID="btnmemegenerate" runat="server" CssClass="btnpost" Height="32px"
                                    onclick="btnmemegenerate_Click" Text="Generate" Width="135px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>







</asp:Content>
