using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.MyProject.Classes.Drivers
{
    public partial class AdvanceSalary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            CalendarDate.Visible = true;
        }
        protected void CalendarDate_SelectionChanged(object sender, EventArgs e)
        {
            LabelDate.Text = CalendarDate.SelectedDate.ToShortDateString();
            CalendarDate.Visible = false;
        }

        protected void DropDownListDriverName_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            String get = "Select Id,DiverName,DriverID,Date,Amount from AdvanceOnSalary where DriverName ='" + DropDownListDriverName.SelectedItem.Text + "'";
            SqlCommand com = new SqlCommand(get, conn);
            com.ExecuteNonQuery();
            SqlDataAdapter da1 = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da1.Fill(ds, "AdvanceOnSalary");
            GridViewDriverAdvanceOnSalary.DataMember = "AdvanceOnSalary";
            GridViewDriverAdvanceOnSalary.DataSource = ds;
            GridViewDriverAdvanceOnSalary.DataBind();
            conn.Close();
        }
    }
}