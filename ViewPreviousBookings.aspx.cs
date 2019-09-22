using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewPreviousBookings : System.Web.UI.Page
{
    clsbooking ob = new clsbooking();
    clsDBaccess dbobj = new clsDBaccess();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
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
        clsbooking obj = new clsbooking();
        try
        {
            obj.Email = Session["Email"].ToString();
            DataSet ds = obj.GetDetailsbyEmail();
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // get the page no
        int pageindex = e.NewPageIndex;
        //set the page no to gridview
        GridView1.PageIndex = pageindex;
        try
        {
           
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int updated, result;
        int rowupdate = e.RowIndex;
        clsbooking obj = new clsbooking();
        try
        {
            obj.BookingID = int.Parse((String)GridView1.Rows[rowupdate].Cells[1].Text);
            DateTime cdt = DateTime.Now.AddHours(1);
            String[] splitdate= GridView1.Rows[rowupdate].Cells[4].Text.Split('-');
            String[] splittime = GridView1.Rows[rowupdate].Cells[5].Text.Split(':');
           
            DateTime pdt = new DateTime(int.Parse(splitdate[2]), int.Parse(splitdate[1]), int.Parse(splitdate[0]), int.Parse(splittime[0]), int.Parse(splittime[1]), 00);
            result = DateTime.Compare(pdt, cdt);

            if (result > 0)
            {
                obj.Delete();

                obj.CarNo = (String)GridView1.Rows[rowupdate].Cells[2].Text;

                String query = "update tblcar set Booked='" + "NO" + "' where CarNo='" + obj.CarNo + "'";
                updated = dbobj.InsertUpdateDelete(query);

                //remove the edit mode
                GridView1.EditIndex = -1;

                //refresh the grid view
                populateGridview();
            }
            else
                lblmsg.Text="Previous Bookings Cannot Be Cancelled";
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
}