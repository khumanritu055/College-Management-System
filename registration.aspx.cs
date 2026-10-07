using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace college_management_system.student
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\project\college management system\college management system\App_Data\college_management.mdf"";Integrated Security=True;");
        SqlCommand cmd;

        int id1 = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            panel2.Visible = false;

            if (!IsPostBack)
            {
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter("Select max(sId) as sId from students", con);
                DataSet ds = new DataSet();
                da.Fill(ds);

                id1 = 1;

                if (ds.Tables[0].Rows[0]["sId"] != DBNull.Value)
                {
                    id1 = Convert.ToInt32(ds.Tables[0].Rows[0]["sId"]) + 1;
                }

                Label1.Text = id1.ToString();
                con.Close();
            }
        }

        // This method must be named exactly as in the ASPX OnClick attribute
        protected void Linkbutton_other_Click1(object sender, EventArgs e)
        {
            panel2.Visible = true;
            Panel1.Visible = false;
        }
        protected void btn_students_submit_Click(object sender, EventArgs e)
        {
            
        }

        protected void btn_other_submit_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            panel2.Visible = false;
            // Add your code here for other submit if needed
        }

        protected void btn_students_Submit_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            panel2.Visible = false;

            try
            {
                con.Open();

                string query = "INSERT INTO students VALUES (@sId, @fname, @lname, @gender, @mobile, @email, @username, @password, @dob, @course, @year)";
                cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@sId", Convert.ToInt32(Label1.Text));
                cmd.Parameters.AddWithValue("@fname", txt_rg_firstname.Text);
                cmd.Parameters.AddWithValue("@lname", txt_rg_lastname.Text);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList_gender.SelectedValue);
                cmd.Parameters.AddWithValue("@mobile", txt_rg_mobile.Text);
                cmd.Parameters.AddWithValue("@email", txt_rg_email.Text);
                cmd.Parameters.AddWithValue("@username", txt_rg_uname.Text);
                cmd.Parameters.AddWithValue("@password", txt_rg_pas.Text);
                cmd.Parameters.AddWithValue("@dob", txt_rg_dates.Text);
                cmd.Parameters.AddWithValue("@course", DropDownList1_course.SelectedValue);
                cmd.Parameters.AddWithValue("@year", txt_rg_year.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Registration Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
    }
}

