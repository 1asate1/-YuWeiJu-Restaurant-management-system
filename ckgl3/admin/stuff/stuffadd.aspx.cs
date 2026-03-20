using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin.stuff
{
    public partial class stuffadd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // 简单密码验证：包含数字和字母，长度在6-20位之间
        private bool ValidateSimplePassword(string password)
        {
            // 检查长度
            if (password.Length < 6 || password.Length > 20)
                return false;

            // 检查是否包含数字
            bool hasDigit = false;
            // 检查是否包含字母
            bool hasLetter = false;

            foreach (char c in password)
            {
                if (char.IsDigit(c))
                    hasDigit = true;
                else if (char.IsLetter(c))
                    hasLetter = true;

                // 如果已经满足条件，可以提前退出
                if (hasDigit && hasLetter)
                    break;
            }

            // 必须同时包含数字和字母
            return hasDigit && hasLetter;
        }
 
        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            // 清空文本框
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = ""; // 确保出生日期也被清空

            // 清空性别选择
            RadioButton1.Checked = false;
            RadioButton2.Checked = false;

            // 清空职位状态选择
            RadioButton3.Checked = false;
            RadioButton4.Checked = false;
            RadioButton5.Checked = false;
            RadioButton6.Checked = false;
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，员工编号或密码不得为空！');</script>");
                return;
            }
            if (TextBox1.Text.Length < 3)
            {
                Response.Write("<script language=javascript> alert('对不起，员工编号不能低于3位！');</script>");
                return;
            }
            if (RadioButton1.Checked == false && RadioButton2.Checked == false)
            {
                Response.Write("<script language=javascript> alert('对不起，请选择性别！');</script>");
                return;
            }
            if (TextBox3.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，员工职位不得为空！');</script>");
                return;
            }
            if (!ValidateSimplePassword(TextBox4.Text))
            {
                Response.Write("<script>alert('密码格式不符合要求！\\n密码必须：\\n1. 长度6-20位\\n2. 至少包含一个数字\\n3. 至少包含一个字母');</script>");
                return;
            }
            if (TextBox5.Text == "" || TextBox6.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，员工的电话或出生日期不得为空');</script>");
                return;
            }
            if (!RadioButton3.Checked && !RadioButton4.Checked && !RadioButton5.Checked && !RadioButton6.Checked)
            {
                Response.Write("<script language=javascript> alert('对不起，请选择职位！');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string esex = "";
            if (RadioButton1.Checked == true)
                esex = "男";
            if (RadioButton2.Checked == true)
                esex = "女";

            string estate = "";
            if (RadioButton3.Checked)
                estate = RadioButton3.Text; // "在职"
            else if (RadioButton4.Checked)
                estate = RadioButton4.Text; // "休假"
            else if (RadioButton5.Checked)
                estate = RadioButton5.Text; // "实习"
            else if (RadioButton6.Checked)
                estate = RadioButton6.Text; // "离职"

            string sql1 = " select * from employee where eid='" + TextBox1.Text + "' ";
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
                string sql2 = "INSERT INTO employee(eid, ename, esex, eposition, epassword, ephone, ecsrq, ezt) " +
              "VALUES('" + TextBox1.Text + "','" +      // eid: 员工编号
                         TextBox2.Text + "','" +        // ename: 员工姓名 (TextBox2)
                         esex + "','" +                 // esex: 性别
                         TextBox3.Text + "','" +        // eposition: 职位 (TextBox3)
                         TextBox4.Text + "','" +        // epassword: 密码 (TextBox4)
                         TextBox5.Text + "','" +        // ephone: 电话 (TextBox5)
                         TextBox6.Text + "','" +        // ecsrq: 出生日期 (TextBox6)
                         estate + "')";                 // ezt: 状态
                OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
                mycommand2.ExecuteNonQuery();   //录入，修改，
                Response.Write("<script language=javascript> alert('录入成功！！');</script>");
            }
            con.Close();
        }
    }
}