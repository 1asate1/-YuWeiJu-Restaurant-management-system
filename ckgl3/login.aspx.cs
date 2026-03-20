using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;        //ODBC命名空间

namespace ckgl
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text==""  || TextBox2.Text=="")
            {
                Response.Write("<script language=javascript> alert('对不起，用户名或密码不得为空！');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();   
            con.Open(); 
            string sql = " select * from employee where eid='" + TextBox1.Text + "' and  epassword='" + TextBox2.Text + "' "; 
            OdbcCommand mycommand1 = new OdbcCommand(sql, con);  
            OdbcDataReader sdr1 = mycommand1.ExecuteReader(); 
            if(sdr1.Read())
            {
                string username =sdr1["ename"].ToString();
                Session["CurrentUser"] = username;
                Response.Redirect("admin/default.aspx");
            }
            else
            {
                Response.Write("<script language=javascript> alert('对不起，用户名或密码不正确，请重试！');</script>");
                return;
            }
            con.Close();   
           
        }
    }
}