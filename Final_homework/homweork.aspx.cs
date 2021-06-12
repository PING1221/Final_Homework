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
            string id_number = Request.Form.Get("user_id");
            int[] uid = new int[10];
            int chkTotal;
            id_number = id_number.ToUpper();
            if (id_number.Length == 10)
            {
                for (int i = 1; i < 10; i++)
                {
                    uid[i] = Convert.ToInt32(id_number.Substring(i, 1));
                }
                switch (id_number[0])
                {
                    case 'A': uid[0] = 10; break;
                    case 'B': uid[0] = 11; break;
                    case 'C': uid[0] = 12; break;
                    case 'D': uid[0] = 13; break;
                    case 'E': uid[0] = 14; break;
                    case 'F': uid[0] = 15; break;
                    case 'G': uid[0] = 16; break;
                    case 'H': uid[0] = 17; break;
                    case 'I': uid[0] = 34; break;
                    case 'J': uid[0] = 18; break;
                    case 'K': uid[0] = 19; break;
                    case 'L': uid[0] = 20; break;
                    case 'M': uid[0] = 21; break;
                    case 'N': uid[0] = 22; break;
                    case 'O': uid[0] = 35; break;
                    case 'P': uid[0] = 23; break;
                    case 'Q': uid[0] = 24; break;
                    case 'R': uid[0] = 25; break;
                    case 'S': uid[0] = 26; break;
                    case 'T': uid[0] = 27; break;
                    case 'U': uid[0] = 28; break;
                    case 'V': uid[0] = 29; break;
                    case 'W': uid[0] = 32; break;
                    case 'X': uid[0] = 30; break;
                    case 'Y': uid[0] = 31; break;
                    case 'Z': uid[0] = 33; break;
                }
                if (uid[1] == 1 || uid[1] == 2)
                {
                    chkTotal = (uid[0] / 10 * 1) + (uid[0] % 10 * 9);

                    int k = 8;
                    for (int j = 1; j < 9; j++)
                    {
                        chkTotal += uid[j] * k;
                        k--;
                    }

                    chkTotal += uid[9];

                    if (chkTotal % 10 != 0)
                    {
                        lb_Res.Text = "身分證字號錯誤";
                    }
                    else
                    {

                        lb_Res.Text = "姓名:" + Request.Form.Get("tb_Name") + "</br>" + "年齡" + Request.Form.Get("tb_Age") + "</br>";
                        if (Request.Form.Get("Sex") == "rb1")
                        {
                            lb_Res.Text = lb_Res.Text + "性別:男";
                        }
                        else if (Request.Form.Get("Sex") == "rb2")
                        {
                            lb_Res.Text = lb_Res.Text + "性別:女";
                        }
                        lb_Res.Text = lb_Res.Text + "</br>" + "身分證:" + id_number + "</br>" + "電話號碼:" + Request.Form.Get("tb_num") + "</br>" + "科別:" + DropDownList1.SelectedItem.Text.ToString() + "</br>" + "備註:" + Request.Form.Get("TextBox5") + "</br>";
                        tb_num.Text = "";
                        tb_Name.Text = "";
                        rb1.Checked = false;
                        rb2.Checked = false;
                        DropDownList1.SelectedValue = "";
                        tb_Age.Text = "";
                        user_id.Text = "";
                        TextBox5.Text = "";
                    }


                    
                }


            }
            else
            {
             lb_Res.Text = "身分證字號長度錯誤，請更正";
            }
            




        }
    }
}