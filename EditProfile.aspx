<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageMember.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="EditProfile" %>

<%@ Register src="WUCEditProfile.ascx" tagname="WUCEditProfile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <uc1:WUCEditProfile ID="WUCEditProfile1" runat="server" />
</asp:Content>

