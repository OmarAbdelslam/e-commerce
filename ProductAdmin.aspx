<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="ProductAdmin.aspx.cs" Inherits="ProductAdmin" %>

<%@ Register src="WUCProductAdmin.ascx" tagname="WUCProductAdmin" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCProductAdmin ID="WUCProductAdmin1" runat="server" />
</asp:Content>

