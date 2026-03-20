using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Odbc;        //ODBC命名空间

namespace ckgl.admin.statistic
{
    public partial class tongjimanage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList5_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CheckBox5.Checked && string.IsNullOrEmpty(DropDownList4.SelectedValue))
            {
                Response.Write("<script>alert('请先选择年份~QAQ');</script>");
                CheckBox5.Checked = false;
                DropDownList4.Focus();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;
            CheckBox4.Checked = false;
            CheckBox5.Checked = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OdbcConnection con = DB.Lianjie();
            con.Open();

            string whereConditions = "";

            if (CheckBox1.Checked == true)
            {
                whereConditions += " eid='" + DropDownList1.SelectedValue + "' and ";
            }
            if (CheckBox2.Checked == true)
            {
                whereConditions += " did='" + DropDownList2.SelectedValue + "' and ";
            }
            if (CheckBox3.Checked == true)
            {
                whereConditions += " cid='" + DropDownList3.SelectedValue + "' and ";
            }
            if (CheckBox4.Checked == true)
            {
                whereConditions += " year(otime)=" + DropDownList4.SelectedValue + " and ";
            }
            if (CheckBox5.Checked == true)
            {
                whereConditions += " month(otime)=" + DropDownList5.SelectedValue + " and ";
            }

            whereConditions += " '1'='1'";

            string sql = @"
            SELECT 
            IFNULL(COUNT(*), 0) as orderCount,        
            IFNULL(SUM(onum), 0) as dishSales,         
            IFNULL(SUM(totalprice), 0) as totalAmount,   
            IFNULL(AVG(totalprice), 0) as avgPrice,      
            IFNULL(COUNT(DISTINCT cid), 0) as customerCount 
            FROM orders 
            WHERE " + whereConditions;

            OdbcCommand cmd = new OdbcCommand(sql, con);
            OdbcDataReader sdr = cmd.ExecuteReader();


            int orderCount = 0, dishSales = 0, customerCount = 0;
            decimal totalAmount = 0, avgPrice = 0;

            if (sdr.Read())
            {
       
                orderCount = Convert.ToInt32(sdr["orderCount"]);
                dishSales = Convert.ToInt32(sdr["dishSales"]);
                totalAmount = Convert.ToDecimal(sdr["totalAmount"]);
                avgPrice = Convert.ToDecimal(sdr["avgPrice"]);
                customerCount = Convert.ToInt32(sdr["customerCount"]); 
            }
            sdr.Close();


            string bestDish = "";
            if (!string.IsNullOrEmpty(whereConditions))
            {
                // 1. 去掉最后的 '1'='1'
                string bestWhere = whereConditions.Replace(" '1'='1'", "");

                // 2. 处理末尾可能的 " and "
                bestWhere = bestWhere.Trim();
                if (bestWhere.EndsWith("and", StringComparison.OrdinalIgnoreCase))
                {
                    bestWhere = bestWhere.Substring(0, bestWhere.Length - 3).Trim();
                }

                // 3. 如果什么条件都没有，就不加WHERE
                string whereClause = "";
                if (!string.IsNullOrEmpty(bestWhere))
                {
                    whereClause = "WHERE " + bestWhere;
                }

                string sqlBest = @"
                        SELECT d.dname as dishName
                        FROM orders o
                        INNER JOIN dishes d ON o.did = d.did
                        WHERE o.did = '" + DropDownList2.SelectedValue + @"' 
                        GROUP BY o.did, d.dname
                        ORDER BY sum(o.onum) desc 
                        LIMIT 1";

                OdbcCommand cmdBest = new OdbcCommand(sqlBest, con);
                OdbcDataReader sdrBest = cmdBest.ExecuteReader();
                if (sdrBest.Read())
                {
                    bestDish = sdrBest["dishName"].ToString();
                }
                sdrBest.Close();
            }


            Label12.Text = customerCount.ToString();    
            Label2.Text = orderCount.ToString();          
            Label4.Text = dishSales.ToString();           
            Label6.Text = totalAmount.ToString("F2");    
            Label8.Text = avgPrice.ToString("F2");       
            Label10.Text = bestDish;                      

            con.Close();

        }
    }
}