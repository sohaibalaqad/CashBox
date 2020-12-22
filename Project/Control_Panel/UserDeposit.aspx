<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="UserDeposit.aspx.cs" Inherits="Project.Control_Panel.UserDeposit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <h3 style="margin-right: 30px;">كشف الإيداع</h3>
    <div style="margin: 0 30px; margin-top: 60px;">
    <asp:GridView ID="GridView1" runat="server" CssClass="table table-striped" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="#" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="amount" HeaderText="المبلغ" SortExpression="amount" />
            <asp:BoundField DataField="time" HeaderText="التاريخ" SortExpression="time" />
            <asp:BoundField DataField="invoiceNumber" HeaderText="رقم الإيصال" SortExpression="invoiceNumber" />
            <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
        </Columns>
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Deposit] WHERE ([IdUser] = @IdUser)">
        <SelectParameters>
            <asp:SessionParameter Name="IdUser" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
