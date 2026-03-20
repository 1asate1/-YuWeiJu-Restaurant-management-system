<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ckgl.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 20%;
            position: absolute;
            left: 710px;
            top: 407px;
            height: 178px;
        }
        .auto-style2 {
            font-size: 20pt;
        }
        .auto-style3 {
            text-align: center;
            width: 128px;
        }
        .auto-style4 {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <table class="auto-style1" style="border: medium groove #FF5050; background-color: #FF8E25;" border="1">
                <tr>
                    <td class="auto-style2" colspan="2" style="text-align: center; font-family: 得意黑; color: #FFFFFF; font-weight: bolder; font-size: xx-large;">登录窗口</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 得意黑; font-size: large; font-weight: normal; color: #FFFFFF;">用户名</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="font-family: 得意黑; font-size: large; font-weight: normal; color: #FFFFFF">密码</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="16px" Width="131px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Size="Large" Height="33px" OnClick="Button1_Click" Text="登录" Width="71px" BackColor="White" ForeColor="#FF8E25" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
