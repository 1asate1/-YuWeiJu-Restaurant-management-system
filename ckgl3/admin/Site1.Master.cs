using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ckgl.admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["CurrentUser"] != null)
                {
                    Label2.Text = Session["CurrentUser"].ToString();
                }
                else
                {
                    Label2.Text = "游客";
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript> alert('诶呀，没找到这道菜品呀Σ(ﾟДﾟ；≡；ﾟдﾟ)');</script>");
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/login.aspx");
        }
    }
}