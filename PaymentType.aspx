<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="PaymentType.aspx.cs" Inherits="PaymentType" %>

<%@ Register src="WUCPaymentType.ascx" tagname="WUCPaymentType" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCPaymentType ID="WUCPaymentType1" runat="server" />
</asp:Content>

