using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindStateDropDownList();
        }
    }

    private void BindStateDropDownList()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM state1", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "sname";
            DropDownList1.DataValueField = "sid";
            DropDownList1.DataBind();

            // Optional: Add a default item
        }
        catch (Exception ex)
        {
            // Handle exception
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            con.Close();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(DropDownList1.SelectedValue);
        Response.Write(sid);
        BindCityDropDownList(sid);
    }

    private void BindCityDropDownList(int stateId)
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM city1 WHERE sid = @sid", con);
            cmd.Parameters.AddWithValue("@sid", stateId);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "cname";
            DropDownList2.DataValueField = "cid";
            DropDownList2.DataBind();

            // Optional: Add a default item
        }
        catch (Exception ex)
        {
            // Handle exception
            Response.Write("Error: " + ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {try
        {
            String id = TextBox10.Text;
            String fname = TextBox1.Text;
            String lname = TextBox2.Text;
            String user = TextBox3.Text;
            String pass = TextBox4.Text;
            String state = DropDownList1.SelectedValue;
            String city = DropDownList2.SelectedValue;
            String address = TextBox7.Text;
            String email = TextBox8.Text;
            String phno = TextBox9.Text;

            con.Open();

            String qry = "INSERT INTO Login_2  VALUES ("+id+", '"+fname+"', '"+lname+"', '"+user+"', '"+pass+"', '"+state+"', '"+city+"', '"+address+"', '"+email+"', '"+phno+"')";

             SqlCommand cmd = new SqlCommand(qry, con);
            
               
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    Label1.Visible = true;  
                    Response.Redirect("Login.aspx");
               
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text="Registartion Fail";
                }
            
            
        

        
    }
        catch(Exception ex){
            Response.Write(ex.Message);
        
        }
        finally{
            con.Close();
    }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}