<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home_Anonymoues_Product.aspx.cs" Inherits="Home_Anonymoues_Product" %>

<%@ Register src="WUCViewProduct.ascx" tagname="WUCViewProduct" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCViewProduct ID="WUCViewProduct1" runat="server" />
</asp:Content>

