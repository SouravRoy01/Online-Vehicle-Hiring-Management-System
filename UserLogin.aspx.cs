using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data ;

public partial class UserLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        clsuser obj = new clsuser();
        String s = "", s1 = "", query;
        try
        {
            obj.Email = txtEmail.Text;
            s = txtPass.Text;
            s1 = "";
            int l = s.Length;
            for (int i = l - 1; i >= 0; i--)
            {
                if (i > 0)
                    s1 = s1 + (int)s[i] + "?";
                else
                    s1 = s1 + (int)s[i];

            }
            obj.Password = s1;


            query = "select * from tbluserrecord where Email='" + obj.Email + "' and Password='" + obj.Password + "'";
            DataSet ds = obj.GetDetailsbyEmail(query);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count == 1)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    
                    Session["Name"] = dr["Name"].ToString();
                    Session["Mobile"] = dr["Mobile"].ToString();
                    
                }

                Session["Email"] = obj.Email;
                Session["Password"] = obj.Password;
                Response.Redirect("UserHomePage.aspx");
            }
            else
            {
                lblmsg.Text = "Invalid Email or Password";
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["forgot"] = txtEmail.Text;
        Response.Redirect("ForgotPassword.aspx");
    }
}