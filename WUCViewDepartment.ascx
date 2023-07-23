<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCViewDepartment.ascx.cs" Inherits="WUCViewDepartment" %>
<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
</style>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
<center>
<asp:DataList ID="DataList1" runat="server" CellPadding="33" CellSpacing="22" DataKeyField="D_ID" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
    <ItemTemplate>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3333CC" Text='<%# Eval("Name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <a href="ViewProduct.aspx?D_ID=<%#Eval("D_ID") %>">
                    <asp:Image ID="Image1" runat="server" Height="305px" ImageUrl='<%# "~\\imgdept\\"+Eval("D_ID").ToString().Trim()+".jpg" %>' Width="228px" />
                        </a>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
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
