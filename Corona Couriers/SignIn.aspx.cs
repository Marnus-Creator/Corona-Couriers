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
    public partial class HomePage : System.Web.UI.Page
    {

        public SqlConnection conn;
        public DataSet ds;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\StockDB_Relative.mdf; Integrated Security = True";

        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            Session["Email"] = null;
            Session["Address"] = null;
        }

        protected void btnCheckout1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Order.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            Session["Email"] = tbxEmailSI.Text;
            Session["Address"] = tbxAddressSI.Text;

            string username = tbxUsernameSI.Text;
            string password = tbxPasswordSI.Text;

            try
            {


                SqlCommand myCommand = default(SqlCommand);
                conn = new SqlConnection(connstr);
                myCommand = new SqlCommand("SELECT Name,Password FROM LoginTable3 WHERE Name = @UserName AND Password = @Password", conn);

                SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar);
                SqlParameter userPassword = new SqlParameter("@Password", SqlDbType.VarChar);

                userName.Value = tbxUsernameSI.Text;
                userPassword.Value = tbxPasswordSI.Text;

                myCommand.Parameters.Add(userName);
                myCommand.Parameters.Add(userPassword);

                myCommand.Connection.Open();

                SqlDataReader myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                if (myReader.Read() == true)
                {
                    HttpCookie theCookie = new HttpCookie("LoginCookie");
                    theCookie["UserName"] = myReader.GetString(0);

                    if(cbxRemberMe.Checked)
                    {
                        theCookie.Expires = DateTime.Now.AddMonths(6);
                    }
                    Response.Cookies.Add(theCookie);
                    Response.Redirect("Order.aspx");
                }
                else
                {
                    lblError.Text = "User not found";

                }
                if (conn.State == ConnectionState.Open)
                {
                    conn.Dispose();
                }
            }
            catch (SqlException error)
            {
                lblError.Text = error.Message;
            }
        }
            


        

        protected void cbxRemberMe_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}