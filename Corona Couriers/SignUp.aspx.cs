using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Corona_Couriers
{
    public partial class SignUp : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\StockDB_Relative.mdf; Integrated Security = True";

        String Password = "";
        String Name = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        public void Insert(string Name, string Password)
        {
            try
            {
                string insert_query = "INSERT INTO LoginTable3 VALUES(@Name,@Password)";

                con = new SqlConnection(connstr);
                con.Open();

                com = new SqlCommand(insert_query, con);
                com.Parameters.AddWithValue("@Name", Name);
                com.Parameters.AddWithValue("@Password", Password);
                com.ExecuteNonQuery();

                con.Close();
            }
            catch
            {
                lblError.Text = "Sorry, Cannot sign up";
            }


        }
        protected void tbxConfirm_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void tbxUsername_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Password = tbxPasswordSU.Text;
            Name = tbxUsernameSU.Text;
            
            Insert(Name, Password);


            Response.Redirect("SignIn.aspx");
        }

            protected void btnCheckout2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }
    }
}