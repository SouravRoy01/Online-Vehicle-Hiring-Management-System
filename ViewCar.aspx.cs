using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ViewCar : System.Web.UI.Page
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
        clscar objreg = new clscar();
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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        // get the page no
        int pageindex = e.NewPageIndex;
        //set the page no to gridview
        try
        {
            GridView1.PageIndex = pageindex;
            //refresh
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //get the row no to edit
        int editrow = e.NewEditIndex;
        try
        {
            //set the row to edit mode
            GridView1.EditIndex = editrow;
            //call the populategridview function to 
            //refresh the gridview
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        clsDBaccess dbobj = new clsDBaccess();
        try
        {
            int rowupdate = e.RowIndex;
            String txtCarNo = (String)GridView1.Rows[rowupdate].Cells[1].Text;
            //TextBox txtCarCat = (TextBox)GridView1.Rows[rowupdate].Cells[2].Controls[0];
           /* TextBox txtCarName = (TextBox)GridView1.Rows[rowupdate].Cells[3].Controls[0];

            TextBox txtCarType = (TextBox)GridView1.Rows[rowupdate].Cells[4].Controls[0];
            TextBox txtFuelType = (TextBox)GridView1.Rows[rowupdate].Cells[5].Controls[0];
            TextBox txtDescription = (TextBox)GridView1.Rows[rowupdate].Cells[6].Controls[0];
            TextBox txtHrlyRate = (TextBox)GridView1.Rows[rowupdate].Cells[7].Controls[0];
            TextBox txtMinHrs = (TextBox)GridView1.Rows[rowupdate].Cells[8].Controls[0];*/
            
            TextBox txtbooked = (TextBox)GridView1.Rows[rowupdate].Cells[9].Controls[0];
            // String password = (String)GridView1.Rows[rowupdate].Cells[5].Text;
            String query = "update tblcar set Booked='"+ txtbooked.Text +"' where CarNo='" + txtCarNo+ "'";

            dbobj.InsertUpdateDelete(query);
           
            //remove the edit mode
            GridView1.EditIndex = -1;
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
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