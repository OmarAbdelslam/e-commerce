<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="ViewDepartment.aspx.cs" Inherits="ViewDepartment" %>

<%@ Register src="WUCViewDepartment.ascx" tagname="WUCViewDepartment" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCViewDepartment ID="WUCViewDepartment1" runat="server" />
</asp:Content>

