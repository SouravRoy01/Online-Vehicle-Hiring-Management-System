using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{
    clsDBaccess dbobj = new clsDBaccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        clsuser obj = new clsuser();
        String s = txtPass.Text;
        String s1 = "", query = "";
        int l = s.Length;

        try
        {
            obj.Email = txtEmail.Text;

            for (int i = l - 1; i >= 0; i--)
            {
                if (i > 0)
                    s1 = s1 + (int)s[i] + "?";
                else
                    s1 = s1 + (int)s[i];

            }
            obj.Password = s1;


            query = "select * from tbladmin where AdminEmail='" + obj.Email + "' and AdminPassword='" + obj.Password + "'";
            DataSet ds = obj.GetDetailsbyEmail(query);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count == 1)
            {
                Session["AdminEmail"] = txtEmail.Text;
                Response.Redirect("HomePageAdmin.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Email ID or Password";
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        

    }
}