using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Helpers;

namespace WebApplication1.Classes.Cusatmers
{
    public partial class AddNewCustamer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewCust_Click(object sender, EventArgs e)
        {
            customers cust = new customers(CustomerFirstName.Text,CustomerLastName.Text,CustomerID.Text,CustomerCompany.Text,CustomerAddress.Text,"",CustomerMikod.Text);
            DBHelper.saveToDataBase(null,cust);
        }

      
    }
}