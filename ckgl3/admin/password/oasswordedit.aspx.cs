using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin.password
{
    public partial class oasswordedit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('哎呀！原账号或原密码不能为空！');</script>");
                return;
            }
            if (TextBox3.Text == "" || TextBox4.Text == "")
            {
                Response.Write("<script language=javascript> alert('哎呀！原新密码或确认新密码不能为空！');</script>");
                return;
            }
            if (TextBox3.Text != TextBox4.Text)
            {
                Response.Write("<script language=javascript> alert('哎呀！原新密码和确认新密码不一致哦！');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql1 = " select * from employee where eid='" + TextBox1.Text + "' and epassword='" + TextBox2.Text + "'";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            OdbcDataReader sdr1 = mycommand1.ExecuteReader();
            if (sdr1.Read())
            {
                string sql2 = " update employee set epassword='" + TextBox3.Text + "' where eid='" + TextBox1.Text + "'";
                OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
                mycommand2.ExecuteNonQuery();
                Response.Write("<script language=javascript> alert('密码修改成功！');</script>");
            }
            else
            {
                Response.Write("<script language=javascript> alert('哎呀！原账号或原密码不正确！');</script>");
                return;
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

        }
    }
}