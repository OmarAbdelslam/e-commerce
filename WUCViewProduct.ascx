<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCViewProduct.ascx.cs" Inherits="WUCProductDetails" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
<center>
<asp:DataList ID="DataList1" runat="server" DataKeyField="P_Code" DataSourceID="SqlDataSource1" CellPadding="33" CellSpacing="22" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#003366" Text='<%# Eval("Name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td> <a href="ProductDetails.aspx?P_Code=<%#Eval("P_Code") %>">
                    <asp:Image ID="Image1" runat="server" Height="280px" ImageUrl='<%# "~\\imgproduct\\"+Eval("P_Code").ToString().Trim()+".jpg" %>' />
                    </a></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Description :"></asp:Label>
                    <strong>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
    </center>
