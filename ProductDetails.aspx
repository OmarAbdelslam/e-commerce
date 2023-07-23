<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<%@ Register src="WUCProductDetails.ascx" tagname="WUCProductDetails" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCProductDetails ID="WUCProductDetails1" runat="server" />
</asp:Content>

