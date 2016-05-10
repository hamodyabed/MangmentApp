using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.MyProject.Classes.Drivers
{
    public partial class DiverMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewCustomer_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddNewDriver.aspx");
        }
    }
}