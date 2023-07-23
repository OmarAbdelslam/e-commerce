using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCSignup : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        var select = from st in db.Customer where st.Username == txtusername.Text select st;
        if (select.Any())
        {
            lblusername.Text = "this user is already usey";
            btnsignup.Visible = false;
        }
        else
        {
            lblusername.Text = "";
            btnsignup.Visible = true;
        }
    }

    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Customer c = new Customer()
        {
            Username = txtusername.Text,
            Phone = txtphone.Text,
            Address = txtaddress.Text,
            Password = txtpassword.Text,
            Email = txtemail.Text,
            Birthdate = txtbirthdate.Text
        };
        db.Customer.Add(c);
        db.SaveChanges();

        lblmsg.Text = "تم الاضافة بنجاح";
            

    }
}