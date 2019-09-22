using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageHome : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] != null)
        {
            lblWelcomeGuest.Text = "WELCOME "+Session ["Name"].ToString ();
            hlLogin.Text = "LOGOUT";
            hlLogin.NavigateUrl = "LogoutUser.aspx";
            hlHome.Text = "MY PROFILE";
            hlHome.NavigateUrl = "MyProfile.aspx";
        }
        else
        {
            hlLogin.Text = "LOGIN";
            hlLogin.NavigateUrl = "Login.aspx";
            hlHome.Text = "HOME";
            hlHome.NavigateUrl = "HomePage.aspx";
        }
    }
}
