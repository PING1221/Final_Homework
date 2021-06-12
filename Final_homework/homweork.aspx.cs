using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_homework
{
    public partial class homework : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lb_Res.Text = Request.Form.Get("tb_Name") + "</br>" + Request.Form.Get("tb_Age") + "</br>";
            if (Request.Form.Get("Sex") == "rb1")
            {
                lb_Res.Text = lb_Res.Text + "男";
            }
            else if (Request.Form.Get("Sex") == "rb2")
            {
                lb_Res.Text = lb_Res.Text + "女";
            }
            lb_Res.Text =lb_Res.Text + "</br>" + Request.Form.Get("user_id") + "</br>" + Request.Form.Get("tb_num") + "</br>";

        }
    }
}