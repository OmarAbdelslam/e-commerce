using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCLogin : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnlogin_Click(object sender, EventArgs e)
    {

        Customer m = new Customer();
        var select = from st in db.Customer where st.Username == txtusername.Text && st.Password == txtpassword.Text select st;
        if (select.Any())
        {
            HttpCookie c = new HttpCookie("login");
            c.Values.Add("User", txtusername.Text);
            Response.Cookies.Add(c);
            if (CheckBox1.Checked)
            {
                c.Expires = DateTime.Now.AddYears(2);
                Response.Cookies.Add(c);
                if (txtusername.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/admin.aspx");
                }
                else
                {
                    Response.Redirect("~/member.aspx");
                }
            }
            else
            {
                if (txtusername.Text.ToLower() == "admin")
                {
                    Response.Redirect("~/admin.aspx");
                }
                else
                {
                    Response.Redirect("~/member.aspx");
                }
            }


        }
        else
        {
            lblmsg.Text = "Error";
        }

    }
}
