using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ConfirmBooking : System.Web.UI.Page
{
    clsbooking ob = new clsbooking();
    clsDBaccess dbobj = new clsDBaccess();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
        try
        {
            ob.Mobile = lblmsg2.Text = Session["Mobile"].ToString();
            ob.PDate = lblmsg4.Text = Session["PDate"].ToString();
            ob.PTime = lblmsg5.Text = Session["PTime"].ToString();
            ob.PLocation = lblmsg6.Text = Session["PLocation"].ToString();
            ob.DDate = lblmsg7.Text = Session["DDate"].ToString();
            ob.DTime = lblmsg8.Text = Session["DTime"].ToString();
            ob.CarNo = lblmsg3.Text = Session["CarNo"].ToString();
            ob.Email = lblmsg1.Text = Session["Email"].ToString();
            ob.Name = lblmsg0.Text = Session["Name"].ToString();
            ob.Amount = lblmsg10.Text = Session["Amount"].ToString();
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void btnBook_Click(object sender, EventArgs e)
    {
        ob.BDateTime = DateTime.Now.ToString("dd/MM/yyyy");
        int inserted, updated;
        try
        {
            inserted = ob.Insert();
            String query = "update tblcar set Booked='" + "YES" + "' where CarNo='" + ob.CarNo + "'";
            updated = dbobj.InsertUpdateDelete(query);
            Response.Redirect("BookedSuccessfully.aspx");
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
}