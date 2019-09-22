using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class UpdateCar : System.Web.UI.Page
{
    clscar ob = new clscar();
    clsDBaccess dbobj = new clsDBaccess();

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
                ddlCarCat1.DataSource = ds.Tables[0];
                ddlCarCat1.DataTextField = "CarCatName";
                ddlCarCat1.DataValueField = "CarCatID";
                ddlCarCat1.DataBind();
                ddlCarCat1.Items.Insert(0, new ListItem("Select", String.Empty));

            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }


           }
    }
    protected void AddDetails()
    {
        String filename = "", filename1 = "", ext = "";
        try
        {
            if (FileUpload1.HasFile)
            {
                lblmsg.Text = "";

                filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);


                ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                if (ext.Equals(".jpg") || ext.Equals(".bmp") || ext.Equals(".png"))
                {

                    int pos = filename1.LastIndexOf('.');
                    filename1 = filename1.Substring(0, pos);
                    filename = filename1 + DateTime.Now.Ticks.ToString() + ext;

                    String serverpath = Server.MapPath("upload");
                    FileUpload1.PostedFile.SaveAs(serverpath + "\\" + filename);
                    ob.CarImage = filename;
                }
                else
                {
                    lblmsg.Text = "File format should be .jpg or .bmp or .png, ";
                }
            }

            ob.CarNo = txtCarNo.Text;
            ob.CarName = txtCarName.Text;
            ob.CarType = ddlCarType.Text;
            ob.FuelType = ddlFuelType.Text;
            ob.Description = txtDescription.Text;
            ob.HrlyRate = int.Parse(txtHrlyRate.Text);
            ob.MinHrs = int.Parse(txtMinHrs.Text);
            ob.CarCatName = ddlCarCat1.SelectedValue;

        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    
    protected void ddlCarCat1_SelectedIndexChanged(object sender, EventArgs e)
    {
       



        clscar obj = new clscar();
        String query = "select CarNo from tblcar where CarCat='" + ddlCarCat1.Text + "'";
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

        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }


    }
    protected void ddlCarNo_SelectedIndexChanged(object sender, EventArgs e)
    {

        clscar objreg = new clscar(); txtCarName.Enabled = true;
        try
        {
            txtDescription.Enabled = true;
            ddlCarType.Enabled = true;
            ddlFuelType.Enabled = true;
            txtHrlyRate.Enabled = true;
            txtMinHrs.Enabled = true;
            FileUpload1.Enabled = true;

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
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        try
        {
            AddDetails();
            int c = ob.Update();
            if (c == 1)
                lblmsg.Text = "Car Updated Successfully";
            txtCarNo.Text = null;
            txtCarName.Text = null;
            ddlCarType.Text =null;
            ddlFuelType.Text =null;
            txtDescription.Text =null;
            txtHrlyRate.Text = null;
            txtMinHrs.Text = null;
            Image2.ImageUrl = null;
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
}