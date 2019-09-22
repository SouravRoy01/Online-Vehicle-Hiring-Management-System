using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class AddCar : System.Web.UI.Page
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
                //set the data source of the dropdown list box
                ddlCarCat.DataSource = ds.Tables[0];
                ddlCarCat.DataTextField = "CarCatName";//column name whose value we want to see
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
    protected void AddDetails()
    {
        String filename = "", filename1 = "", ext = "";
        int pos;
        try
        {
            if (FileUpload1.HasFile)
            {
                lblmsg.Text = "";

                filename1 = Path.GetFileName(FileUpload1.PostedFile.FileName);


                ext = Path.GetExtension(FileUpload1.PostedFile.FileName);
                if (ext.Equals(".jpg") || ext.Equals(".bmp") || ext.Equals(".png"))
                {

                    pos = filename1.LastIndexOf('.');
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
            ob.CarCatName = ddlCarCat.SelectedValue;
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        


    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            AddDetails();
            int c = ob.Insert();
            if (c == 1)
                lblmsg.Text += "Car Inserted Successfully";
            else
                lblmsg.Text += "Car Number Already Exists";
            txtCarNo.Text=null;
            txtCarName.Text=null;
            ddlCarType.Text=null;
            ddlFuelType.Text=null;
            txtDescription.Text=null;
            txtHrlyRate.Text=null;
            txtMinHrs.Text=null;
            
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        
    }
}