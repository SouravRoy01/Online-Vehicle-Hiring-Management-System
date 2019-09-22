using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public class clsDBaccess
{
    String myconstring = "Data Source=.\\sqlexpress;Initial Catalog=carhiring;Integrated Security=True;Pooling=False";



    public clsDBaccess()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    private SqlConnection mySqlCon()
    {
        SqlConnection con = new SqlConnection(myconstring);
        return con;
    }

    public int InsertUpdateDelete(String query)
    {
        int result = 0;
        SqlConnection con = mySqlCon();
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        result = com.ExecuteNonQuery();
        con.Close();
        return result;
    }
    public DataSet getRecord(String query)
    {
        DataSet ds = new DataSet();
        SqlConnection con = mySqlCon();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds);
        return ds;

    }
    public Boolean CheckDuplicate(String query)
    {
        Boolean found = false;//not duplicate
        SqlConnection con = mySqlCon();
        con.Open();
        SqlCommand com = new SqlCommand(query, con);
        SqlDataReader dr = com.ExecuteReader();
        found = dr.Read();
        dr.Close();
        con.Close();
        return found;
    }
}



