using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class InsertData : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string fn = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + fn);
        SqlCommand cmd = new SqlCommand("insert into Item4 values(" + TextBox1.Text + ",'" + TextBox2.Text + "'," + TextBox3.Text + ",'" + FileUpload1.FileName + "')", con);
        int t = cmd.ExecuteNonQuery();
        if (t > 0)
        {
            Response.Write("<script>alert('data has been submitted successfully')</script>");
        }
        con.Close();
    }
}
