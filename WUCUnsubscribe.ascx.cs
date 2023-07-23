using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCUnsubscribe : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnno_Click(object sender, EventArgs e)
    {
        Response.Redirect("Member.aspx");
    }

    protected void btnyes_Click(object sender, EventArgs e)
    {
        string user = Request.Cookies["login"]["User"].ToString();
        var Select = db.Customer.Find(user);
        db.Customer.Remove(Select);
        db.SaveChanges();
        Response.Redirect("~/Login.aspx");
    }
}