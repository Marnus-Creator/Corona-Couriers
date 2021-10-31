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
    public partial class Order : System.Web.UI.Page
    {
        public SqlConnection con;
        public SqlCommand com;
        public DataSet dset;
        public SqlDataAdapter adapt;
        public string connstr = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\StockDB_Relative.mdf; Integrated Security = True";

        decimal Price = 0;
        String Type = "";
        String Name = "";

        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connstr);

            if (!Page.IsPostBack)
            {
                

                string delete_query = "DELETE FROM TableOrder2 ";
                con = new SqlConnection(connstr);
                con.Open();
                com = new SqlCommand(delete_query, con);
                com.ExecuteNonQuery();
                con.Close();
            }

            else
            {
                 SqlCommand myCommand = default(SqlCommand);
                 myCommand = new SqlCommand("SELECT * FROM TableOrder2 ", con);

                 myCommand.Connection.Open();

                 SqlDataReader myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

                 if (myReader.Read() == true)
                 {
                     lblEmptyCart.Visible = false;
                 }
                 else
                 {
                     lblEmptyCart.Visible = true;
                 }
            }
            
            
        }

        public void Insert(string Type, string Name, decimal Price)
        {
            try
            {
                string insert_query = "INSERT INTO TableOrder2 VALUES(@Type,@Name,@Price)";

                con = new SqlConnection(connstr);
                con.Open();

                com = new SqlCommand(insert_query, con);
                com.Parameters.AddWithValue("@Type", Type);
                com.Parameters.AddWithValue("@Name", Name);
                com.Parameters.AddWithValue("@Price", Price);
                com.ExecuteNonQuery();

                con.Close();
            }
            catch
            {
                lblEmptyCart.Text = "Sorry, Cannot add";
            }


        }
        protected void btnRemove_Click(object sender, EventArgs e)
        {
            try
            {
                string delete_query = "DELETE FROM TableOrder2 WHERE ItemID = '" + tbxRemove.Text + "'";
                con = new SqlConnection(connstr);
                con.Open();
                com = new SqlCommand(delete_query, con);
                com.ExecuteNonQuery();
                con.Close();
            }
            catch 
            {
                lblEmptyCart.Text = "Sorry, cannot remove";
            }

            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM TableOrder2";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView2.DataSource = dset;
            GridView2.DataBind();

            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            HttpCookie theCookie = Request.Cookies["LoginCookie"];

            lblFinalOrder.Text = "Thank you " + theCookie["UserName"].ToString() + " for your order. Your invoice has been sent to " + Session["Email"] + ". Your package wil be delivered to " + Session["Address"] + " within 72 hours";
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            
            lblFinalOrder.Text = "";
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM TableOrder2";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView2.DataSource = dset;
            GridView2.DataBind();

            con.Close();
        }

        private void Display()
        {
            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM TableOrder2";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView2.DataSource = dset;
            GridView2.DataBind();

            con.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
                  
            Price = 192;
            Type = "Beer";
            Name = "Black Label";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();


        }
        protected void btnCastleLager_Click(object sender, EventArgs e)
        {
            Price = 216;
            Type = "Beer";
            Name = "Castle Lager";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();

        }
        protected void btnCastleLite_Click(object sender, EventArgs e)
        {
            Price = 192;
            Type = "Beer";
            Name = "Castle Lite";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnWindhoek_Click(object sender, EventArgs e)
        {
            Price = 240;
            Type = "Beer";
            Name = "Windhoek";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnCorona_Click(object sender, EventArgs e)
        {
            Price = 216;
            Type = "Beer";
            Name = "Corona";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnOlof_Click(object sender, EventArgs e)
        {
            Price = 1740;
            Type = "Brandy";
            Name = "Olof";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnRichelieu_Click(object sender, EventArgs e)
        {
            Price = 1860;
            Type = "Brandy";
            Name = "Richelieu";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnKWV5_Click(object sender, EventArgs e)
        {
            Price = 1980;
            Type = "Brandy";
            Name = "KWV5";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnKWV3_Click(object sender, EventArgs e)
        {
            Price = 1740;
            Type = "Brandy";
            Name = "KWV3";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnWellington_Click(object sender, EventArgs e)
        {
            Price = 1700;
            Type = "Brandy";
            Name = "Wellington";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnJohnnieWalker_Click(object sender, EventArgs e)
        {
            Price = 2200;
            Type = "Whisky";
            Name = "Johnnie Walker";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnGlenfiddich_Click(object sender, EventArgs e)
        {
            Price = 1900;
            Type = "Whisky";
            Name = "Glenfiddich";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnJackDaniels_Click(object sender, EventArgs e)
        {
            Price = 2100;
            Type = "Whisky";
            Name = "Jack Daniels";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnJameson_Click(object sender, EventArgs e)
        {
            Price = 2040;
            Type = "Whisky";
            Name = "Jameson";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void btnKilchoman_Click(object sender, EventArgs e)
        {
            Price = 9600;
            Type = "Whisky";
            Name = "Kilchoman 12y";
            //lblEmptyCart.Visible = false;
            Insert(Type, Name, Price);
            Display();
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = Convert.ToInt32(GridView2.SelectedRow.Cells[1].Text);
            try
            {
                string delete_query = "DELETE FROM TableOrder2 WHERE ItemID = '" + index + "'";
                con = new SqlConnection(connstr);
                con.Open();
                com = new SqlCommand(delete_query, con);
                com.ExecuteNonQuery();
                con.Close();
            }
            catch
            {
                lblEmptyCart.Text = "Sorry, cannot remove";
            }

            con = new SqlConnection(connstr);
            con.Open();

            string sql_Stock = "SELECT * FROM TableOrder2";

            dset = new DataSet();
            adapt = new SqlDataAdapter();
            com = new SqlCommand(sql_Stock, con);
            adapt.SelectCommand = com;
            adapt.Fill(dset);

            GridView2.DataSource = dset;
            GridView2.DataBind();

            con.Close();
        }

        protected System.Void Button1_Click(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void GridView2_SelectedIndexChanged(System.Object sender, System.EventArgs e)
        {

        }

        protected System.Void Button2_Click(System.Object sender, System.EventArgs e)
        {

        }
    }
}