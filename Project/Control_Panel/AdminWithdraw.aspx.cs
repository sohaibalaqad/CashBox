using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project.Control_Panel
{
    public partial class AdminWithdraw : System.Web.UI.Page
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
            TextBoxInvNum.Visible = true;
            TextBoxNotes.Visible = true;
            TextBoxIDUser.Visible = true;
            ButtonAdd.Visible = true;
            ButtonCancel.Visible = true;
        }

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {
            String sql = "";
            sql = "Insert into [Withdraw](id , amount,time , invoiceNumber, notes, IdUser) values('" + TextBoxID.Text + "' , '" + TextBoxAmount.Text + "' , '" + TextBoxDate.Text + "' ,  '" + TextBoxInvNum.Text + "' , N'" + TextBoxNotes.Text + "' , '" + TextBoxIDUser.Text + "')";
            SqlCommand com = new SqlCommand(sql, con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            TextBoxID.Visible = false;
            TextBoxAmount.Visible = false;
            TextBoxDate.Visible = false;
            TextBoxInvNum.Visible = false;
            TextBoxNotes.Visible = false;
            TextBoxIDUser.Visible = false;
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
            Response.Redirect(Request.RawUrl);
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            TextBoxID.Visible = false;
            TextBoxAmount.Visible = false;
            TextBoxDate.Visible = false;
            TextBoxInvNum.Visible = false;
            TextBoxNotes.Visible = false;
            TextBoxIDUser.Visible = false;
            ButtonAdd.Visible = false;
            ButtonCancel.Visible = false;
        }
    }
}