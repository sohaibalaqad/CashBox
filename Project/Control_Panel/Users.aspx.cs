using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project.Control_Panel
{
    public partial class Users : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CachBoxDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBoxID.Visible = true;
            TextBoxFname.Visible = true;
            TextBoxLname.Visible = true;
            TextBoxSubDate.Visible = true;
            DropDownListType.Visible = true;
            TextBoxpass.Visible = true;
            TextBoxBalance.Visible = true;
            CheckBoxActive.Visible = true;
            ButtonAdd.Visible = true;
            ButtonCancel.Visible = true;
            FileUpload1.Visible = true;
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            int active = 0;
            if (CheckBoxActive.Checked == true)
            {
                active = 1;
            }
            else
            {
                active = 1;
            }
            string Path;
            Path = Request.PhysicalApplicationPath;
            Path += "\\images\\";

            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Path + FileUpload1.FileName);
            }
            else
            {
                Response.Write("<script>alert('قم بإختيار صورتك')</script>");
            }
            String sql = "";
            sql = "Insert into [Users](Id , FName, LName ,SubscriptionDate ,UserType, Active , Password , Balance ,img) values('" + TextBoxID.Text + "' , N'" + TextBoxFname.Text + "' , N'" + TextBoxLname.Text + "' ,'" + TextBoxSubDate.Text + "' ,'" + DropDownListType.SelectedValue + "' ,'" + active + "' ,'" + TextBoxpass.Text + "','" + TextBoxBalance.Text + "' , '"+ FileUpload1.FileName + "')";
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            TextBoxID.Visible = false;
            TextBoxFname.Visible = false;
            TextBoxLname.Visible = false;
            TextBoxSubDate.Visible = false;
            DropDownListType.Visible = false;
            TextBoxpass.Visible = false;
            TextBoxBalance.Visible = false;
            CheckBoxActive.Visible = false;
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
            FileUpload1.Visible = false;
            Response.Redirect(Request.RawUrl);
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxID.Visible = false;
            TextBoxFname.Visible = false;
            TextBoxLname.Visible = false;
            TextBoxSubDate.Visible = false;
            DropDownListType.Visible = false;
            TextBoxpass.Visible = false;
            TextBoxBalance.Visible = false;
            CheckBoxActive.Visible = false;
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
            FileUpload1.Visible = false;
        }

        
    }
}