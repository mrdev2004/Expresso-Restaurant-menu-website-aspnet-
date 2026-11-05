using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            String name = txtName.Text;
            String email = txtEmail.Text;
            String message =txtMessage.Text;
        

            con.Open();

            String qry = "INSERT INTO contact  VALUES ('" + name + "', '" + email + "', '" + message+ "')";

            SqlCommand cmd = new SqlCommand(qry, con);


            int rowsAffected = cmd.ExecuteNonQuery();

            if (rowsAffected > 0)
            {
               Response.Write("<script>alert('Your response has been stored')</script>");

            }
            else
            {
               Response.Write("<script>alert('There is some error in storing response)</script>");
            }





        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
        finally
        {
            con.Close();
        }
    }
  
}