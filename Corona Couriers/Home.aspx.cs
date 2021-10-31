using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Corona_Couriers
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Stock.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

        protected System.Void Page_Load(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void Button1_Click(System.Object sender, System.EventArgs e)
        {

        }
    }
}