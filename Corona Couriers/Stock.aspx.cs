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
    public partial class Stock : System.Web.UI.Page
    {
        public SqlConnection conn;
        public SqlCommand comm;
        public DataSet ds;
        public SqlDataAdapter adap;
        public string constr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\StockDB_Relative.mdf; Integrated Security = True";
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable2";
            
            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void btnCheckout1_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignIn.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable2 WHERE Name LIKE '%" + tbxSearch.Text + "%'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void btnBeer_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable2 WHERE Type = 'Beer'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void btnBrandy_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable2 WHERE Type = 'Brandy'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected void btnWhiskey_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(constr);
            conn.Open();

            string sql_Stock = "SELECT * FROM StockTable2 WHERE Type = 'Whisky'";

            ds = new DataSet();
            adap = new SqlDataAdapter();
            comm = new SqlCommand(sql_Stock, conn);
            adap.SelectCommand = comm;
            adap.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();

            conn.Close();
        }

        protected System.Void Page_Load(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void btnSearch_Click(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void btnBeer_Click(System.Object sender, System.EventArgs e)
        {

        }
    }
}