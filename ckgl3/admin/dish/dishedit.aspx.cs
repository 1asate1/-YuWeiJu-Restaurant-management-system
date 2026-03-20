using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;        //ODBC命名空间

namespace ckgl.admin.dish
{
    public partial class dishedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = " select * from dishes where ";
            if (TextBox1.Text != "")
                sql += " did='" + TextBox1.Text + "' and  ";
            if (TextBox2.Text != "")
                sql += " dname='" + TextBox2.Text + "' and";
            sql += "  '1'='1' ";  //关口语句，吃掉最后一个and 
            OdbcCommand mycommand1 = new OdbcCommand(sql, con);
            OdbcDataReader sdr1 = mycommand1.ExecuteReader();
            if (sdr1.Read())
            {
                SqlDataSource1.SelectCommand = sql;   //将当前的查询结果与查询窗口gridview链接
                GridView1.DataBind(); // 将查询结果绑定查询窗口
            }
            else
            {
                Response.Write("<script language=javascript> alert('诶呀，没找到这道菜品呀Σ(ﾟДﾟ；≡；ﾟдﾟ)');</script>");
                return;
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}