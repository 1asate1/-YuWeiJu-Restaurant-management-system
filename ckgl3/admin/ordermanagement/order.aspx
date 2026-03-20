    <%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="ckgl.admin.ordermanagement.order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 96%;
            height: 582px;
        }
        .auto-style8 {
            font-size: large;
            width: 148px;
        }
        .auto-style9 {
            height: 27px;
            font-size: large;
            width: 148px;
        }
        .auto-style10 {
            font-size: xx-large;
            text-align: center;
            height: 40px;
        }
        .auto-style11 {
            width: 148px;
            height: 54px;
        }
        .auto-style12 {
            height: 27px;
            width: 263px;
        }
        .auto-style13 {
            width: 263px;
        }
        .auto-style14 {
            width: 263px;
            text-align: center;
            height: 54px;
        }
        .auto-style15 {
            font-size: large;
        }
        .auto-style16 {
            font-size: large;
            width: 148px;
            height: 43px;
        }
        .auto-style17 {
            width: 263px;
            height: 43px;
        }
        .auto-style18 {
            height: 54px;
        }
        .auto-style19 {
            font-size: large;
            width: 148px;
            height: 46px;
        }
        .auto-style20 {
            width: 263px;
            height: 46px;
        }
        .auto-style21 {
            font-size: large;
            width: 148px;
            height: 54px;
        }
        .auto-style22 {
            width: 263px;
            height: 54px;
        }
        .auto-style23 {
            height: 27px;
        }
        .auto-style24 {
            width: 93%;
            height: 72px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table class="auto-style24" style="background-color: #FFCC99" align="center" border="1">
            <tr>
                <td class="auto-style10" colspan="3"><strong>订单管理</strong></td>
            </tr>
            <tr>
                <td class="auto-style9">订单编号</td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="220px" Enabled="False"></asp:TextBox>
                </td>
                <td class="auto-style23">
                </td>
            </tr>
            <tr>
                <td class="auto-style8">员工编号<asp:CheckBox ID="CheckBox1" runat="server" Text=" " />
                </td>
                <td class="auto-style13">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="em" DataValueField="eid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" SelectCommand="select eid,concat(eid,ename) as em from employee"></asp:SqlDataSource>
                </td>
                <td rowspan="8">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="oid" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="oid" HeaderText="oid" ReadOnly="True" SortExpression="oid" />
                            <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                            <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" />
                            <asp:BoundField DataField="did" HeaderText="did" SortExpression="did" />
                            <asp:BoundField DataField="onum" HeaderText="onum" SortExpression="onum" />
                            <asp:BoundField DataField="totalprice" HeaderText="totalprice" SortExpression="totalprice" />
                            <asp:BoundField DataField="otime" HeaderText="otime" SortExpression="otime" />
                            <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="选择"></asp:LinkButton>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="return confirm('(｢ ⊙Д⊙)｢ 欸欸，真的要删除吗？')"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" DeleteCommand="delete from orders where oid=?" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="select * from orders"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">顾客账号<asp:CheckBox ID="CheckBox2" runat="server" Text=" " />
                </td>
                <td class="auto-style17">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="cm" DataValueField="cid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" SelectCommand="select cid,concat(cid,cname) as cm from customer"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">菜品编号<asp:CheckBox ID="CheckBox3" runat="server" Text=" " />
                </td>
                <td class="auto-style20">
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="dm" DataValueField="did" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString7 %>" ProviderName="<%$ ConnectionStrings:ConnectionString7.ProviderName %>" SelectCommand="select did,concat(did,dname) as dm from dishes"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">菜品数量</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox2" runat="server" Height="33px" Width="220px" TextMode="Number" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged">0</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">菜品单价</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="220px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">订单总价</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="219px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">下单时间<asp:CheckBox ID="CheckBox4" runat="server" Text=" " Enabled="False" />
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="220px" OnTextChanged="TextBox5_TextChanged" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">订单备注</td>
                <td class="auto-style13">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="220px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style15" Height="47px" Text="录入" Width="110px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style15" Height="47px" Text="查询" Width="110px" OnClick="Button2_Click" />
                </td>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style15" Height="47px" Text="修改" Width="110px" OnClick="Button3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style15" Height="47px" Text="重置" Width="110px" OnClick="Button4_Click" />
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
