using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UserRecords : System.Web.UI.Page
{
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
        clsuser objreg = new clsuser();
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
        try
        {
            int rowupdate = e.RowIndex;
            TextBox txtname = (TextBox)GridView1.Rows[rowupdate].Cells[1].Controls[0];
            TextBox txtaddress = (TextBox)GridView1.Rows[rowupdate].Cells[2].Controls[0];
            TextBox txtmobile = (TextBox)GridView1.Rows[rowupdate].Cells[3].Controls[0];
            String email = (String)GridView1.Rows[rowupdate].Cells[4].Text;
            // String password = (String)GridView1.Rows[rowupdate].Cells[5].Text;
            String query = "update tbluserrecord set Name='" + txtname.Text + "',Address='" + txtaddress.Text + "',Mobile='" + txtmobile.Text + "' where Email='" + email + "'";
            clsuser objreg = new clsuser();
            objreg.Update(query, email);
            //remove the edit mode
            GridView1.EditIndex = -1;
            populateGridview();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowupdate = e.RowIndex;
        String emailid = (String)GridView1.Rows[rowupdate].Cells[4].Text;
        clsuser objreg = new clsuser();
        try
        {
            objreg.Delete(emailid);
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