using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class MyProfile : System.Web.UI.Page
{
    clsuser ob = new clsuser();
    clsDBaccess dbobj = new clsDBaccess();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
        try
        {
            ob.Email = Session["Email"].ToString();
            bool pagepost = this.IsPostBack;
            if (pagepost == false)
            {


                DataSet ds = ob.GetDetailsbyEmail();
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    //get the row
                    lblEmail.Text = dr["Email"].ToString();
                    lblName.Text = dr["Name"].ToString();
                    lblAddress.Text = dr["Address"].ToString();
                    lblMobile.Text = dr["Mobile"].ToString();
                    String Imagefilename = dr["UserImage"].ToString();
                    Image2.ImageUrl = "Upload/" + Imagefilename;
                }
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
    protected void btnPreviousBookings0_Click(object sender, EventArgs e)
    {

    }
    protected void btnUpdateProfile_Click(object sender, EventArgs e)
    {

    }
    protected void btnGiveFeedback_Click(object sender, EventArgs e)
    {

    }
    protected void btnBookMyCa_Click(object sender, EventArgs e)
    {

    }
}