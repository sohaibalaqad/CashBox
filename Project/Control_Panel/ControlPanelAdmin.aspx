<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="ControlPanelAdmin.aspx.cs" Inherits="Project.Control_Panel.ControlPanelAdmin" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Rectangle-12 {
            width: 300px;
            height: 100px;
            margin: 0 30px;
            padding: 26px 0px 25px 26px;
            border-radius: 30px;
            background-color: #3c7ad6;
            color:white;
            text-align:center;
        }
        .chart{
            width:600px;
        }
         .Rectangle-4 {
            width: 300px;
            height: 40px;
            margin: 0 0 20px 0;
            border: none;
            border-radius:5px;
            background-color: #c1d4ea;
            color:black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3 style="margin-right:30px;">لوحة التحكم
    </h3>
    <br /> 
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Withdraw]"></asp:SqlDataSource>
<br />
    <div class="container">
        <div class="row">
            <div class="col-sm Rectangle-12">
                <h4>الرصيد الإجمالي</h4>
                
                <asp:Label ID="LabelAllAmount" runat="server" Text="59550"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="شيكل"></asp:Label>
            </div>
            <div class="col-sm Rectangle-12" style="background-color: #4caf50;">
                <h4>الرصيد داخل الصندوق</h4>
                
                <asp:Label ID="LabelInAmount" runat="server" Text="20000"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="شيكل"></asp:Label>
            </div>
            <div class="col-sm Rectangle-12" style="background-color: #e8675e;">
                <h4>الرصيد خارج الصندوق</h4>
                <asp:Label ID="LabelOutAmount" runat="server" Text="39550"></asp:Label>
                
                <asp:Label ID="Label4" runat="server" Text="شيكل"></asp:Label>
                
            </div>
        </div>
    </div>
    <br />
    <br />
    <div style="margin-right:30px">
    <asp:TextBox ID="TextBox1" runat="server" CssClass="Rectangle-4" Height="40px" ></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="بحث" CssClass="btn btn-secondary btn-lg" Height="40px"/>
        <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="Describe" HeaderText="الوصف" SortExpression="Describe" />
                <asp:BoundField DataField="amount" HeaderText="المبلغ" SortExpression="amount" />
                <asp:BoundField DataField="date" HeaderText="التاريخ" SortExpression="date" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="FName" HeaderText="الأسم الأول" SortExpression="FName" />
                <asp:BoundField DataField="LName" HeaderText="الأسم الأخير" SortExpression="LName" />
                <asp:BoundField DataField="SubscriptionDate" HeaderText="تاريخ الإشتراك" SortExpression="SubscriptionDate" />
                <asp:BoundField DataField="UserType" HeaderText="نوع المستخدم" SortExpression="UserType" />
                <asp:BoundField DataField="Active" HeaderText="النشاط" SortExpression="Active" />
                <asp:BoundField DataField="Balance" HeaderText="الرصيد" SortExpression="Balance" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([FName] LIKE '%' + @FName + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="FName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outlay] WHERE ([Describe] LIKE '%' + @Describe + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Describe" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
