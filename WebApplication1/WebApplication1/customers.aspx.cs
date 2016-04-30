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
        DataTable a;
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlCommand command;
            string sql = null;

             connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=D:\\Managment\\WebApplication1\\WebApplication1\\App_Data\\mysql.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlDataReader dataReader;

            try
            {
                connection.Open();
                sql = "select * from customer";
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
                a = new DataTable();
                adapter.Fill(a);
                GridView1.DataSource = a;
                GridView1.DataBind();

                command.Dispose();
                connection.Close();


            }
            finally
            {

            }
    }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {
            Debug.WriteLine("***");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e) {            
            string sql = "select * from customer where שם LIKE '"+ TextBox1.Text + "%'"  ;
            SqlDataAdapter adapter = new SqlDataAdapter(sql,connectionString);
            //adapter.SelectCommand = command;
            a = new DataTable();
            adapter.Fill(a);
            GridView1.DataSource = a;
            GridView1.DataBind();
           

        }
        
    }


    }
