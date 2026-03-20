using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Data.Odbc;        //ODBC命名空间


public class DB
{
    public static OdbcConnection Lianjie()
    {
        //定义ODBC方式MYSQL数据库连接
        //string strconn = "Driver={MySQL ODBC 5.1 Driver};Server=127.0.0.1;Database=ckgl;User=root; Password=YOUR_DB_PASSWORD;Option=3;";
         string strconn = "Driver={MySQL ODBC 8.0 ANSI Driver};Server=127.0.0.1;Database=restaurant;User=root; Password=YOUR_DB_PASSWORD;Option=3;";
        OdbcConnection con = new OdbcConnection(strconn);
        return con;
    }
}
