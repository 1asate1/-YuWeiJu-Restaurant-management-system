using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DateTime now = DateTime.Now;
                int hour=now.Hour;
                string shijian = "";
                if (hour >= 5 && hour < 10)
                {
                    shijian = "早上好！阳光明媚的一天";
                }
                else if (hour >= 10 && hour < 14)
                {
                    shijian = "中午好！";
                }
                else if (hour >= 14 && hour < 18)
                {
                    shijian = "下午好！";
                }
                else if (hour >= 18 && hour < 22)
                {
                    shijian = "晚上好！";
                }
                else if (hour >= 22 || hour < 5)
                {
                    shijian = "夜深了，注意休息哦！";
                }

                Label3.Text = shijian;
            }
        }
    }
}