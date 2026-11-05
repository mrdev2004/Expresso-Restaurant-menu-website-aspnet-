using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            String user = TextBox1.Text;
            String pass = TextBox2.Text;
            con.Open();
            String qry = "SELECT * FROM Login_2 WHERE username = '" + user + "' AND password ='" + pass + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader srd = cmd.ExecuteReader();
            if (srd.Read())
            {

                Session["username"] = user;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
            }
            srd.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            con.Close();
        }

        try
        {
            String user = TextBox1.Text;
            String pass = TextBox2.Text;
            con.Open();
            String qry = "SELECT * FROM admin WHERE admin_name= '" + user + "' AND admin_pass ='" + pass + "' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader srd = cmd.ExecuteReader();
            if (srd.Read())

            {
                Response.Redirect("Viewitems.aspx");
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
            }
            srd.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }
}
