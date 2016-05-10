using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.MyProject.Classes.Drivers
{
    public partial class AddNewDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            String checkCust = "select count(*) from Driver where DriverID='" + TextBoxID.Text + "'";
            SqlCommand com = new SqlCommand(checkCust, conn);
            int tmp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (tmp == 1)
            {
                Response.Write("Driver already Exists");
            }
            conn.Close();
        }

        protected void Driver_AddNew_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            String insert = "insert into Driver(DriverID, StartDay,PhoneNumber1,PhoneNumber2,LicenseID,Birthday,LicenseDate,LicenseExpiredDate,LicenseType,CanDriveForkLift,Name) values(@DriverID,@StartDay,@PhoneNumber1,@PhoneNumber2,@LicenseID,@Birthday,@LicenseDate,@LicenseExpiredDate,@LicenseType,@CanDriveForkLift,@Name)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@DriverID", TextBoxID.Text);
            com.Parameters.AddWithValue("@StartDay", TextBoxStartDay.Text);
            com.Parameters.AddWithValue("@PhoneNumber1", TextBoxPhoneNumber1.Text);
            com.Parameters.AddWithValue("@PhoneNumber2", TextBoxPhoneNumber2.Text);
            com.Parameters.AddWithValue("@LicenseID", TextBoxLicenseID.Text);
            com.Parameters.AddWithValue("@Birthday", TextBoxBirthday.Text);
            com.Parameters.AddWithValue("@LicenseDate", TextBoxLicenseDate.Text);
            com.Parameters.AddWithValue("@LicenseExpiredDate", TextBoxLicenseExpiredDate.Text);
            com.Parameters.AddWithValue("@LicenseType", TextBoxLicenseType.Text);
            com.Parameters.AddWithValue("@CanDriveForkLift", DropDownListForkLift.SelectedItem.Text);
            com.Parameters.AddWithValue("@Name", TextBoxName.Text);
            com.ExecuteNonQuery();
            Response.Write("Success!!!");
            Response.Redirect("CustomerMaster.aspx");
            conn.Close();
        }
    }
}