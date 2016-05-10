using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.MyProject.Classes.Customers
{
    public partial class AddNewCustomer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            String checkCust = "select count(*) from Customer where CustomerID='" + TxtBoxID.Text + "'";
            SqlCommand com = new SqlCommand(checkCust, conn);
            int tmp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (tmp == 1)
            {
                Response.Write("Customer already Exists");
            }
            conn.Close();
        }

        protected void CustAdd_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["CustomerConnectionString"].ConnectionString);
            conn.Open();
            String insert = "insert into Customer(FirstName, LastName,CustomerID,Company,Address,Mikod) values(@FirstName,@LastName,@CustomerID,@Company,@Address,@Mikod)";
            SqlCommand com = new SqlCommand(insert, conn);
            com.Parameters.AddWithValue("@FirstName", TxtBoxFirstName.Text);
            com.Parameters.AddWithValue("@LastName", TxtBoxLastName.Text);
            com.Parameters.AddWithValue("@CustomerID", TxtBoxID.Text);
            com.Parameters.AddWithValue("@Company", TxtBoxComapny.Text);
            com.Parameters.AddWithValue("@Address", TxtBoxAddress.Text);
            com.Parameters.AddWithValue("@Mikod", TxtBoxMikod.Text);
            com.ExecuteNonQuery();
            Response.Write("Success!!!");
            Response.Redirect("CustomerMaster.aspx");
            conn.Close();
        }
    }
}