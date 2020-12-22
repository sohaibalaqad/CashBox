using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Control_Panel
{
    public partial class ControlPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("~/login.aspx");
            }
            else
            {
                Image2.ImageUrl = "~\\images\\" + Session["img"].ToString();
                Label1.Text = "مرحباً " + Session["FName"].ToString();
                if(Session["UserType"].ToString() == "admin")
                {
                    MultiView1.ActiveViewIndex = 0;
                }
                else
                {
                    MultiView1.ActiveViewIndex = 1;

                }
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("~/login.aspx");
        }
    }
}