<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="customeredit.aspx.cs" Inherits="ckgl.admin.customer.customeradd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            width: 78%;
        }
        .auto-style7 {
            width: 172px;
            text-align: right;
        }
        .auto-style8 {
            width: 172px;
            font-size: large;
            text-align: center;
        height: 116px;
    }
        .auto-style9 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style12 {
            width: 300px;
        height: 116px;
    }
        .auto-style14 {
            text-align: left;
        height: 48px;
    }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            font-size: larger;
        }
    .auto-style17 {
        width: 1306px;
    }
    .auto-style18 {
        width: 172px;
        text-align: right;
        height: 48px;
    }
    .auto-style19 {
        width: 172px;
        font-size: large;
        text-align: center;
        height: 126px;
    }
    .auto-style20 {
        width: 300px;
        height: 126px;
    }
    .auto-style21 {
        width: 172px;
        font-size: large;
        text-align: center;
        height: 127px;
    }
    .auto-style22 {
        width: 300px;
        height: 127px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style17" style="border-style: groove; border-color: #FF9966; background-color: #FFCC99" border="1">
            <tr>
                <td class="auto-style9" colspan="3" style="background-color: #FFCC99"><strong>顾客管理表</strong></td>
            </tr>
            <tr>
                <td class="auto-style8" style="background-color: #FFCC99">顾客账号</td>
                <td class="auto-style12" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="220px"></asp:TextBox>
                </td>
                <td rowspan="3">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="cid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="cid" HeaderText="cid" ReadOnly="True" SortExpression="cid" />
                            <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                            <asp:BoundField DataField="csex" HeaderText="csex" SortExpression="csex" />
                            <asp:BoundField DataField="ccsrq" HeaderText="ccsrq" SortExpression="ccsrq" />
                            <asp:BoundField DataField="cphone" HeaderText="cphone" SortExpression="cphone" />
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('(｢ ⊙Д⊙)｢ 欸欸，真的要删除吗？')"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM customer WHERE cid=?" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="select * from customer" UpdateCommand="UPDATE customer SET cname=?, csex=?, ccsrq=?, cphone=? WHERE cid=?"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style21" style="background-color: #FFCC99">顾客姓名</td>
                <td class="auto-style22" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox2" runat="server" Height="32px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19" style="background-color: #FFCC99">联系电话</td>
                <td class="auto-style20" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox3" runat="server" Height="32px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style18" style="background-color: #FFCC99">
                    </td>
                <td class="auto-style14" colspan="2" style="background-color: #FFCC99">
                    <asp:Button ID="Button1" runat="server" Height="51px" Text="查询" Width="113px" CssClass="auto-style15" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="49px" Text="重置" Width="119px" CssClass="auto-style16" OnClick="Button2_Click" />
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
