<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCLogin.ascx.cs" Inherits="WUCLogin" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
</style>

<table align="center" class="auto-style1">
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Login  Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Username :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtusername" runat="server" Width="202px"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Password :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtpassword" runat="server" Width="202px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:CheckBox ID="CheckBox1" runat="server" Font-Bold="True" Text="Remember me" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="btnlogin" runat="server" Font-Bold="True" Font-Size="Medium" Height="26px" Text="Login" Width="155px" OnClick="btnlogin_Click" UseSubmitBehavior="False" ValidationGroup="0" />
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>

