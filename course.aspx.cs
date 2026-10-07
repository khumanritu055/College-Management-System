using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq.Expressions;


namespace college_management_system.student
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\project\college management system\college management system\App_Data\college_management.mdf"";Integrated Security=True");
        SqlCommand cmd;
        DataSet ds = new DataSet();
        SqlDataAdapter da= new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            if (!IsPostBack)
            {
                bind();
            }

        }
        void bind()
        {
            try
            {
                string str = "select * from course";
                da = new SqlDataAdapter(str,con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();


            }
            catch(Exception ex)
            {

            }
        }


        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }
    }
}