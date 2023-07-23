<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="DepartmentAdmin.aspx.cs" Inherits="DepartmentAdmin" %>

<%@ Register src="WUCDepartmentAdmin.ascx" tagname="WUCDepartmentAdmin" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCDepartmentAdmin ID="WUCDepartmentAdmin1" runat="server" />
</asp:Content>

