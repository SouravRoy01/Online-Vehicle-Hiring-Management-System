using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BookedCarDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        if(!this.IsPostBack )
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
        clscar obj = new clscar();
        try
        {

            obj.CarNo = Session["CarNo"].ToString();
            DataSet ds = obj.GetDetailsbyCarNo();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnConfirmBooking_Click(object sender, EventArgs e)
    {

    }
}