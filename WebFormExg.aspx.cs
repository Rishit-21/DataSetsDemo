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
    public partial class WebFormExg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = null;
            try
            {
                con = new SqlConnection("data source=DESKTOP-DGENJK4\\SQLEXPRESS;database=student; integrated security=SSPI");
                //string query = "insert into student(userName,contactNumber,EmailId) values( 'userNameTxt.text',PhNoTxt.text,'EmailIdTxt.text')";
                SqlCommand sc = new SqlCommand("insert into studentInfo (userName,contactNumber,EmailId) values( '"+ UserNameTxt.Text+"','"+ PhNoTxt.Text + "','"+ EmailIdTxt.Text + "')",con);
                con.Open();
                sc.ExecuteNonQuery();
                DisplayMsg.Text = "Your Record has been inserted";
                SqlCommand scm = new SqlCommand("Select top 1 * from studentInfo", con);
                SqlDataReader sdr = scm.ExecuteReader();
                sdr.Read(); 
                Label1.Text = "User Name:"; Label4.Text = sdr["userName"].ToString();
                Label2.Text = "Phone No:"; Label5.Text = sdr["contactNumber"].ToString();
                Label3.Text = "Email Id:"; Label6.Text = sdr["EmailId"].ToString();

            }
            catch(Exception em)
            {
                DisplayMsg.Text = em.Message;
            }
            finally
            {
                con.Close();
            }
        }
    }
}