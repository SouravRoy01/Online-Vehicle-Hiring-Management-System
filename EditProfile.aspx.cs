using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
public partial class EditProfile : System.Web.UI.Page
{
    clsuser ob = new clsuser();
    clsDBaccess dbobj = new clsDBaccess();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
        ob.Email = Session["Email"].ToString();
        bool pagepost = this.IsPostBack;
        if (pagepost == false)
        {

            try
            {
                DataSet ds = ob.GetDetailsbyEmail();
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    //get the row
                    txtEmail.Text = dr["Email"].ToString();
                    txtName.Text = dr["Name"].ToString();
                    txtAddress.Text = dr["Address"].ToString();
                    txtMobile.Text = dr["Mobile"].ToString();

                    /*String s = dr["Password"].ToString();
                    String s1 = "";
                    int l = s.Length;
                    for (int i = l - 1; i >= 0; i--)
                    {
                        s1 = s1 + (int)s[i];
                    }



                    txtPass.Text = s1;*/
                    String Imagefilename = dr["UserImage"].ToString();
                    Image2.ImageUrl = "Upload/" + Imagefilename;
                }
            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }
        }
    }


    protected void AddDetails()
    {
        try
        {
        String filename = "", filename1 = "", ext;
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

            }
            catch (Exception err)
            {
                lblmsg.Text = err.Message;
            }


        }
    protected void btnEditProfile_Click(object sender, EventArgs e)
    {
        int c,updated;
        try
        {
            AddDetails();
            String query = "update tbluserrecord set Name='" + ob.Name + "',Address='" + ob.Address + "',Mobile='" + ob.Mobile + "',UserImage='" + ob.UserImage + "' where Email='" + ob.Email + "'";
            updated = dbobj.InsertUpdateDelete(query);
         
       
            if (updated == 1)
                Response.Redirect("MyProfile.aspx");
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
}