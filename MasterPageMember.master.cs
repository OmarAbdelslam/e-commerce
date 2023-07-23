using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageMember : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["login"] == null)
            Response.Redirect("Login.aspx");
        else

        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            int qunt = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                qunt = Convert.ToInt16(dt.Rows[i][3]) + qunt;
            }
            lblitem.Text = qunt.ToString();

            double total = 0;
            for (int t = 0; t < dt.Rows.Count; t++)
            {
                total = Convert.ToDouble(dt.Rows[t][4]) + total;
            }
            lbltotal.Text = total.ToString();


        }
    }
}
