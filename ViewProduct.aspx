<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="ViewProduct.aspx.cs" Inherits="ViewProduct" %>

<%@ Register src="WUCViewProduct.ascx" tagname="WUCViewProduct" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCViewProduct ID="WUCViewProduct1" runat="server" />
</asp:Content>

