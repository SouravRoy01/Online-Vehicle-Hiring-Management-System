using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class clscar
{
    clsDBaccess dbobj = new clsDBaccess();
    public String CarNo { get; set; }
    public String CarName { get; set; }
    public String CarType { get; set; }
    public String FuelType { get; set; }
    public String Description { get; set; }
    public String CarImage { get; set; }
    public int HrlyRate { get; set; }
    public int MinHrs { get; set; }
    public String CarCatNo { get; set; }
    public String CarCatName { get; set; }
    






    public clscar()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public int Insert()
    {


        int inserted = 0;
        Boolean flag = false;
        String query = "insert into tblcar values('" + CarNo + "','" + CarName + "','" + CarType + "','" + FuelType + "','" + Description + "','" + CarImage + "'," + HrlyRate + "," + MinHrs + ",'" + CarCatName + "','" + "NO" + "')";
        String query1 = "select CarNo from tblcar where CarNo='" + CarNo + "'";
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
        String query = "update tblcar set CarNo='" + CarNo + "',CarName='" + CarName + "',CarType='" + CarType + "',FuelType='" + FuelType + "',Description='" + Description + "',CarImage='" + CarImage + "',HrlyRate=" + HrlyRate + ",MinHrs=" + MinHrs + " where CarNo='" + CarNo + "'";
        String query1 = "select CarNo from tblcar where CarNo='" + CarNo + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            updated = dbobj.InsertUpdateDelete(query);
        }
        return updated;
    }
    
    public int Delete()
    {


        int deleted = 0;
        Boolean flag = false;
        String query = "delete from tblcar where CarNo='" + CarNo + "'";
        String query1 = "select CarNo from tblcar where CarNo='" + CarNo + "'";
        flag = dbobj.CheckDuplicate(query1);
        if (flag == true)
        {
            deleted = dbobj.InsertUpdateDelete(query);
        }
        return deleted;
    }



    public DataSet GetDetails()
    {
        String query = "select * from tblcar";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
    public DataSet GetDetailsbyCarNo()
    {
        string query = "select * from tblcar where CarNo='" + CarNo + "'";
        DataSet ds = dbobj.getRecord(query);
        return ds;
    }
}



