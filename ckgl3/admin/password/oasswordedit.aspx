<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="oasswordedit.aspx.cs" Inherits="ckgl.admin.password.oasswordedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 30%;
        }
        .auto-style9 {
            width: 164px;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style11 {
            width: 164px;
            height: 28px;
            text-align: center;
        }
        .auto-style12 {
            height: 28px;
            text-align: center;
        }
        .auto-style13 {
            width: 164px;
            height: 29px;
            font-size: large;
            text-align: center;
        }
        .auto-style14 {
            height: 29px;
        }
        .auto-style15 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <br />
        <br />
        <table align="center" border="1" class="auto-style8" style="border: thick solid #FF8E25; border-collapse: collapse; background-color: #FFCC99;">
            <tr>
                <td class="auto-style10" colspan="2"><strong>密码维护</strong></td>
            </tr>
            <tr>
                <td class="auto-style9">原账号</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">原密码</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">新密码</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">确认新密码</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="45px" OnClick="Button1_Click" Text="修改" Width="90px" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" Height="45px" OnClick="Button2_Click" Text="重置" Width="95px" />
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
