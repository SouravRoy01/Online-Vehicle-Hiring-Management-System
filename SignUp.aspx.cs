using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;
using System.IO;

public partial class SignUp : System.Web.UI.Page
{
    clsuser ob = new clsuser();

    protected void Page_Load(object sender, EventArgs e)
    {

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
                    ob.UserImage = filename;
                }
                else
                {
                    lblmsg.Text = "File format should be .jpg or .bmp or .png, ";
                }
            }

            ob.Name = txtName.Text;
            ob.Address = txtAddress.Text;
            ob.Mobile = txtMobile.Text;
            ob.Email = txtEmail.Text;
            String s = txtPassword.Text;
            String s1 = "";
            int l = s.Length;
            for (int i = l - 1; i >= 0; i--)
            {
                if (i > 0)
                    s1 = s1 + (int)s[i] + "?";
                else
                    s1 = s1 + (int)s[i];
            }
            ob.Password = s1;

        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }




    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int c;
        try
        {
            AddDetails();
            ob.Feedback = null;
            c = ob.Insert();
            if (c == 1)
            {
                Response.Redirect("UserLogin.aspx");
            }
            else
                lblmsg.Text += "Email ID Already Exists";
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }


    }
    protected void txtMobile_TextChanged(object sender, EventArgs e)
    {

    }
}