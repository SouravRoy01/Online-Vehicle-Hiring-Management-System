using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminCars : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminEmail"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
    }
    protected void btnLoginUser2_Click(object sender, EventArgs e)
    {

    }
    protected void btnViewCar_Click(object sender, EventArgs e)
    {

    }
}