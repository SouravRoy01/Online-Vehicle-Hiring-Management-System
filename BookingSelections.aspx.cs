using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class BookingSelections : System.Web.UI.Page
{
    clscar ob = new clscar();
    clsDBaccess dbobj = new clsDBaccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        bool pagepost = this.IsPostBack;
        if(pagepost==false )
        {
            clscar obj = new clscar();
            string query = "select * from tblcarcat";
            try
            {
                DataSet ds = dbobj.getRecord(query);
                ddlCarCat.DataSource = ds.Tables[0];
                ddlCarCat.DataTextField = "CarCatName";
                ddlCarCat.DataValueField = "CarCatID";
                ddlCarCat.DataBind();
                ddlCarCat.Items.Insert(0, new ListItem("Select", String.Empty));
                
            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }

        }
    }


    protected void btnproceed_Click(object sender, EventArgs e)
    {
        clsuser objj = new clsuser();
        objj = null;
        String car;
        String query = "select * from tblcar where CarName='" + ddlCarName.Text + "'";
        try
        {
            DataSet ds = dbobj.getRecord(query);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                car = dr["Booked"].ToString();
                if (car.Equals("NO"))
                {
                    Session["CarNo"] = dr["CarNo"].ToString();
                    Session["HrlyRate"] = dr["HrlyRate"].ToString();
                    Session["MinHrs"] = dr["MinHrs"].ToString();
                    
                    Response.Redirect("BookingCar.aspx");

                }
            }
            lblmsg.Text = "Sorry,Car Is Not Available..Try Booking Another Car";

        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

        
    }
    protected void ddlCarCat_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        String query = "select Seater from tblcarcat where CarCatID='" + ddlCarCat.Text + "'";
        try{
        DataSet ds = dbobj.getRecord(query);
        DataTable dt = ds.Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            txtSeater.Text = dr["Seater"].ToString();
        }


        clscar obj = new clscar();
        String query1 = "select CarName from tblcar where CarCat='" + ddlCarCat.Text + "'";
        DataSet ds1 = dbobj.getRecord(query1);
        ddlCarName.DataSource = ds1.Tables[0];
        ddlCarName.DataTextField = "CarName";
        ddlCarName.DataValueField = "CarName";
        ddlCarName.DataBind();
        ddlCarName.Items.Insert(0, new ListItem("Select", String.Empty));
        
        txtMinHrs.Text = null;
        txtHrlyRate.Text = null;
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

 
       
    }
    protected void ddlCarName_SelectedIndexChanged(object sender, EventArgs e)
    {
        String query = "select HrlyRate,MinHrs from tblcar where CarName='" + ddlCarName.Text + "'";
        try
        {
            DataSet ds = dbobj.getRecord(query);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                txtMinHrs.Text = dr["MinHrs"].ToString();
                txtHrlyRate.Text = dr["HrlyRate"].ToString();
            }
            lblmsg.Text = null;
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }


    }
}