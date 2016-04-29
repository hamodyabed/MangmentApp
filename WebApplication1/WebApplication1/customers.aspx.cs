using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class customers : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {


            SqlCommand command;
            string sql = null;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Managment\\WebApplication1\\WebApplication1\\App_Data\\mysql.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataReader dataReader;

            try
            {
                connection.Open();
                sql = "select * from  customer";
                command = new SqlCommand(sql, connection);
                /*
                dataReader = command.ExecuteReader();
                while (dataReader.Read())
                {
                    //Debug.WriteLine("!!!!!." + dataReader.GetValue(1));

                    Debug.WriteLine(dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2));

                }*/

                command.ExecuteNonQuery();

                SqlDataAdapter adapter = new SqlDataAdapter();
                adapter.SelectCommand = command;
                DataTable a = new DataTable();
                adapter.Fill(a);

               // BindingSource bSource = new BindingSource();
                GridView1.DataSource = a;
                GridView1.DataBind();

                //dataReader.Close();
                command.Dispose();
                connection.Close();


            }
            finally
            {

            }
    }
    }
}