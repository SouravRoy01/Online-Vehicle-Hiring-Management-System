using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
/// <summary>
/// Summary description for clsbooking
/// </summary>
public class clsbooking
{
    clsDBaccess dbobj = new clsDBaccess();
    public String Name { get; set; }
    public String CarNo { get; set; }
    public String Mobile { get; set; }
    public String Email { get; set; }
    public String BDateTime { get; set; }
    public String PDate { get; set; }
    public String PTime { get; set; }
    public String PLocation { get; set; }
    public String DDate { get; set; }
    public String DTime { get; set; }
    public String Amount { get; set; }
    public int BookingID { get; set; }


    public clsbooking()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int Insert()
    {


        int inserted = 0;

        String query = "insert into tblbooking values('" + Name + "','" + Email + "','" + Mobile + "','" + CarNo + "','" + BDateTime + "','" + PDate + "','" + PTime + "','" + PLocation + "','" + DDate + "','" + DTime + "'," + Amount + ")";
        inserted = dbobj.InsertUpdateDelete(query);
        return inserted;
    }

    public int Delete()
    {


        int deleted = 0;
        Boolean flag = false;
        String query = "delete from tblbooking where BookingID='" + BookingID + "'";
        String query1 = "select Email from tblbooking where BookingID='" + BookingID + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            deleted = dbobj.InsertUpdateDelete(query);
        }
        return deleted;
    }

    public DataSet GetDetails()
    {
        String query = "select * from tblbooking";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
    public DataSet GetDetailsbyEmail()
    {
        string query = "select * from tblbooking where Email='" + Email + "'";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }



}