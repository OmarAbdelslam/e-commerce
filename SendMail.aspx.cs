using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendMail : System.Web.UI.Page
{
    DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            DataTable cart = (DataTable)Session["Cart"];
            double total = 0;
            for (int i = 0; i < cart.Rows.Count; i++)
            {
                total = Convert.ToDouble(cart.Rows[i][4]) + total;
            }

            int qunt = 0;
            for (int i = 0; i < cart.Rows.Count; i++)
            {
                qunt = Convert.ToInt16(cart.Rows[i][3]) + qunt;
            }
            string user = Request.Cookies["login"]["User"].ToString();
            var select = db.Customer.Find(user);
            lblmsg1.Text = select.Email.ToString();
            MailAddress to = new MailAddress("To  " + lblmsg1.Text);
            MailAddress from = new MailAddress("ahmedl.gamal.ag@gmail.com");
            MailMessage mail = new MailMessage(from, to);
            mail.Subject = "رسالة تحتوي علي بيانات الاوردر الخاصة بالمستخدم :" + Request.Cookies["login"]["User"].ToString();
            mail.Body = "The total price of the order : " + total + "$" + "                The required amount of the order :  " + qunt;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            NetworkCredential cr = new NetworkCredential("ahmedl.gamal.ag@gmail.com", "xxxcfff");
            smtp.Credentials = cr;
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mail);
                lblmsg.Text = "Send";
            }
            catch
            {
                lblmsg.Text = "Not Send";

            }
        }
    }

}