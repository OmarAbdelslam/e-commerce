<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCShoppingCart.ascx.cs" Inherits="WUCShoppingCart" %>
<style type="text/css">






    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        text-align: center;
    }
    </style>

<table class="auto-style1">
    <tr>
        <td class="auto-style2"><strong><em>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#660033" Text="WELCOME SHOPING CART"></asp:Label>
            </em></strong></td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:GridView ID="DGVShopingCart" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Center" OnSelectedIndexChanged="DGVShopingCart_SelectedIndexChanged" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="DeptID" HeaderText="DeptID" />
                    <asp:BoundField DataField="ProName" HeaderText="PRODUCTNAME" />
                    <asp:BoundField DataField="Price" HeaderText="PRICE" />
                    <asp:BoundField DataField="Quantity" HeaderText="QUANTITY" />
                    <asp:BoundField DataField="SubTotal" HeaderText="SUPTOTAL" />
                    <asp:BoundField DataField="ProCode" HeaderText="PRDUCTCODE" Visible="False" />
                    <asp:TemplateField HeaderText="ImageProduct">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# "~\\imgproduct\\"+Eval("ProCode").ToString().Trim()+".jpg" %>' Width="109px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataTemplate>
                    Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;Shopping&nbsp;
                    Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now Cart&nbsp; Empty&nbsp; Now
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewBrand.aspx">ClickHere</asp:HyperLink>
          
        products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...&nbsp; To&nbsp; Add&nbsp; products&nbsp; To Your&nbsp; Shopping&nbsp; Cart...
    
                </EmptyDataTemplate>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Label ID="lbltotal" runat="server" CssClass="auto-style4" Font-Bold="True" ForeColor="Red"></asp:Label>
            <asp:Label ID="lblitems" runat="server" CssClass="auto-style4" Font-Bold="True" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
    </tr>
    <tr>
        <td class="auto-style2"><strong>
            <asp:HyperLink ID="hlkcheckout" runat="server" NavigateUrl="~/PaymentType.aspx">Go To Check Out </asp:HyperLink>
            </strong></td>
    </tr>
</table>

