﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private object maincontinater;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddOrder_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;
            clickedButton.Text = "...button clicked...";
        }

       
    }
}