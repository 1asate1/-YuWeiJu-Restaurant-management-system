<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="stuffadd.aspx.cs" Inherits="ckgl.admin.stuff.stuffadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 156px;
            text-align: right;
        }
        .auto-style7 {
            width: 46%;
        }
        .auto-style8 {
            text-align: center;
        }
        .auto-style10 {
            width: 156px;
            font-size: large;
            text-align: center;
        }
        .auto-style11 {
            width: 356px;
        }
        .auto-style12 {
            font-size: xx-large;
        }
        .auto-style13 {
            width: 356px;
            text-align: center;
        }
        .auto-style14 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style7" style="border-style: groove; border-color: #FF9933; background-color: #FFCC99" border="1">
            <tr>
                <td class="auto-style8" colspan="2"><span class="auto-style12"><strong>员工信息录入 </strong></span><strong>
                    <br class="auto-style12" />
                    </strong><span class="auto-style12"><strong>Employee Entry</strong></span></td>
            </tr>
            <tr>
                <td class="auto-style10">员工编号</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工姓名</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工性别</td>
                <td class="auto-style11">
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="男" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="女" />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工职位</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">登陆密码</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox4" runat="server" Height="26px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">联系方式 </td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox5" runat="server" Height="26px" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">出生日期</td>
                <td class="auto-style11">
                    <asp:TextBox ID="TextBox6" runat="server" Height="26px" Width="250px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">员工状态</td>
                <td class="auto-style11">
                    <asp:RadioButton ID="RadioButton3" runat="server" Text="在职" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="休假" />
                    <br />
                    <asp:RadioButton ID="RadioButton5" runat="server" Text="实习" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton6" runat="server" Text="离职" />
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;<asp:Button ID="Button1" runat="server" CssClass="auto-style14" Height="40px" Text="清空信息" Width="127px" OnClick="Button1_Click1" />
                </td>
                <td class="auto-style13">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style14" Height="40px" Text="提交信息" Width="125px" OnClick="Button2_Click1" />
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
    <p>
    </p>
</asp:Content>
