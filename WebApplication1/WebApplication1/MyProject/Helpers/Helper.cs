using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using WebApplication1.Classes;

namespace WebApplication1
{
    public static class Helper
    {
        public static void Show_Message(Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(Page.GetType(), "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }

        public static void fillGridView(Person pe)
        {
            if(pe.GetType() ==typeof(customers))
            {

            }
        }
    }
}