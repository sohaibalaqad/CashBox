<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Project.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            padding: 10px;
            width: 617px;
        }

        .Rectangle-4 {
            width: 300px;
            height: 40px;
            margin: 0 0 20px 0;
            border: none;
            border-radius:5px;
            background-color: #E8F2FE;
            color:black;
        }

       /* .Rectangle-6 {
            width: 100px;
            height: 50px;
            margin: 43.9px 0 0 6px;
            padding: 9px 34px 9px 35px;
            opacity: 0.8;
            border:none;
            border-radius: 5px;
            background-color: #bfd7f3;
        }*/
        .auto-style6 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin: 20px 0 20px 6px;
            padding: 9px 34px 9px 35px;
            opacity: 0.8;
            border-radius: 5px;
            background-color: #bfd7f3;
        }
        .img{
            margin:36px;
        }
        .loginContiner{
            display: block;
  margin-left: auto;
  margin-right: auto;
  width: 40%;

        }
        .check lable{
                margin-right: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style5" style="padding: 40px 40px 40px 100px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/login.png" Width="100%" CssClass="img"
                    />
            </td>

            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Users] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBoxID" Name="Id" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <div class="loginContiner">

                    <h3 style=" 
font-family: Tajawal; line-height: 1.27; letter-spacing: normal; text-align: center;">مرحباً
                        </h3>
                        

                    <br />
                <asp:TextBox ID="TextBoxID" runat="server" CssClass="Rectangle-4" Font-Names="Tajawal" placeholder="رقم الهوية" 
                    ></asp:TextBox>
                <br />
                <asp:TextBox ID="TextBoxpass" runat="server" CssClass="Rectangle-4" Font-Names="Tajawal" TextMode="Password" placeholder="كلمة المرور"
                    ></asp:TextBox>
                <br />
                <asp:CheckBox ID="CheckBoxLogin"  runat="server" Text=" تذكرني" Font-Names="Tajawal" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" />
                <br />
                <asp:Button ID="login_but" runat="server" Text="تسجيل الدخول" CssClass="auto-style6" Font-Names="Tajawal" Width="177px" OnClick="Login_But_Click" />
                  <br />  <asp:Label ID="Label1" runat="server" Width="400px" Font-Names="Tajawal"></asp:Label>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>
