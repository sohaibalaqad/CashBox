using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project.Control_Panel
{
    public partial class AdminOutlay : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CachBoxDB.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBoxID.Visible = true;
            TextBoxAmount.Visible = true;
            TextBoxDate.Visible = true;
            TextBoxDes.Visible = true;
            
            ButtonAdd.Visible = true;
            ButtonCancel.Visible = true;
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            String sql = "";
            sql = "Insert into [Outlay](id , amount, Describe ,date) values('" + TextBoxID.Text + "' , '" + TextBoxAmount.Text + "' , N'" + TextBoxDes.Text + "' ,'" + TextBoxDate.Text + "')";
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            TextBoxID.Visible = false;
            TextBoxAmount.Visible = false;
            TextBoxDate.Visible = false;
            TextBoxDes.Visible = false;
            
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
            Response.Redirect(Request.RawUrl);
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxID.Visible = false;
            TextBoxAmount.Visible = false;
            TextBoxDate.Visible = false;
            TextBoxDes.Visible = false;
           
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
        }
    }
}