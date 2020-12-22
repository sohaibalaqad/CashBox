using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project.Control_Panel
{
    public partial class ControlPanelUser1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\CachBoxDB.mdf;Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT Balance FROM [Users] WHERE ([Id] = '" + Session["ID"] + "')", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                LabelAllAmount.Text = dr["Balance"].ToString();

            }

            dr.Close();

            SqlCommand cmd1 = new SqlCommand("SELECT SUM(amount) AS SumAmount FROM [Withdraw] WHERE ([IdUser] = '" + Session["ID"] + "')", con);

            SqlDataReader dr1 = cmd1.ExecuteReader();
            if (dr1.Read())
            {
                LabelOutAmount.Text = dr1["SumAmount"].ToString();

            }
            con.Close();

            int a = Int32.Parse(LabelAllAmount.Text);
            int b = Int32.Parse(LabelOutAmount.Text);


            LabelInAmount.Text = (a - b).ToString();




        }


    }
}
