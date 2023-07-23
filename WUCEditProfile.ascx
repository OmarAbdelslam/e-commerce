<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCEditProfile.ascx.cs" Inherits="WUCEditProfile" %>
<style type="text/css">

    .auto-style1 {
        width: 100%;
    }
    .auto-style5 {
        text-align: center;
        height: 32px;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style4 {
        height: 25px;
        text-align: center;
    }
    .auto-style3 {
        height: 25px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
        height: 61px;
    }
    .auto-style7 {
        text-align: center;
        height: 30px;
    }
</style>

<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Edit Profile Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Username :"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtusername" runat="server" Width="143px" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            </td>
        <td class="auto-style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Phone :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtphone" runat="server" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtphone" ErrorMessage="* Please Enter Phone" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Address :"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtaddress" runat="server" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="* Please Enter Address" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Email :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtemail" runat="server" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="* Please Enter Email" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="* Example : xxxx@xxxx.xxxx" Font-Bold="True" Font-Size="Large" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">****</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Birthdate :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtbirthdate" runat="server" TextMode="Date" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbirthdate" ErrorMessage="* Please Enter Birthdate" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style6">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style6">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="btnedit" runat="server" Font-Bold="True" Height="31px" OnClick="btnedit_Click" Text="Edit Data" Width="142px" />
        </td>
    </tr>
</table>


