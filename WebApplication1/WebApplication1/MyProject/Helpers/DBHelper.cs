using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Diagnostics;
using System.Linq;
using System.Web;
using WebApplication1.Classes;

namespace WebApplication1.Helpers
{
    public static class DBHelper
    {
        public static OleDbConnection connectToDataBase(String filePath)
        {
            OleDbConnection connection = null;
            String connection_String = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + filePath + ";Persist Security Info=False;";
            connection = new OleDbConnection(connection_String);
            if (connection != null)
                return connection;
            else
                return null;

        }

        public static void closeDataBaseConnecton(OleDbConnection connection)
        {
            connection.Close();
        }

        public static void openDataBaseConnecton(OleDbConnection connection)
        {
            connection.Open();
        }


        public static void saveToDataBase(OleDbConnection connection, Person per)
        {
            connection.Open();
            OleDbCommand command = new OleDbCommand();
            command.Connection = connection;

            if (per.GetType() == typeof(customers))
            {
                Debug.WriteLine("Object type of Customers");
                command.CommandText = "insert into CustomersTable (firstName, latName, custamerID, companyName,address,Settlement,mikod) values('"
                     + ((customers)per).getFirstName() + "','" + ((customers)per).getLatName() + "','" + ((customers)per).getCustamerID() + "','" + ((customers)per).getCompanyName() + "','"
                     + ((customers)per).getAddress() + "','" + ((customers)per).getSettlement() + "','" + ((customers)per).getMikod() + "')";

            }
            else if(per.GetType() == typeof(customers))
            {
                Debug.WriteLine("Object type of Drivers");
            }

            command.ExecuteNonQuery();
            connection.Close();

        }

        public List<Person> getAllFromDataBase(OleDbConnection connection, String tableName)
        {
            if (connection.State == ConnectionState.Open)
                connection.Close();
            connection.Open();
            List<Person> list = new List<Person>(); ;
            String command = null;
            if(tableName.Equals("CustomersTable"))
            {
                command = "select * from CustomersTable";
            }
            OleDbDataAdapter da = new OleDbDataAdapter(command, connection);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (tableName.Equals("CustomersTable"))
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    /*customers obj = new customers(dt.Rows[][].ToString);
                    obj = dt.Rows[i][1].ToString();
                    obj.strUserPassword = dt.Rows[i][2].ToString();
                    list.Add(obj);*/
                }
            }
            connection.Close();
            
            return list;
        }
    }
}