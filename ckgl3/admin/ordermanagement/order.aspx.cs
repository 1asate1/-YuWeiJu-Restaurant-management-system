using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin.ordermanagement
{
    public partial class order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void QueryAndDisplayPrice(string dishId)
        {
            if (!string.IsNullOrEmpty(dishId))
            {
                using (OdbcConnection con = DB.Lianjie())
                {
                    con.Open();
                    string sql = "SELECT dprice FROM dishes WHERE did = ?";
                    OdbcCommand cmd = new OdbcCommand(sql, con);
                    cmd.Parameters.AddWithValue("did", dishId);

                    OdbcDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        decimal price = Convert.ToDecimal(reader["dprice"]);
                        TextBox3.Text = price.ToString("0.00");
                    }
                    else
                    {
                        TextBox3.Text = "0.00";
                    }
                }
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(DropDownList3.SelectedValue))
            {
                OdbcConnection con = DB.Lianjie();
                con.Open();

                try
                {
                    // 只需要查询单价
                    string sql = "SELECT dprice FROM dishes WHERE did = ?";
                    OdbcCommand cmd = new OdbcCommand(sql, con);
                    cmd.Parameters.AddWithValue("did", DropDownList3.SelectedValue);

                    OdbcDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        // 只把单价显示到TextBox3
                        decimal price = Convert.ToDecimal(reader["dprice"]);
                        TextBox3.Text = price.ToString("0.00");

                        // 如果需要同时自动计算总价，可以加上这个逻辑
                        // AutoCalculateTotalPrice(price);
                    }
                    else
                    {
                        TextBox3.Text = "0.00";
                    }
                    reader.Close();
                }
                catch (Exception ex)
                {
                    // 错误处理
                    TextBox3.Text = "0.00";
                    // 可以添加错误提示
                    Response.Write("<script>alert('获取单价失败');</script>");
                }
                finally
                {
                    con.Close();
                }
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品数量不得为空！');</script>");
                return;
            }
            try
            {
                int quantity = Convert.ToInt32(TextBox2.Text);
                decimal price = Convert.ToDecimal(TextBox3.Text);
                decimal total = price * quantity;
                TextBox4.Text = total.ToString();
            }
            catch
            {
                TextBox4.Text = "0";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "0")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品数量不得为0！');</script>");
                return;
            }
            if (TextBox3.Text == "0")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品单价不得为0！');</script>");
                return;
            }
            if (TextBox5.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，订单日期不得为空！');</script>");
                return;
            }
            if (TextBox6.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，订单备注不得为空！');</script>");
                return;
            }

            TextBox1.Text = DateTime.Now.ToString("yyyyMMddHHmmss");
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql1 = "insert into orders values('" + TextBox1.Text + "','"
                                + DropDownList1.Text + "','"
                                + DropDownList2.Text + "','"
                                + DropDownList3.SelectedValue + "',"  // 菜品ID
                                + TextBox2.Text + ","
                                + TextBox4.Text + ",'"
                                + TextBox5.Text + "','"
                                + TextBox6.Text + "')";
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            mycommand1.ExecuteNonQuery();
            Response.Write("<script language=javascript> alert('录入成功');</script>");
            string sql2 = " select * from orders order by otime desc";
            OdbcCommand mycommand2 = new OdbcCommand(sql2, con);
            OdbcDataReader sdr2 = mycommand2.ExecuteReader();
            if (sdr2.Read())
            {
                SqlDataSource1.SelectCommand = sql2;
                GridView1.DataBind();
            }
            con.Close();

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox5.TextMode = TextBoxMode.Date;
            TextBox1.Text = "";
            TextBox2.Text = "0";
            TextBox3.Text = "0";
            TextBox4.Text = "";
            TextBox5.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            Button3.Enabled = false;
            Button1.Enabled = true;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql = "select * from orders where ";

            if (CheckBox3.Checked == true)
                sql += "did='" + DropDownList3.SelectedValue + "' and "; 
            if (CheckBox1.Checked == true)
                sql += "eid='" + DropDownList1.Text + "' and ";
            if (CheckBox2.Checked == true)
                sql += "cid='" + DropDownList2.Text + "' and ";
            if (sql == "select * from orders where ")
            {
                sql += "1=1"; 
            }
            else
            {
                sql = sql.Substring(0, sql.Length - 5);
            }
            sql += " order by otime desc";
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            OdbcDataReader sdr1 = mycommand.ExecuteReader();

            if (sdr1.HasRows) 
            {
                SqlDataSource1.SelectCommand = sql;
                GridView1.DataBind();
                Response.Write("<script>console.log('查询成功')</script>");
            }
            else
            {
                Response.Write("<script language='javascript'>alert('对不起，查无此单！');</script>");
                SqlDataSource1.SelectCommand = "select * from orders order by otime desc";
                GridView1.DataBind();
            }

            sdr1.Close();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox5.TextMode = TextBoxMode.SingleLine;
            TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;  //取gridview1查询值
            DropDownList1.Text = GridView1.SelectedRow.Cells[1].Text;
            DropDownList2.Text = GridView1.SelectedRow.Cells[2].Text;
            DropDownList3.Text = GridView1.SelectedRow.Cells[3].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox5.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox6.Text = GridView1.SelectedRow.Cells[7].Text;

            QueryAndDisplayPrice(DropDownList3.SelectedValue);
            Button3.Enabled = true;
            Button1.Enabled = false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "" || TextBox2.Text == "0" || TextBox3.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，菜品数量、菜品单价不得为空或0！');</script>");
                return;
            }
            if (TextBox4.Text == "" || TextBox4.Text == "0" || TextBox5.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，出库总价、日期不得为空或0！');</script>");
                return;
            }
            OdbcConnection con = DB.Lianjie();
            con.Open();
            string sql1 = "UPDATE orders SET " +
                     "eid='" + DropDownList1.SelectedValue + "', " +
                     "cid='" + DropDownList2.SelectedValue + "', " +
                     "did='" + DropDownList3.SelectedValue + "', " +
                     "onum=" + TextBox2.Text + ", " +
                     "totalprice=" + TextBox4.Text + ", " +  
                     "otime='" + TextBox5.Text + "', " +    
                     "notes='" + TextBox6.Text + "' " +    
                     "WHERE oid='" + TextBox1.Text + "'";   
            OdbcCommand mycommand1 = new OdbcCommand(sql1, con);
            mycommand1.ExecuteNonQuery();
            Response.Write("<script language=javascript> alert('修改成功力！');</script>");

        }
    }
}