<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="AdminWithdraw.aspx.cs" Inherits="Project.Control_Panel.AdminWithdraw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .but {
            margin: 40px 30px 30px 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3 style="margin-right: 30px;">كشف السحب</h3>

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
                    <asp:TextBox ID="TextBoxInvNum" runat="server" placeholder="رقم الإيصال" TextMode="Number" Visible="False"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxNotes" runat="server" placeholder="ملاحظات" Visible="False"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxIDUser" runat="server" placeholder="رقم المشترك" TextMode="Number" Visible="False"></asp:TextBox> 
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
                    <asp:BoundField DataField="time" HeaderText="التاريخ" SortExpression="time" />
                    <asp:BoundField DataField="invoiceNumber" HeaderText="رقم الإيصال" SortExpression="invoiceNumber" />
                    <asp:BoundField DataField="notes" HeaderText="ملاحظات" SortExpression="notes" />
                    <asp:BoundField DataField="IdUser" HeaderText="رقم المشترك" SortExpression="IdUser" />
                    <asp:CommandField CancelText="إلغاء" EditText="تعديل" ShowEditButton="True" UpdateText="حفظ">
                    <ControlStyle CssClass="btn btn-success" />
                    </asp:CommandField>
                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-danger" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Withdraw]" DeleteCommand="DELETE FROM [Withdraw] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Withdraw] ([Id], [amount], [time], [invoiceNumber], [notes], [IdUser]) VALUES (@Id, @amount, @time, @invoiceNumber, @notes, @IdUser)" UpdateCommand="UPDATE [Withdraw] SET [amount] = @amount, [time] = @time, [invoiceNumber] = @invoiceNumber, [notes] = @notes, [IdUser] = @IdUser WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="time" Type="DateTime" />
                <asp:Parameter Name="invoiceNumber" Type="Int32" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="IdUser" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="amount" Type="Int32" />
                <asp:Parameter Name="time" Type="DateTime" />
                <asp:Parameter Name="invoiceNumber" Type="Int32" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="IdUser" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
</asp:Content>
