using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChangeUserPass : System.Web.UI.Page
{
    clsuser ob = new clsuser();
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        if (!IsPostBack)
        {
            lblmsg0.Text = "";
            lblmsg.Text = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void btnLoginUser_Click(object sender, EventArgs e)
    {
        String p = txtPass.Text;
        String p1 = "";
        int l = p.Length;
        int i;
        try
        {
            for (i = l - 1; i >= 0; i--)
            {

                if (i > 0)
                    p1 = p1 + (int)p[i] + "?";
                else
                    p1 = p1 + (int)p[i];

            }
            if (p1 == Session["Password"].ToString())
            {
                txtPass1.Enabled = true;
                txtPass2.Enabled = true;
                rfvpass1.Enabled = true;
                rfvpass2.Enabled = true;
                rfvpass.Enabled = false;
                txtPass.Enabled = false;
                lblmsg0.Text = "";
            }
            else
            {
                lblmsg0.Text = "Incorrect Password";
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        ob.Email = Session["Email"].ToString();
        String s = txtPass1.Text;
        String s1 = "";
        int l = s.Length;
        int i;
        try
        {
            for (i = l - 1; i >= 0; i--)
            {
                if (i > 0)
                    s1 = s1 + (int)s[i] + "?";
                else
                    s1 = s1 + (int)s[i];
            }
            ob.Password = s1;

            {
                String query = "update tbluserrecord set Password='" + ob.Password + "' where Email='" + ob.Email + "'";
                ob.Update(query, ob.Email);
                lblmsg.Text = "PASSWORD Updated Successfully";
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
       
    }
    protected void txtPass_TextChanged(object sender, EventArgs e)
    {

    }
}