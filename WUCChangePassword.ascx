<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCChangePassword.ascx.cs" Inherits="WUCChangePassword" %>
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Change Password Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Old Password :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtoldpassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtoldpassword" ErrorMessage="* Please Enter Old  Password" Font-Bold="True" Font-Size="Large" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="New Password :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtnewpassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtnewpassword" ErrorMessage="* Please Enter New  Password" Font-Bold="True" Font-Size="Large" ForeColor="Red" Font-Italic="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Confirm New Password :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtconfirmnewpassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnewpassword" ControlToValidate="txtconfirmnewpassword" ErrorMessage="* Notmatch Please Try Again" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="btnsave" runat="server" Font-Bold="True" Height="25px" OnClick="btnsave_Click" Text="Save" Width="127px" />
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>

