using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCShoppingCart : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DGVShopingCart.DataSource = (DataTable)Session["Cart"];
        DGVShopingCart.DataBind();
        if (Session["Cart"] != null)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["Cart"];
            int qunt = 0;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                qunt = Convert.ToInt16(dt.Rows[i][3]) + qunt;
            }
            lblitems.Text = " Of   " + qunt.ToString() + "  Products";

            double total = 0;
            for (int t = 0; t < dt.Rows.Count; t++)
            {
                total = Convert.ToDouble(dt.Rows[t][4]) + total;
            }
            lbltotal.Text = "Total Of Order Equal : " + total.ToString();
        }
        if (Session["Cart"] == null)
            hlkcheckout.Visible = false;
        else
            hlkcheckout.Visible = true;
    }

    protected void DGVShopingCart_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}