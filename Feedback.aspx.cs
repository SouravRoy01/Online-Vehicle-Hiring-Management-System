using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Feedback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminEmail"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        if (!this.IsPostBack)
        {
            try
            {
                populateGridview();
            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }

        }
    }
    private void populateGridview()
    {
        clsuser objreg = new clsuser();
        try
        {
            DataSet ds = objreg.GetDetails();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageindex = e.NewPageIndex;
        try
        {
           
            GridView1.PageIndex = pageindex;
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}