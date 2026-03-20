<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="stuffedit.aspx.cs" Inherits="ckgl.admin.stuff.stuffedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .stuff-edit-cell {
            width: 178px;
        }
        .auto-style7 {
            width: 243px;
        }
        .auto-style8 {
            width: 92%;
        }
        .auto-style9 {
            text-align: center;
            font-size: xx-large;
        }
    .auto-style10 {
        font-size: large;
    }
    .auto-style11 {
        width: 178px;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style8" style="background-color: #FFCC99">
            <tr>
                <td class="auto-style9" colspan="3" style="background-color: #FFCC99"><strong>管理员信息维护</strong></td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #FFCC99">管理员编号</td>
                <td class="auto-style7" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="210px"></asp:TextBox>
                </td>
                <td rowspan="3" style="background-color: #FFCC99">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="eid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="eid" HeaderText="eid" ReadOnly="True" SortExpression="eid" />
                            <asp:BoundField DataField="ename" HeaderText="ename" SortExpression="ename" />
                            <asp:BoundField DataField="esex" HeaderText="esex" SortExpression="esex" />
                            <asp:BoundField DataField="eposition" HeaderText="eposition" SortExpression="eposition" />
                            <asp:BoundField DataField="epassword" HeaderText="epassword" SortExpression="epassword" />
                            <asp:BoundField DataField="ephone" HeaderText="ephone" SortExpression="ephone" />
                            <asp:BoundField DataField="ecsrq" HeaderText="ecsrq" SortExpression="ecsrq" />
                            <asp:BoundField DataField="ezt" HeaderText="ezt" SortExpression="ezt" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="delete from employee where eid=?" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="select * from employee" UpdateCommand="update employee set ename=?, esex=? ,eposition=?, epassword=? ,ephone=?, ecsrq=?, ezt=? where eid=?"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #FFCC99">管理员姓名</td>
                <td class="auto-style7" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="background-color: #FFCC99">管理员电话</td>
                <td class="auto-style7" style="background-color: #FFCC99">
                    <asp:TextBox ID="TextBox3" runat="server" Height="33px" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="stuff-edit-cell" style="background-color: #FFCC99">&nbsp;</td>
                <td class="auto-style7" style="background-color: #FFCC99">
                    <asp:Button ID="Button2" runat="server" Height="50px" Text="查询" Width="92px" OnClick="Button2_Click" CssClass="auto-style10" />
                </td>
                <td style="background-color: #FFCC99">
                    <asp:Button ID="Button1" runat="server" Height="47px" Text="重置" Width="88px" OnClick="Button1_Click" CssClass="auto-style10" />
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
</asp:Content>
