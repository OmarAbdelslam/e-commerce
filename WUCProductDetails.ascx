<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCProductDetails.ascx.cs" Inherits="WUCProductDetails" %>
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
        <td class="auto-style2" colspan="3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#660066" Text="Product Details"></asp:Label>
        </td>
    </tr>
    <tr>
        <td rowspan="8">
            <asp:Image ID="Image1" runat="server" Height="259px" ImageUrl='<%# "../Admin/imageproduct/"+Eval("ProductCode")+".jpg" %>' Width="196px" />
        </td>
        <td class="auto-style2">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Product Code : "></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblprocode" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Product Name :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblname" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Price :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblprice" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Expire Date :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblexpire" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Quantity :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblquantity" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Description :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lbldescription" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Department :"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lbldept" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="#660033"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Quantity you want ??"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtquantity" runat="server" Font-Bold="True" ForeColor="Black" Height="21px" Width="78px">1</asp:TextBox>
            &nbsp; </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style2" colspan="2">
            <asp:Button ID="btnadd" runat="server" Font-Bold="True" Height="26px" OnClick="btnadd_Click" Text="Add To Cart " Width="193px" />
        </td>
    </tr>
</table>

