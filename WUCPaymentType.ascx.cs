using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCPaymentType : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (rdopayment.SelectedValue == "Cash")
        {
            Response.Redirect("Cash.aspx");
        }
        else if (rdopayment.SelectedValue == "Visa")
        {
            Response.Redirect("Visa.aspx");
        }
        else if (rdopayment.SelectedValue == "Cancel")
        {
            Session["Cart"] = null;

            Response.Redirect("ViewDepartment.aspx");
        }
    }
}