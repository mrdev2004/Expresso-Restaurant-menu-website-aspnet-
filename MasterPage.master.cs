using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null) // Check if the user is logged in
        {
            // Hide the Register and Login links
            RegisterLink.Visible = false;
            LoginLink.Visible = false;
            string user = Session["username"].ToString();
            lblWelcome.Text = "Welcome "+user;
            // Show the Logout link
            Button1.Visible = true;
            Button1.Text = "Log Out";
        }
        else
        {
            // Show the Register and Login links
            RegisterLink.Visible = true;
            LoginLink.Visible = true;

            // Hide the Logout link
            Button1.Visible = false;
        }
    }

        protected void LogoutLink_Click(object sender, EventArgs e)
    {
        // Clear the session and redirect to the home page
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Home.aspx");
        }
}

