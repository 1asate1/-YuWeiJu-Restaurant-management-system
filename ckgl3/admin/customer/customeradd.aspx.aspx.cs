using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin.customer
{
    public partial class customeredit_aspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private bool ValidatePhoneNumber(string phoneNumber, int requiredLength = 11)
        {
            // 1. 检查是否为空
            if (string.IsNullOrWhiteSpace(phoneNumber))
            {
                return false;
            }

            // 2. 检查是否全为数字
            foreach (char c in phoneNumber)
            {
                if (!char.IsDigit(c))
                {
                    return false;
                }
            }

            // 3. 检查长度是否符合要求
            if (phoneNumber.Length < requiredLength)
            {
                return false;
            }

            // 4. 可选：检查手机号开头（中国手机号通常以1开头）
            if (requiredLength == 11 && !phoneNumber.StartsWith("1"))
            {
                // 可以根据需要决定是否启用此验证
                // return false;
            }

            return true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            // 清空性别选择
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
             if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('诶呀，顾客账号或姓名怎么忘填写了Σ(ﾟДﾟ；≡；ﾟдﾟ)')！');</script>");
                return;
            }
            if (TextBox1.Text.Length < 10)
            {
                Response.Write("<script language=javascript> alert('对不起，员工编号不能低于10位！');</script>");
                return;
            }
            if (RadioButton1.Checked == false && RadioButton2.Checked == false)
            {
                Response.Write("<script language=javascript> alert('对不起，请选择性别！');</script>");
                return;
            }
            if (TextBox3.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，顾客生日不得为空！');</script>");
                return;
            }
            if (string.IsNullOrWhiteSpace(TextBox4.Text))
            {
                Response.Write("<script language=javascript> alert('对不起，联系方式不得为空！');</script>");
                return;
            }
            if (TextBox4.Text.Length<11)
            {
                Response.Write("<script language=javascript> alert('对不起，请输入合法的11为电话号码！');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string csex = "";
            if (RadioButton1.Checked == true)
                csex = "男";
            if (RadioButton2.Checked == true)
                csex = "女";

            string sql1 = " select * from customer where cid='" + TextBox1.Text + "' ";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            OdbcDataReader sdr1 = mycommand1.ExecuteReader();  //在查询用此命令执行
                                                               // Response.Write(sql1);
                                                               //return;
            if (sdr1.Read())
            {
                Response.Write("<script language=javascript> alert('抱歉，该顾客已经注册过啦');</script>");
                sdr1.Close();
                con.Close();
                return;
            }
            else
            {
                string sql2 = "INSERT INTO customer(cid, cname, csex, ccsrq, cphone) " +
              "VALUES('" + TextBox1.Text + "','" +    
                         TextBox2.Text + "','" +        
                         csex + "','" +               
                         TextBox3.Text + "','" +        // eposition: 职位 (TextBox3)
                         TextBox4.Text + "')";                 // ezt: 状态
                OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
                mycommand2.ExecuteNonQuery();   //录入，修改，
                Response.Write("<script language=javascript> alert('您的信息录入成功啦 (≧▽≦)！！');</script>");
            }
            con.Close();
        }
    }
}