<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCSignup.ascx.cs" Inherits="WUCSignup" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style3 {
        height: 25px;
        text-align: center;
    }
    .auto-style4 {
        height: 25px;
        text-align: center;
    }
    .auto-style5 {
        text-align: center;
        height: 32px;
    }
    .auto-style6 {
        text-align: center;
        height: 61px;
    }
    .auto-style7 {
        text-align: center;
        width: 446px;
    }
    .auto-style8 {
        height: 25px;
        text-align: center;
        width: 446px;
    }
    .auto-style9 {
        text-align: center;
        height: 61px;
        width: 446px;
    }
</style>

<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Signup Page"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Username :"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtusername" runat="server" Width="85px" AutoPostBack="True"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblusername" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="* Please Enter Username" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Phone :"></asp:Label>
        </td>
        <td class="auto-style7">
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
        <td class="auto-style8">
            <asp:TextBox ID="txtaddress" runat="server" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="* Please Enter Address" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Password :"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtpassword" ErrorMessage="* Please Enter Password" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Confirm Password :"></asp:Label>
        </td>
        <td class="auto-style7">
            <asp:TextBox ID="txtconfirmpassword" runat="server" TextMode="Password" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtconfirmpassword" ErrorMessage="* Please Enter Confirm Password" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpassword" ErrorMessage="* Notmatch Please Try Again" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Email :"></asp:Label>
        </td>
        <td class="auto-style7">
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
        <td class="auto-style7">
            <asp:TextBox ID="txtbirthdate" runat="server" TextMode="Date" Width="151px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtbirthdate" ErrorMessage="* Please Enter Birthdate" Font-Bold="True" Font-Size="Large" ForeColor="Red">****</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style9">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" style="color: #FF0000" />
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style9">
            <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Fuchsia"></asp:Label>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Button ID="btnsignup" runat="server" Font-Bold="True" Font-Size="Medium" Height="30px" Text="Sign-up" Width="172px" OnClick="btnsignup_Click" />
        </td>
    </tr>
</table>

