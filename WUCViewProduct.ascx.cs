using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCProductDetails : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["D_ID"] != null)
            SqlDataSource1.SelectCommand = "SELECT * FROM[Product] Where D_ID=" + Request.QueryString["D_ID"].ToString();
        else
            SqlDataSource1.SelectCommand = "SELECT * FROM[Product]";
    }
}
