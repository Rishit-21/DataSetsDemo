using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace DataSetsDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
            con = new SqlConnection("data source=.\\SQLEXPRESS;database=student; integrated security=SSPI");
                SqlDataAdapter sde = new SqlDataAdapter("Select*from studentTbl", con);
                DataSet ds = new DataSet();
                sde.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Open();
            }
            catch(Exception en)
            {
                Response.Write(en.Message);
            }
            finally
            {
                con.Close();
            }

        }

    }
}