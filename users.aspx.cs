using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class users : System.Web.UI.Page
{
        
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Login_2", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally { con.Close(); }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}