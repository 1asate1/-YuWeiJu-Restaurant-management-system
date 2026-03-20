<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="dishedit.aspx.cs" Inherits="ckgl.admin.dish.dishedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 27px;
            text-align: center;
            font-size: x-large;
        }
        .auto-style7 {
            width: 75%;
        }
        .auto-style8 {
            width: 241px;
        }
        .auto-style9 {
            width: 241px;
            font-size: large;
            text-align: center;
        }
        .auto-style10 {
            width: 333px;
        }
        .auto-style11 {
            font-size: large;
        }
        .auto-style12 {
            width: 809px;
        }
        .auto-style13 {
            margin-right: 0px;
        }
       /*.auto-style14 {*/
            /* 移除或注释掉 width: 170px; 这行 */
            /* width: 170px; */
            /*height: 27px;
            font-size: xx-large;*/
            /* 确保文本居中 */
            /*text-align: center;
        }*/
        /* 原来的可能会影响TreeView，将其修改为： */
        #dishEditTable tr:first-child td.auto-style14 {
            height: 27px;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table id="dishEditTable" class="auto-style15" style="border-style: double; border-color: #FF6600; background-color: #FFCC99" border="1">
            <tr>
                <td class="auto-style14" colspan="3"><strong>菜品信息修改</strong></td>
            </tr>
            <tr>
                <td class="auto-style9">菜品编号</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="252px"></asp:TextBox>
                </td>
                <td class="auto-style12" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="auto-style13" DataKeyNames="did" DataSourceID="SqlDataSource1" Width="772px">
                        <Columns>
                            <asp:BoundField DataField="did" HeaderText="did" ReadOnly="True" SortExpression="did" />
                            <asp:BoundField DataField="dname" HeaderText="dname" SortExpression="dname" />
                            <asp:BoundField DataField="djldw" HeaderText="djldw" SortExpression="djldw" />
                            <asp:BoundField DataField="dprice" HeaderText="dprice" SortExpression="dprice" />
                            <asp:BoundField DataField="dms" HeaderText="dms" SortExpression="dms" />
                            <asp:BoundField DataField="dlb" HeaderText="dlb" SortExpression="dlb" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="delete from dishes where did=?" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select * from dishes" UpdateCommand="update dishes set dname=?, djldw=?, dprice=? ,dms=?, dlb=? where did=?"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">菜品名称</td>
                <td class="auto-style10">
                    <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="252px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="49px" OnClick="Button1_Click" Text="查询" Width="109px" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" Height="49px" OnClick="Button2_Click" Text="重置" Width="104px" />
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
