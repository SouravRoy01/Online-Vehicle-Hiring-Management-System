using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


public partial class DeleteCar : System.Web.UI.Page
{
    clsDBaccess dbobj = new clsDBaccess();
    clscar ob = new clscar();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminEmail"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        bool pagepost = this.IsPostBack;
        if (pagepost == false)
        {
            clscar obj = new clscar();
            String query = "select * from tblcarcat";
            try
            {
                DataSet ds = dbobj.getRecord(query);
                //set the data source of the dropdown list box
                ddlCarCat2.DataSource = ds.Tables[0];
                ddlCarCat2.DataTextField = "CarCatName";//column name whose value we want to see
                ddlCarCat2.DataValueField = "CarCatID";
                ddlCarCat2.DataBind();
                ddlCarCat2.Items.Insert(0, new ListItem("Select", String.Empty));
            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }

        }
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        int c;
        try
        {
            ob.CarNo = txtCarNo.Text;
            c = ob.Delete();
            if (c == 1)
                lblmsg.Text = "Deleted Successfully";
            txtCarNo.Text = "";
            txtCarName.Text = "";
            ddlCarType.Text = "";
            ddlFuelType.Text = "";
            txtDescription.Text = "";
            txtHrlyRate.Text = "";
            txtMinHrs.Text = "";
            Image2.ImageUrl = "";
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void ddlCarCat2_SelectedIndexChanged(object sender, EventArgs e)
    {
        clscar obj = new clscar();
        String query = "select CarNo from tblcar where CarCat='" + ddlCarCat2.Text + "'";
        try
        {
            DataSet ds = dbobj.getRecord(query);
            ddlCarNo.DataSource = ds.Tables[0];
            ddlCarNo.DataTextField = "CarNo";
            ddlCarNo.DataValueField = "CarNo";
            ddlCarNo.DataBind();
            ddlCarNo.Items.Insert(0, new ListItem("Select", String.Empty));
            txtCarNo.Text = null;
            txtCarName.Text = null;
            ddlCarType.Text = null;
            ddlFuelType.Text = null;
            txtDescription.Text = null;
            txtHrlyRate.Text = null;
            txtMinHrs.Text = null;
            Image2.ImageUrl = null;
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        
    }
    protected void ddlCarNo_SelectedIndexChanged(object sender, EventArgs e)
    {
        clscar objreg = new clscar();
        try
        {
            objreg.CarNo = ddlCarNo.SelectedItem.Value;
            DataSet ds = objreg.GetDetailsbyCarNo();
            DataTable dt = ds.Tables[0];
            

            foreach (DataRow dr in dt.Rows)
            {
                
                txtCarNo.Text = dr["CarNo"].ToString();
                txtCarName.Text = dr["CarName"].ToString();
                ddlCarType.SelectedValue = dr["CarType"].ToString();
                ddlFuelType.SelectedValue = dr["FuelType"].ToString();
                txtDescription.Text = dr["Description"].ToString();
                txtHrlyRate.Text = dr["HrlyRate"].ToString();
                txtMinHrs.Text = dr["MinHrs"].ToString();
                String Imagefilename = dr["CarImage"].ToString();
                Image2.ImageUrl = "Upload/" + Imagefilename;
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
}