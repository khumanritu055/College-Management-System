using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using System.Data.OleDb;
using System.Data.SqlClient;
using System.IO;

namespace college_management_system.student
{

    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""D:\project\college management system\college management system\App_Data\college_management.mdf"";Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind();
            }
            void bind()
            {
                string str = "select * from faculty";
                da = new SqlDataAdapter(str, con);
                da.Fill(ds);

                GridView1.DataSource = ds;
                GridView1.DataBind();

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}