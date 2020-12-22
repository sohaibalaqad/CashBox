<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="AdminOutlay.aspx.cs" Inherits="Project.Control_Panel.AdminOutlay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .but {
            margin: 40px 30px 30px 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3 style="margin-right: 30px;">كشف المصاريف</h3>

    <div class="but">
        <asp:Button ID="Button1" runat="server" Text="إضافة" CssClass="btn btn-success" OnClick="Button1_Click" /><br />
        
        <div class="container" style="padding:10px 0;">
            <div class="row">
                <div class="col">
                    <asp:TextBox ID="TextBoxID" runat="server" placeholder="الرقم" TextMode="Number" Visible="False" Width="60px"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxAmount" runat="server" placeholder="المبلغ" TextMode="Number" Visible="False" Width="90px"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxDate" runat="server" TextMode="Date" Visible="False" Width="130px"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:TextBox ID="TextBoxDes" runat="server" placeholder="رقم الإيصال" Visible="False"></asp:TextBox></div>
                <div class="col">
                    </div>
                <div class="col">
                </div>
                
            </div><br />
            <asp:Button ID="ButtonAdd" runat="server" Text="حفظ" CssClass="btn btn-success" Visible="False" OnClick="ButtonAdd_Click" />
            <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" Text="إلغاء" CssClass="btn btn-danger" Visible="False"/>
        </div>
        </div>
        <div style="margin: 0 30px; margin-top: 60px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="#" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="amount" HeaderText="المبلغ" SortExpression="amount" />
                    <asp:BoundField DataField="Describe" HeaderText="الوصف" SortExpression="Describe" />
                    <asp:BoundField DataField="date" HeaderText="التاريخ" SortExpression="date" />
                    <asp:CommandField CancelText="إلغاء" EditText="تعديل" ShowEditButton="True" UpdateText="حفظ">
                    <ControlStyle CssClass="btn btn-success" />
                    </asp:CommandField>
                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-danger" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Outlay]" DeleteCommand="DELETE FROM [Outlay] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Outlay] ([Id], [amount], [Describe], [date]) VALUES (@Id, @amount, @Describe, @date)" UpdateCommand="UPDATE [Outlay] SET [amount] = @amount, [Describe] = @Describe, [date] = @date WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="Describe" Type="String" />
                <asp:Parameter Name="date" DbType="Date" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="Describe" Type="String" />
                <asp:Parameter Name="date" DbType="Date" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
</asp:Content>
