using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCChangePassword : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        string user = Request.Cookies["login"]["User"].ToString();

        var select = db.Customer.Find(user);
        if (txtoldpassword.Text == select.Password.ToString())
        {

            select.Password = txtnewpassword.Text;
            if (db.SaveChanges() == 1)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        else
        {
            lblmsg.Text = "Error At Password";
        }
    }
}