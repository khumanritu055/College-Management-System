using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace college_management_system.student
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project\college management system\college management system\App_Data\college_management.mdf;Integrated Security=True;Encrypt=True");
        SqlCommand cmd;
        DataSet ds = new DataSet();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();


        protected void Page_Load(object sender, EventArgs e)
        {

        }
            
        
        protected void Btn_Login_Click(object sender, EventArgs e)
        {
            if(DropDownList1_su.SelectedValue.ToString()=="student")
            {
                con.Open();
                string str = "select * from Students where username='" + txt_usernam_signin.Text + "' and pass='" + txt_pass_signin.Text + "'";
                da = new SqlDataAdapter(str, con);
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    Response.Redirect("Home.aspx");
                }
                con.Close();
            }
            else if(DropDownList1_su.SelectedValue.ToString()=="User")
            {
                con.Open();
                string str1 = "select * from User Where username='" + txt_usernam_signin.Text + "' and pass='" + txt_pass_signin.Text + "'";
                da = new SqlDataAdapter(str1, con);
                da.Fill(dt);

                if(dt.Rows.Count > 0)
                {
                    Response.Redirect("Home.aspx");
                }
                con.Close();

            }
            else
            {
                Response.Write("<script>alert('check username or password')</script");
            }
        }
            

    }
}