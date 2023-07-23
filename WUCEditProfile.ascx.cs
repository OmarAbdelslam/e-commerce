using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCEditProfile : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txtusername.Text = Request.Cookies["login"]["User"].ToString();
            var select = from st in db.Customer where st.Username == txtusername.Text select st;
            foreach (var q in select)
            {
                txtphone.Text = q.Phone.ToString();
                txtaddress.Text = q.Address.ToString();
                txtemail.Text = q.Email.ToString();
                txtbirthdate.Text = q.Birthdate.ToString();
            }
        }
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        var st = db.Customer.Find(txtusername.Text);
        st.Phone = txtphone.Text;
        st.Address = txtaddress.Text;
        st.Email = txtemail.Text;
        st.Birthdate = txtbirthdate.Text;
    

        db.SaveChanges();
        lblmsg.Text = "New Has Been Update";
    }
}