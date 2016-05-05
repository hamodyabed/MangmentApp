using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Classes;

namespace WebApplication1
{
    public partial class customers : Person
    {
        private String firstName = null;
        private String latName = null;
        private String custamerID = null;
        private String companyName = null;
        private String address = null;
        private String Settlement = null;
        private String mikod = null;

        public customers(String firstName, String latName, String custamerID, String companyName, String address, String Settlement, String Mikod)
        {
            this.firstName = firstName;
            this.latName = latName;
            this.custamerID = custamerID;
            this.companyName = companyName;
            this.address = address;
            this.Settlement = Settlement;
            this.mikod = Mikod;
        }

        public String getMikod()
        {
            return mikod;
        }

        public void setMikod(String Mikod)
        {
            this.mikod = Mikod;
        }


        public String getSettlement()
        {
            return Settlement;
        }

        public void setSettlement(String Settlement)
        {
            this.Settlement = Settlement;
        }


        public String getAddress()
        {
            return address;
        }

        public void setAddress(String address)
        {
            this.address = address;
        }



        public String getCompanyName()
        {
            return companyName;
        }

        public void setCompanyName(String companyName)
        {
            this.companyName = companyName;
        }


        public String getCustamerID()
        {
            return custamerID;
        }

        public void setCustamerID(String custamerID)
        {
            this.custamerID = custamerID;
        }


        public String getLatName()
        {
            return latName;
        }

        public void setLatName(String latName)
        {
            this.latName = latName;
        }

        public String getFirstName()
        {
            return firstName;
        }

        public void setFirstName(String firstName)
        {
            this.firstName = firstName;
        }
        DataTable a;
        string connectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

          /*  if (Session["NewCustomer"] != null)
            {
                customers newCustomer = (customers)Session["NewCustomer"];
                Helper.Show_Message(Page, newCustomer.getCustamerID());
            }*/

            /*  SqlCommand command;
              string sql = null;

              connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Managment\\WebApplication1\\WebApplication1\\App_Data\\mysql.mdf;Integrated Security=True;Connect Timeout=30";
              SqlConnection connection = new SqlConnection(connectionString);
              SqlDataReader dataReader;

              try
              {
                  connection.Open();
                  sql = "select * from customer";
                  command = new SqlCommand(sql, connection);

                  dataReader = command.ExecuteReader();
                  while (dataReader.Read())
                  {
                      //Debug.WriteLine("!!!!!." + dataReader.GetValue(1));

                      Debug.WriteLine(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));

                  }

                  command.ExecuteNonQuery();
                  SqlDataAdapter adapter = new SqlDataAdapter();
                  adapter.SelectCommand = command;
                  a = new DataTable();
                  adapter.Fill(a);
                  GridView1.DataSource = a;
                  GridView1.DataBind();

                  command.Dispose();
                  connection.Close();


              }

              finally
              {

              }*/


        }











        protected void CustSerch_Click(object sender, EventArgs e)
        {
            Helper.Show_Message(this.Page, CustDropDownSearch.SelectedItem.Text + CustSearchTextBox.Text);
        }

        protected void CustAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewCustamer.aspx");
        }
    }


}
