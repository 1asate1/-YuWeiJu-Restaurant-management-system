<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="ckgl.admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            color: #3333FF;
        }
    .auto-style8 {
        color: #3333FF;
        height: 48px;
        font-size: xx-large;
        font-weight: normal;
        text-align: center;
    }
    .auto-style9 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Height="293px">
    <div class="auto-style9" style="color: #FF8E25; font-family: 得意黑; font-size: 70px; font-weight: bolder;">
        欢迎来到余味居后台管理系统<br /> 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Panel>
</asp:Content>
