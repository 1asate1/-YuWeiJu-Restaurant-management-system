using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin.dish
{
    public partial class dishadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 清空文本框
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = ""; 
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品编号或菜品名称不得为空！');</script>");
                return;
            }
            if (TextBox1.Text.Length < 5)
            {
                Response.Write("<script language=javascript> alert('对不起，菜品编号不能低于5位！');</script>");
                return;
            }
          
            if (TextBox3.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品单位不得为空！');</script>");
                return;
            }

            if (string.IsNullOrWhiteSpace(TextBox4.Text) || !decimal.TryParse(TextBox4.Text, out decimal price))
            {
                Response.Write("<script language=javascript> alert('对不起，请输入有效的菜品价格！');</script>");
                return;
            }

            if (TextBox5.Text == "" || TextBox6.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，描述或类别不得为空');</script>");
                return;
            }
            
            OdbcConnection con = DB.Lianjie();
            con.Open();
            

            string sql1 = " select * from dishes where did='" + TextBox1.Text + "' ";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            OdbcDataReader sdr1 = mycommand1.ExecuteReader();  //在查询用此命令执行
                                                               // Response.Write(sql1);
                                                               //return;
            if (sdr1.Read())
            {
                Response.Write("<script language=javascript> alert('对不起，该编号已经存在，请换一个');</script>");
                sdr1.Close();
                con.Close();
                return;
            }
            else
            {
                string sql2 = "INSERT INTO dishes(did, dname,djldw, dprice, dms, dlb) " +
              "VALUES('" + TextBox1.Text + "','" +      
                         TextBox2.Text + "','" +        
                         TextBox3.Text + "','" +       
                         TextBox4.Text + "','" +        
                         TextBox5.Text + "','" +       
                         TextBox6.Text + "')";               
                OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
                mycommand2.ExecuteNonQuery();   
                Response.Write("<script language=javascript> alert('录入成功！！');</script>");
            }
            con.Close();
        }
    }
}