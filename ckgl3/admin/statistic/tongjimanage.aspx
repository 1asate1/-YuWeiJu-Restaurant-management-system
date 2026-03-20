<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site1.Master" AutoEventWireup="true" CodeBehind="tongjimanage.aspx.cs" Inherits="ckgl.admin.statistic.tongjimanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            height: 27px;
        }
        .auto-style13 {
            width: 93%;
            height: 700px;
        }
        .auto-style16 {
            height: 43px;
        font-size: x-large;
        text-align: center;
    }
    .auto-style17 {
        font-size: large;
    }
    .auto-style22 {
        height: 138px;
    }
    .auto-style29 {
        width: 136px;
        height: 56px;
    }
    .auto-style30 {
        width: 273px;
        height: 56px;
    }
    .auto-style31 {
        width: 136px;
        height: 62px;
    }
    .auto-style32 {
        width: 273px;
        height: 62px;
    }
    .auto-style33 {
        width: 136px;
        height: 79px;
    }
    .auto-style34 {
        width: 273px;
        height: 79px;
    }
    .auto-style35 {
        width: 136px;
        height: 138px;
    }
    .auto-style36 {
        width: 273px;
        height: 138px;
    }
        .auto-style37 {
            width: 136px;
            height: 56px;
            font-size: large;
        }
    .auto-style38 {
        height: 27px;
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <table class="auto-style13" style="border: thick double #FFCC99; background-color: #FFCC99" border="1">
            <tr>
                <td class="auto-style16" colspan="3"><strong>统计管理</strong></td>
            </tr>
            <tr>
                <td class="auto-style35"><span class="auto-style17">员工编号</span><asp:CheckBox ID="CheckBox1" runat="server" Text=" " />
                </td>
                <td class="auto-style36">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="em" DataValueField="eid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" SelectCommand="select eid,concat(eid,ename)as em from employee"></asp:SqlDataSource>
                </td>
                <td class="auto-style22">
                    <asp:Panel ID="Panel2" runat="server" BorderStyle="Inset" Height="118px">
                        <br />
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" CssClass="auto-style17" Text="顾客量"></asp:Label>
                        &nbsp;<asp:Label ID="Label12" runat="server" Text="0" CssClass="auto-style17"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><span class="auto-style17">菜品编号</span><asp:CheckBox ID="CheckBox2" runat="server" Text=" " />
                </td>
                <td class="auto-style32">
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="dish" DataValueField="did">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString9 %>" ProviderName="<%$ ConnectionStrings:ConnectionString9.ProviderName %>" SelectCommand="select did ,concat(did,dname) as dish from dishes"></asp:SqlDataSource>
                </td>
                <td rowspan="4">
                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Inset" Height="443px">
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label1" runat="server" Text="订单总数" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="0" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="菜品销量" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="0" CssClass="auto-style17"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="销售总金额" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="0" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:Label ID="Label7" runat="server" Text="平均客单价" CssClass="auto-style17"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label8" runat="server" Text="0" CssClass="auto-style17"></asp:Label>
                        <br />
                        &nbsp;&nbsp;
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style17" Text="年度畅销菜品:"></asp:Label>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style17"></asp:Label>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><span class="auto-style17">顾客账号</span><asp:CheckBox ID="CheckBox3" runat="server" Text=" " />
                </td>
                <td class="auto-style30">
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="cm" DataValueField="cid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString10 %>" ProviderName="<%$ ConnectionStrings:ConnectionString10.ProviderName %>" SelectCommand="select cid,concat(cid,cname) as cm from customer"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style33"><span class="auto-style17">按年统计</span><asp:CheckBox ID="CheckBox4" runat="server" Text=" " />
                </td>
                <td class="auto-style34">
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="odt" DataValueField="odt">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString11 %>" ProviderName="<%$ ConnectionStrings:ConnectionString11.ProviderName %>" SelectCommand="select distinct year(otime) as odt from orders"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style37">按月统计<asp:CheckBox ID="CheckBox5" runat="server" AutoPostBack="True" Text=" " />
                </td>
                <td class="auto-style30">
                    <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource5" DataTextField="yue" DataValueField="yue" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString12 %>" ProviderName="<%$ ConnectionStrings:ConnectionString12.ProviderName %>" SelectCommand="select distinct month(otime)as yue from orders"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style38" colspan="2">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style17" Height="45px" Text="统计" Width="121px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style17" Height="45px" Text="重置" Width="121px" OnClick="Button2_Click" />
                </td>
            </tr>
        </table>
        <br />
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
