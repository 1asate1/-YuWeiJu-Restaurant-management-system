<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="dishadd.aspx.cs" Inherits="ckgl.admin.dish.dishadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 27px;
            text-align: center;
        }
        .auto-style8 {
            width: 275px;
            text-align: right;
        }
        .auto-style9 {
            width: 47%;
        }
        .auto-style11 {
            width: 275px;
            height: 27px;
            font-size: large;
            text-align: center;
        }
        .auto-style12 {
            height: 27px;
            width: 841px;
        }
        .auto-style13 {
            width: 275px;
            font-size: large;
            text-align: center;
        }
        .auto-style14 {
        width: 841px;
    }
        .auto-style15 {
            width: 275px;
            font-size: large;
            height: 31px;
            text-align: center;
        }
        .auto-style16 {
            width: 841px;
            height: 31px;
        }
        .auto-style17 {
            width: 841px;
            text-align: center;
        }
        .auto-style18 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style19 {
            font-size: large;
        }
    .auto-style21 {
        height: 27px;
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style9" style="background-color: #FFCC99">
            <tr>
                <td class="auto-style21" colspan="2"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 菜品录入</strong></td>
            </tr>
            <tr>
                <td class="auto-style13">菜品编号</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">菜品名称</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">菜品单位</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">菜品价格</td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox4" runat="server" Height="32px" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">菜品描述</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox5" runat="server" Height="34px" Width="273px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">菜品类别</td>
                <td class="auto-style14">
                    <asp:TextBox ID="TextBox6" runat="server" Height="31px" Width="272px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style19" Height="47px" OnClick="Button1_Click" Text="清空信息" Width="119px" />
                </td>
                <td class="auto-style17">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style18" Height="43px" OnClick="Button2_Click" Text="提交信息" Width="119px" />
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
    <p>
    </p>
    <p>
    </p>
</asp:Content>
