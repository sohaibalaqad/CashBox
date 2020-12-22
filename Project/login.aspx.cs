using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_But_Click(object sender, EventArgs e)
        {
            DataView DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            if (DV.Count == 1)
            {
                if(TextBoxpass.Text == DV.Table.Rows[0].ItemArray[6].ToString())
                {
                    if(DV.Table.Rows[0].ItemArray[5].ToString() == "1")
                    {
                        Session.Add("ID", TextBoxID.Text);
                        Session.Add("UserType", DV.Table.Rows[0].ItemArray[4].ToString());
                        Session.Add("FName", DV.Table.Rows[0].ItemArray[1].ToString());
                        Session.Add("img", DV.Table.Rows[0].ItemArray[8].ToString());

                        if (CheckBoxLogin.Checked == true)
                        {
                            Response.Cookies.Add(new HttpCookie("ID", TextBoxID.Text));
                            Response.Cookies["ID"].Expires = DateTime.Now.AddDays(1);
                        }
                        Response.Redirect("~/Control_Panel/ControlPanel.aspx");
                    }
                    else
                    {
                        Label1.Text = "حسابك غير مفعل";
                    }
                }
                else
                {
                    Label1.Text = "كلمة المرور خطأ";
                }
                
            }
            else
            {
                Label1.Text = "رقم الهوية خطأ";
            }
        }
    }
}