using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Bookings : System.Web.UI.Page
{

    clsDBaccess dbobj = new clsDBaccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminEmail"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        if (!this.IsPostBack)
        {
            populateGridview();
        }
    }

    private void populateGridview()
    {
        clsbooking objreg = new clsbooking();
        try
        {
            DataSet ds = objreg.GetDetails();
            // set the datasourec of the Gridview to 
            //dataset table
            GridView1.DataSource = ds.Tables[0];
            //call the databind method
            GridView1.DataBind();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        // get the page no
        int pageindex = e.NewPageIndex;
        try
        {
            //set the page no to gridview
            GridView1.PageIndex = pageindex;
            //refresh
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int updated;
        int rowupdate = e.RowIndex;
        clsbooking obj = new clsbooking();
        try
        {

            obj.BookingID = int.Parse((String)GridView1.Rows[rowupdate].Cells[1].Text);
            obj.Delete();
            obj.CarNo = (String)GridView1.Rows[rowupdate].Cells[5].Text;

            String query = "update tblcar set Booked='" + "NO" + "' where CarNo='" + obj.CarNo + "'";
            updated = dbobj.InsertUpdateDelete(query);


            GridView1.EditIndex = -1;

            //refresh the grid view
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