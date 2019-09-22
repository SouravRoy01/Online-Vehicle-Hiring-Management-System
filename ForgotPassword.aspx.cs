using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ForgotPassword : System.Web.UI.Page
{
    clsuser ob = new clsuser();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["forgot"] != null)
            {
                txtEmail.Text = Session["forgot"].ToString();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            }
        protected void  btnLoginUser_Click(object sender, EventArgs e)
{

}
protected void  btn1_Click(object sender, EventArgs e)
{
    try
    {
        ob.Email = txtEmail.Text;
        DataSet ds = ob.GetDetailsbyEmail();
        DataTable dt = ds.Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            if (dr["Mobile"].ToString() == txtMobile.Text)
            {
                String s1 = dr["Password"].ToString();
                String s2 = "";
                String[] split = s1.Split('?');
                for (int i = split.Length - 1; i >= 0; i--)
                    s2 = s2 + Convert.ToChar(Convert.ToInt32(split[i]));
                lblmsg1.Text = s2;
                lblyourpass.Visible = true;
            }
            else
            {
                lblmsg1.Text = "Invalid Email ID or Mobile Number";
            }
        }
        btnlog.Visible = true;
    }
    catch (Exception err)
    {
        lblmsg.Text = err.Message;
    }


    
  }
}