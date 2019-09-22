using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddCarCat : System.Web.UI.Page
{
    clscar ob = new clscar();
    clsDBaccess dbobj = new clsDBaccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminEmail"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
       
    }
    protected void txtCatName_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void txtSeater_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnSubmitCat_Click(object sender, EventArgs e)
    {
        int c = 0;

        ob.CarCatName = txtCarCatName.Text;
        Boolean flag = false;
        String query = "insert into tblcarcat values('" + ob.CarCatName + "','" + txtSeater .Text +"')";
        String query1 = "select CarCatName from tblcarcat where CarCatName='" + ob.CarCatName + "'";
        try
        {

            flag = dbobj.CheckDuplicate(query1);
            if (flag == false)
            {
                c = dbobj.InsertUpdateDelete(query);
            }
            if (c == 1)
                lblmsg.Text = "Car Inserted Successfully";
            else
                lblmsg.Text = "Car Category Already Exists";
            txtCarCatName.Text = "";
            txtSeater.Text = "";
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        
     
    }
}