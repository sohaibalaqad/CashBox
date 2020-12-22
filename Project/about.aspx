<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Project.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-family: Tajawal;
            font-size: 30px;
            color: #000000;
            letter-spacing: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                <h4 style="width: 600px; margin-right: 20px; margin-top:22px; font-stretch: normal; line-height: 1.88; text-align: right;"
                    class="auto-style5">نحن مجموعة عائلية تأسست في عام 2004 تهدف في الأساس إلى مساعدة الأشخاص مالياً بشرط أن تكون واحداً من أفراد هذا الصندوق .
                    <br />
                    وقام الصندوق بعمل العديد من الفعاليات مثل القيام برحلات ترفيهية للمشركين وتوزيع الطرود الغذائية في شهر رمضان المبارك .<br />
                    إذا كنت تريد الإشتراك بالصندوق بإمكانك التواصل مع مدير الصندوق .</h4>
                <br />
            </td>
            <td class="auto-style4" style="padding: 40px 40px 40px 100px;">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/bankonline.png" Width="100%" />
            </td>
        </tr>
    </table>
</asp:Content>
