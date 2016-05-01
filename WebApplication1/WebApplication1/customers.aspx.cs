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

namespace WebApplication1
{
    public partial class customers : System.Web.UI.Page
    {
        DataTable a;
        string connectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
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
            
    }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            GridView1.DataBind();
        }




        protected void GridView1_RowDeleted(object sender, GridViewDeleteEventArgs e)
        {
            //Label label = (Label)GridView1.Rows[e.RowIndex].
            int index = Convert.ToInt32(e.RowIndex);

            string strPersonID = GridView1.Rows[e.RowIndex].Cells[3].Text;

           // DataRow row = 
           // string aa = label.Text;
           /*
            string sql = "select * from customer where שם LIKE '" + TextBox1.Text + "%'";
            SqlDataAdapter adapter = new SqlDataAdapter(sql, connectionString);
            //adapter.SelectCommand = command;
            a = new DataTable();
            adapter.Fill(a);
            GridView1.DataSource = a;
            GridView1.DataBind();*/

            Debug.WriteLine("deelted" + strPersonID);
            // Delete the record 
           // if (e.Exception == null)
           // {
            //}
         
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //Accessing Edited values from the GridView
            string id = ((Label)GridView1.Rows[e.RowIndex].Cells[3].FindControl("LabelID")).Text; //ID
            string employee = ((TextBox)GridView1.Rows[e.RowIndex].Cells[0].FindControl("TextBoxEditEmployee")).Text; //Employee
            string position = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].FindControl("TextBoxEditPosition")).Text; //Position
            string team = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].FindControl("TextBoxEditTeam")).Text; //Team

          //  UpdateRecord(id, employee, position, team); // call update method

            GridView1.EditIndex = -1; //Turn the Grid to read only mode

            //BindGridView(); // Rebind GridView to reflect changes made

            Response.Write("Update Seccessful!");
        }


        protected void TextBox1_TextChanged(object sender, EventArgs e) {
            /*
            if (TextBox1.Text.Equals(""))
            {
                string sql1 = "select * from customer";
                SqlDataAdapter adapter1 = new SqlDataAdapter(sql1, connectionString);
                //adapter.SelectCommand = command;
                a = new DataTable();
                adapter1.Fill(a);
                GridView1.DataSource = a;
                GridView1.DataBind();
            }         */ 
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
