using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class GiveFeedback : System.Web.UI.Page
{
    clsuser ob = new clsuser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
    }
    protected void btnFeedback_Click(object sender, EventArgs e)
    {
        try
        {
            ob.Email = Session["Email"].ToString();
            ob.Feedback = txtFeedback.Text;
            String query = "Update tbluserrecord set Feedback='" + ob.Feedback + "' where Email='" + ob.Email + "'";
            ob.Update(query, ob.Email);
            txtFeedback.Text = "";
            lblmsg.Text = "Thank You For Your Feedback";
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }


    }
}