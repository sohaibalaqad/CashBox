<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="ControlPanelUser.aspx.cs" Inherits="Project.Control_Panel.ControlPanelUser1" %>
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
    <h3 style="margin-right:30px;">الرئيسية
    </h3>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Withdraw] WHERE ([IdUser] = @IdUser)">
        <SelectParameters>
            <asp:SessionParameter Name="IdUser" SessionField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br /> 

    <div class="container">
        <div class="row">
            <div class="col-sm Rectangle-12">
                <h4>رصيدك الإجمالي</h4>
                
                <asp:Label ID="LabelAllAmount" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="شيكل"></asp:Label>
            </div>
            <div class="col-sm Rectangle-12" style="background-color: #4caf50;">
                <h4>رصيدك المتوفر</h4>
                
                <asp:Label ID="LabelInAmount" runat="server" Text="0"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="شيكل"></asp:Label>
            </div>
            <div class="col-sm Rectangle-12" style="background-color: #e8675e;">
                <h4>رصيدك المستحق</h4>
                <asp:Label ID="LabelOutAmount" runat="server" Text="0"></asp:Label>
                
                <asp:Label ID="Label4" runat="server" Text="شيكل"></asp:Label>
                
            </div>
        </div>
    </div>
    <br />
    </asp:Content>
