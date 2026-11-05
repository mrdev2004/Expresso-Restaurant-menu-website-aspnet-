using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Viewitems : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getData();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void Gridview1_editing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        getData();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        getData();
    }

    public void getData()
    {
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from Item4", con);
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
        finally
        {
            con.Close();
        }
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = GridView1.Rows[e.RowIndex];
            TextBox txtIname = row.Cells[1].Controls[0] as TextBox;
            TextBox txtIprice = row.Cells[2].Controls[0] as TextBox;

            if (txtIname == null || txtIprice == null)
            {
                Response.Write("<script>alert('One or more TextBox controls not found.')</script>");
                return;
            }

            string iname = txtIname.Text;
            string iprice = txtIprice.Text;

            con.Open();
            string query = "UPDATE Item4 SET item_name=@iname, item_price=@iprice WHERE Item_id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@iname", iname);
            cmd.Parameters.AddWithValue("@iprice", iprice);

            int t = cmd.ExecuteNonQuery();
            con.Close();

            if (t > 0)
            {
                Response.Write("<script>alert('Data has been updated')</script>");
                GridView1.EditIndex = -1;
                getData();
            }
            else
            {
                Response.Write("<script>alert('No rows were updated.')</script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        try
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            GridViewRow row = GridView1.Rows[e.RowIndex];
       
            con.Open();
            string query = "delete from Item4  WHERE Item_id=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            
            int t = cmd.ExecuteNonQuery();
            con.Close();

            if (t > 0)
            {
                Response.Write("<script>alert('Data has been deleted')</script>");
                GridView1.EditIndex = -1;
                getData();
            }
        
        }
        catch (Exception ex)
        {
            Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
        }
        finally
        {
            con.Close();
        }
    }
}
