using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCCash : System.Web.UI.UserControl
{
    DatabaseEntities DB = new DatabaseEntities();
    Orders O = new Orders();
    OrderProduct OD = new OrderProduct();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Cart"] == null)
        { Response.Redirect("ShoppingCart.aspx"); }
    }
    public int GetNextOrderNo()
    {
        try
        {
            string query = (DB.Orders.OrderByDescending(b => b.O_ID).FirstOrDefault().O_ID + 1).ToString();
            return Convert.ToInt16(query);
        }
        catch
        {

            return 1;
        }
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        DataTable cart = (DataTable)Session["Cart"];
        O.O_ID = GetNextOrderNo();
        O.O_Date = txtorderdate.Text;
        O.City = txtCity.Text;
        O.Address = txtaddress.Text;
        double price = 0;
        for (int i = 0; i < cart.Rows.Count; i++)
        {
            price = Convert.ToDouble(cart.Rows[i][4]) + price;
        }

        O.Username = Request.Cookies["login"]["User"].ToString();
        DB.Orders.Add(O);
        DB.SaveChanges();

        for (int x = 0; x < cart.Rows.Count; x++)
        {

            OD.O_ID = O.O_ID;
            OD.P_Code = Convert.ToInt16(cart.Rows[x][0]);
            OD.Quantity = Convert.ToInt16(cart.Rows[x][3]);
            double total = 0;
            for (int i = 0; i < cart.Rows.Count; i++)
            {
                total = Convert.ToDouble(cart.Rows[i][4]) + total;
            }

            DB.OrderProduct.Add(OD);
            DB.SaveChanges();

        }
        Response.Redirect("sendmail.aspx");

    }
}
