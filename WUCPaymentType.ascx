<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCPaymentType.ascx.cs" Inherits="WUCPaymentType" %>
<style type="text/css">





    .auto-style1 {
        width: 100%;
    }
    .auto-style5 {
        text-align: center;
        height: 24px;
    }
    .auto-style4 {
        text-align: center;
    }
    </style>

<table align="center" class="auto-style1">
    <tr>
        <td class="auto-style5" colspan="2"><strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="Black" Text="Payment Type Page"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style4"><strong>
            <center>
                <asp:RadioButtonList ID="rdopayment" runat="server" AutoPostBack="True" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Height="35px" RepeatDirection="Horizontal" Width="276px">
                    <asp:ListItem>Visa</asp:ListItem>
                    <asp:ListItem>Cash</asp:ListItem>
                    <asp:ListItem>Cancel</asp:ListItem>
                </asp:RadioButtonList>
            </center>
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

