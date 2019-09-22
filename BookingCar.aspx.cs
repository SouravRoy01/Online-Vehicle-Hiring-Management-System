using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BookingCar : System.Web.UI.Page
{
    String PDate, DDate, TDate;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Email"] == null)
        {
            Response.Redirect("HomePage.aspx");
        }
        lblmsg0.Text = "";
        lblmsg.Text = "";
       
    }
    protected void txtpuYear_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnLoginUser_Click(object sender, EventArgs e)
    {
        int days, hours, amount, result, result1;


        try
        {
            DateTime c1dt = DateTime.Now;
            DateTime cdt = DateTime.Now.AddHours(1);
            DateTime pdt = new DateTime(int.Parse(txty1.Text), int.Parse(txtm1.Text), int.Parse(txtd1.Text), int.Parse(ddlh1.Text), int.Parse(ddlm1.Text), 00);

            result = DateTime.Compare(pdt, cdt);
            result1 = DateTime.Compare(pdt, c1dt);

            if (result > 0)
            {
                if ((int.Parse(txtd1.Text) == int.Parse(txtd2.Text)) && (int.Parse(txtm1.Text) == int.Parse(txtm2.Text)))
                {
                    hours = int.Parse(ddlh2.Text) - int.Parse(ddlh1.Text);
                }
                else
                {
                    if (int.Parse(txty2.Text) == int.Parse(txty1.Text))
                        days = 31 - int.Parse(txtd1.Text) + int.Parse(txtd2.Text) - 1 + (Math.Abs(int.Parse(txtm2.Text) - int.Parse(txtm1.Text)) - 1) * 31;
                    else
                        days = 31 - int.Parse(txtd1.Text) + int.Parse(txtd2.Text) - 1;
                    hours = 24 - int.Parse(ddlh1.Text) + int.Parse(ddlh2.Text) + (days * 24);
                }


                if ((Math.Abs(int.Parse(ddlm2.Text))) - (Math.Abs(int.Parse(ddlm1.Text))) == 30)
                {
                    hours += 1;
                }

                lblmsg.Text = hours.ToString();
                if (hours <= 0)
                    lblmsg.Text = "We Cannot Drop You, Until We Pick You Up";
                else
                {
                    int minhrs = int.Parse(Session["MinHrs"].ToString());
                    int rate = int.Parse(Session["HrlyRate"].ToString());
                    if (hours > minhrs)
                        amount = hours * rate;
                    else
                        amount = minhrs * rate;



                    //Session["BDateTime"] = DateTime.Now.ToString("dd/MM/yyyy");
                    Session["PDate"] = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
                    Session["PTime"] = ddlh1.Text + ":" + ddlm1.Text;
                    Session["PLocation"] = txtLocation.Text;
                    Session["DDate"] = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
                    Session["DTime"] = ddlh2.Text + ":" + ddlm2.Text;
                    Session["Amount"] = amount;

                    Response.Redirect("BookedCarDetails.aspx");
                }

            }
            else
            {
                if (result1 > 0)
                {
                    lblmsg0.Text = "Sorry, Car Needs To Be Booked An Hour Before Pick-Up Time";
                }
                else
                {
                    lblmsg0.Text = "Sorry, We Cannot Pick You Up From Past";
                }
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
        
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        String[] split2;
        try
        {

            DDate = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
            split2 = DDate.Split('-');
            txtd2.Text = split2[0];
            txtm2.Text = split2[1];
            txty2.Text = split2[2];

            if (int.Parse(txty2.Text) > int.Parse(txty1.Text))
            {
                cvday.Enabled = false;
                cvmonth.Enabled = false;
            }
            if (int.Parse(txtm2.Text) > int.Parse(txtm1.Text))
            {
                cvday.Enabled = false;
            }
        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }
       
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        String[] split1;
        try
        {
            PDate = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            split1 = PDate.Split('-');
            txtd1.Text = split1[0];
            txtm1.Text = split1[1];
            txty1.Text = split1[2];


            TDate = DateTime.Now.ToString("dd/MM/yyyy");
            String[] split3 = TDate.Split('-');
            txtd3.Text = split3[0];
            txtm3.Text = split3[1];
            txty3.Text = split3[2];




            if (int.Parse(txty1.Text) > int.Parse(txty3.Text))
            {
                cvday0.Enabled = false;
                cvmonth0.Enabled = false;
            }
            if (int.Parse(txtm1.Text) > int.Parse(txtm3.Text))
            {
                cvday0.Enabled = false;
            }

        }
        catch (Exception err)
        {
            lblmsg.Text = err.Message;
        }

    }
}