<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WUCDepartmentAdmin.ascx.cs" Inherits="WUCDepartmentAdmin" %>
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
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#000099" Text="Department Control Page "></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Department ID :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtid" runat="server" Width="71px"></asp:TextBox>
        </td>
        <td rowspan="3">
            <asp:Image ID="Image1" runat="server" Height="123px" Width="107px" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Department Name :"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtname" runat="server" Width="172px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Image :"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
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
            <asp:Button ID="btnadd" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="29px" Text="Add" Width="89px" OnClick="btnadd_Click" />
&nbsp;
            <asp:Button ID="btnupdate" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="29px" Text="Update" Width="89px" OnClick="btnupdate_Click" />
&nbsp;
            <asp:Button ID="btndelete" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="29px" Text="Delete" Width="89px" OnClick="btndelete_Click" />
            <br />
            <asp:Button ID="btnsearch" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" Height="29px" Text="Search" Width="89px" OnClick="btnsearch_Click" />
&nbsp;
            <asp:TextBox ID="txtsearch" runat="server" Width="172px"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Select" HeaderText="Select" ShowHeader="True" Text="&gt;&gt;&gt;" />
                    <asp:BoundField DataField="D_ID" HeaderText="DepartmentID" />
                    <asp:BoundField DataField="Name" HeaderText="DepartmentName" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" Height="138px" ImageUrl='<%# "~\\imgdept\\"+Eval("D_ID").ToString().Trim()+".jpg" %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

