<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="customeradd.aspx.aspx.cs" Inherits="ckgl.admin.customer.customeredit_aspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 51%;
        }
        .auto-style7 {
            height: 28px;
            width: 1285px;
        }
        .auto-style8 {
            width: 331px;
            text-align: center;
        height: 53px;
    }
        .auto-style9 {
            height: 28px;
            width: 331px;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            width: 331px;
            font-size: large;
            text-align: center;
        }
        .auto-style11 {
            font-size: xx-large;
            text-align: center;
            height: 52px;
        }
        .auto-style12 {
            width: 331px;
            font-size: large;
            text-align: center;
            height: 31px;
        }
        .auto-style13 {
            height: 31px;
            width: 1285px;
        }
        .auto-style14 {
            width: 1285px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            width: 709px;
        }
    .auto-style17 {
        width: 1285px;
        height: 53px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style16" align="left" border="1" style="background-color: #FFCC99">
            <tr>
                <td class="auto-style11" colspan="2" style="background-color: #FFCC99"><strong>顾客录入管理</strong></td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-color: #FFCC99">顾客账号</td>
                <td class="auto-style14" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="261px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="background-color: #FFCC99">顾客姓名</td>
                <td class="auto-style13" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox2" runat="server" Height="36px" Width="261px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="background-color: #FFCC99">顾客性别</td>
                <td class="auto-style7" style="background-color: #FFCC99">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-color: #FFCC99">顾客生日</td>
                <td class="auto-style14" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox3" runat="server" Height="36px" Width="261px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="background-color: #FFCC99">联系方式</td>
                <td class="auto-style14" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox4" runat="server" Height="37px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="background-color: #FFCC99">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="46px" Text="清空信息" Width="118px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style17" style="background-color: #FFCC99">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="46px" Text="提交信息" Width="123px" OnClick="Button2_Click" />
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
    <p>
    </p>
</asp:Content>
