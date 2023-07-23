<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCCash.ascx.cs" Inherits="WUCCash" %>
<style type="text/css">






    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    .auto-style7 {
        width: 284px;
        text-align: center;
    }
    .auto-style12 {
        width: 284px;
        text-align: center;
        height: 26px;
    }
    .auto-style9 {
        text-align: center;
        height: 26px;
    }
    </style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2" style="background-color: #FF6600"><strong>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" ForeColor="White" Text="Delivery Address Page"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style7"><strong><em>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text="Username:"></asp:Label>
            </em></strong></td>
        <td class="auto-style2">
            <asp:TextBox ID="TxtNameMember" runat="server" CssClass="auto-style6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong><em>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5" Text="City:"></asp:Label>
            </em></strong></td>
        <td class="auto-style2">
            <asp:TextBox ID="txtCity" runat="server" CssClass="auto-style6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style12"><strong><em>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text="OrderDate :"></asp:Label>
            </em></strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="txtorderdate" runat="server" CssClass="auto-style6" TextMode="Date"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"><strong><em>
            <asp:Label ID="Label5" runat="server" CssClass="auto-style5" Text="Address:"></asp:Label>
            </em></strong></td>
        <td class="auto-style2">
            <asp:TextBox ID="txtaddress" runat="server" CssClass="auto-style6"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2" colspan="2"><strong><em>
            <asp:Button ID="btnNext" runat="server" CssClass="auto-style2" Height="27px" OnClick="btnNext_Click" style="font-weight: bold" Text="Next" Width="186px" />
            </em></strong></td>
    </tr>
</table>

