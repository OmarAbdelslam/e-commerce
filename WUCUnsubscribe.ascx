<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCUnsubscribe.ascx.cs" Inherits="WUCUnsubscribe" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        height: 23px;
        text-align: center;
    }
</style>

<table align="center" class="auto-style1">
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Unsubscribe Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="*** Are You Sure To Delete Your Account .?????"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="btnno" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="32px" OnClick="btnno_Click" Text="No" Width="149px" />
        </td>
        <td class="auto-style2">
            <asp:Button ID="btnyes" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Height="32px" OnClick="btnyes_Click" Text="Yes" Width="149px" />
        </td>
    </tr>
</table>

