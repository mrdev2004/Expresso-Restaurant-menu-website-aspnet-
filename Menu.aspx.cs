using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            dlbind();
        }
    }

    public void dlbind()
    {
        string cs = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Item4", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                DataList1.DataSource = dr;
                DataList1.DataBind(); // Bind the data to the DataList
            }
        }
    }
     protected void OrderButton_Click(object sender, EventArgs e)
    {
       Response.Write("<script>alert('Order has been releassed to deliver at your address')</script>");
    }
}
