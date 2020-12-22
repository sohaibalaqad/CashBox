﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Control_Panel/ControlPanel.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Project.Control_Panel.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .but {
            margin: 40px 30px 30px 30px;
        }
        .imgUsers{
            width:30px;
            height:30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <h3 style="margin-right: 30px;">إدارة المستخدمين</h3>

    <div class="but">
        <asp:Button ID="Button1" runat="server" Text="إضافة" CssClass="btn btn-success" OnClick="Button1_Click" /><br />
        
        <div class="container" style="padding:10px 0;">
            <div class="row">
                <div class="col">
                    <asp:TextBox ID="TextBoxID" runat="server" placeholder="الرقم" TextMode="Number" Visible="False" Width="60px"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxFname" runat="server" placeholder="الأسم الأول" Visible="False" Width="90px"></asp:TextBox></div>
                <div class="col">
                    <asp:TextBox ID="TextBoxLname" runat="server" placeholder="الأسم الأخير" Visible="False" Width="130px"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:TextBox ID="TextBoxSubDate" runat="server" placeholder="تاريخ الإشتراك" Visible="False" TextMode="Date"></asp:TextBox>
                </div>
                <div class="col">
                    <asp:DropDownList ID="DropDownListType" runat="server" Visible="False">
                        <asp:ListItem Value="user">مستخدم</asp:ListItem>
                        <asp:ListItem Value="admin">مدير</asp:ListItem>
                    </asp:DropDownList>
                    </div>
                <div class="col">
                    <asp:TextBox ID="TextBoxpass" runat="server" placeholder="كلمة المرور" Visible="False"></asp:TextBox>
                </div>
                <div class="col">

                    <asp:TextBox ID="TextBoxBalance" runat="server" TextMode="Number" placeholder="الرصيد" Visible="False"></asp:TextBox>

                </div>
                <div class="col">

                    <asp:CheckBox ID="CheckBoxActive" runat="server" Text="نشط" Visible="False" />

                </div>
                <div class="col">

                    

                    <asp:FileUpload ID="FileUpload1" runat="server" Visible="False" />

                    

                </div>
            </div><br />
            <asp:Button ID="ButtonAdd" runat="server" Text="حفظ" CssClass="btn btn-success" Visible="False" OnClick="ButtonAdd_Click" />
            <asp:Button ID="ButtonCancel" runat="server" OnClick="ButtonCancel_Click" Text="إلغاء" CssClass="btn btn-danger" Visible="False"/>
        </div>
        </div>
        <div style="margin: 0 30px; margin-top: 60px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CssClass="table table-striped" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="رقم الهوية" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="FName" HeaderText="الأسم الأول" SortExpression="FName" />
                    <asp:BoundField DataField="LName" HeaderText="الأسم الأخير" SortExpression="LName" />
                    <asp:BoundField DataField="SubscriptionDate" HeaderText="تاريخ الإشتراك" SortExpression="SubscriptionDate" />
                    <asp:BoundField DataField="UserType" HeaderText="نوع المشترك" SortExpression="UserType" />
                    <asp:BoundField DataField="Active" HeaderText="النشاط" SortExpression="Active" />
                    <asp:BoundField DataField="Password" HeaderText="كلمة المرور" SortExpression="Password" />
                    <asp:BoundField DataField="Balance" HeaderText="الرصيد" SortExpression="Balance" />
                    <asp:CommandField CancelText="إلغاء" EditText="تعديل" ShowEditButton="True" UpdateText="حفظ">
                    <ControlStyle CssClass="btn btn-success" />
                    </asp:CommandField>
                    <asp:CommandField DeleteText="حذف" ShowDeleteButton="True">
                    <ControlStyle CssClass="btn btn-danger" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users]" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Users] ([Id], [FName], [LName], [SubscriptionDate], [UserType], [Active], [Password], [Balance], [img]) VALUES (@Id, @FName, @LName, @SubscriptionDate, @UserType, @Active, @Password, @Balance, @img)" UpdateCommand="UPDATE [Users] SET [FName] = @FName, [LName] = @LName, [SubscriptionDate] = @SubscriptionDate, [UserType] = @UserType, [Active] = @Active, [Password] = @Password, [Balance] = @Balance, [img] = @img WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter DbType="Date" Name="SubscriptionDate" />
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="Active" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="img" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter DbType="Date" Name="SubscriptionDate" />
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="Active" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Balance" Type="Int32" />
                <asp:Parameter Name="img" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
</asp:Content>
