using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class clsuser
{
    clsDBaccess dbobj = new clsDBaccess();
    public String Name { get; set; }
    public String Address { get; set; }
    public String Mobile { get; set; }
    public String Email { get; set; }
    public String Password { get; set; }
    public String UserImage { get; set; }
    public String Feedback { get; set; }
    public clsuser()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Insert()
    {


        int inserted = 0;
        Boolean flag = false;
        String query = "insert into tbluserrecord values('" + Email + "','" + Name + "','" + Address + "','" + Mobile + "','" + Password + "','" + UserImage + "','" + Feedback + "')";
        String query1 = "select Email from tbluserrecord where Email='" + Email + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == false)
        {
            inserted = dbobj.InsertUpdateDelete(query);
        }
        return inserted;
    }

    public int Update()
    {


        int updated = 0;
        Boolean flag = false;
        String query = "update tbluserrecord set Name='" + Name + "',Address='" + Address + "',Mobile='" + Mobile + "',Password='" + Password + "',UserImage='" + UserImage + "' where Email='" + Email + "'";
        String query1 = "select Email from tbluserrecord where Email='" + Email + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            updated = dbobj.InsertUpdateDelete(query);
        }
        return updated;
    }
    public void Update(String query, String email)
    {


        int updated = 0;
        Boolean flag = false;

        String query1 = "select Email from tbluserrecord where Email='" + email + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            updated = dbobj.InsertUpdateDelete(query);
        }

    }
    public int Delete()
    {


        int deleted = 0;
        Boolean flag = false;
        String query = "delete from tbluserrecord where Email='" + Email + "'";
        String query1 = "select Email from tbluserrecord where Email='" + Email + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            deleted = dbobj.InsertUpdateDelete(query);
        }
        return deleted;
    }
    public void Delete(String email)
    {


        int deleted = 0;
        Boolean flag = false;
        String query = "delete from tbluserrecord where Email='" + email + "'";
        String query1 = "select Email from tbluserrecord where Email='" + email + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            deleted = dbobj.InsertUpdateDelete(query);
        }

    }




    public DataSet GetDetails()
    {
        String query = "select * from tbluserrecord";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
    public DataSet GetDetailsbyEmail()
    {
        string query = "select * from tbluserrecord where Email='" + Email + "'";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
    public DataSet GetDetailsbyEmail(String query)
    {
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
}
