using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project.Control_Panel
{
    public partial class ControlPanelAdmin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            DataView DV1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            int sum1 = 0;
            for (int i = 0; i < DV1.Table.Rows.Count; ++i)
            {
                sum1 += Convert.ToInt32(DV1.Table.Rows[i].ItemArray[7].ToString());
            }
            LabelAllAmount.Text = sum1.ToString();

            DataView DV2 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            int sum2 = 0;
            for (int i = 0; i < DV2.Table.Rows.Count; ++i)
            {
                sum2 += Convert.ToInt32(DV2.Table.Rows[i].ItemArray[1].ToString());
            }
            LabelOutAmount.Text = sum2.ToString();

            int sum3 = sum1 - sum2;
            LabelInAmount.Text = sum3.ToString();

        }
    }
}