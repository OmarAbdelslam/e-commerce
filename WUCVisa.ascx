<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCVisa.ascx.cs" Inherits="WUCVisa" %>
<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    <center>
        <asp:View ID="View1" runat="server">
            </center>
            <center>
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style1" colspan="3" style="background-image: url('http://localhost:22041/images/bg.jpg'); background-repeat: repeat"><strong><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="CheckOut"></asp:Label>
                            </em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3" style="background-image: url('http://localhost:22041/images/bg.jpg'); background-repeat: repeat"><strong><em>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Delivery Address"></asp:Label>
                            </em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong><em>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Username :"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtnamemembe" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1" rowspan="4">
                            <asp:Image ID="Image1" runat="server" Height="97px" ImageUrl="~/images/imgbin-visa-mastercard-computer-icons-portable-network-graphics-visa-visa-mastercard-logo-eAVpf2JdqENqJGqPD8uV48Ukj_t.jpg" Width="113px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong><em>
                            <asp:Label ID="Label14" runat="server" CssClass="auto-style6" Text="OrderDate :"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtdate" runat="server" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong><em>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="City:"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><strong><em>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style6" Text="Address:"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1" colspan="3"><strong><em>
                            <asp:Button ID="btnnext" runat="server" CssClass="auto-style14" Font-Bold="True" Height="31px" OnClick="btnnext_Click" Text="Next" Width="134px" />
                            </em></strong></td>
                    </tr>
                </table>
            </center>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <center>
                <table class="auto-style1">
                    <tr>
                        <td colspan="3" style="background-image: url('http://localhost:22041/images/bg.jpg'); background-repeat: repeat"><strong><em>
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style10" Font-Size="Large" ForeColor="Black" Text="CheckOut"></asp:Label>
                            </em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="3" style="background-image: url('http://localhost:22041/images/bg.jpg'); background-repeat: repeat"><strong><em>
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style11" Font-Size="Large" ForeColor="Black" Text="Welcome Data visa"></asp:Label>
                            </em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong><em>
                            <asp:Label ID="Label9" runat="server" CssClass="auto-style6" Text="Type:"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style13"><strong>
                            <asp:DropDownList ID="ddltype" runat="server" CssClass="auto-style15" Height="20px" Width="134px">
                                <asp:ListItem>Visa Card</asp:ListItem>
                                <asp:ListItem>Master Card</asp:ListItem>
                            </asp:DropDownList>
                            </strong></td>
                        <td rowspan="6">
                            <asp:Image ID="Image2" runat="server" Height="162px" ImageUrl="~/images/visa.ico" Width="220px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong><em>
                            <asp:Label ID="Label10" runat="server" CssClass="auto-style6" Text="SeiralNo:"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtseiralno" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong><em>
                            <asp:Label ID="Label16" runat="server" CssClass="auto-style6" Text="Card Name :"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtnameincard" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong><em>
                            <asp:Label ID="Label17" runat="server" CssClass="auto-style6" Text="Expire Date :"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txtmonth" runat="server" Width="21px"></asp:TextBox>
                            &nbsp;/
                            <asp:TextBox ID="txtyear" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12"><strong><em>
                            <asp:Label ID="Label13" runat="server" CssClass="auto-style6" Text="Total:"></asp:Label>
                            </em></strong></td>
                        <td class="auto-style13">
                            <asp:TextBox ID="txttotaloforder" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style12">&nbsp;</td>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style7" colspan="3"><strong><em>
                            <asp:Button ID="btnfinesh" runat="server" CssClass="auto-style14" Font-Bold="True" OnClick="btnfinesh_Click" Text="Finish" Width="130px" />
                            </em></strong></td>
                    </tr>
                </table>
            </center>
        </asp:View>
    </center>
</asp:MultiView>

