<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="Cash.aspx.cs" Inherits="Cash" %>

<%@ Register src="WUCCash.ascx" tagname="WUCCash" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCCash ID="WUCCash1" runat="server" />
</asp:Content>

