using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCProductDetails : System.Web.UI.UserControl
{ DatabaseEntities db = new DatabaseEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string proid = Request.QueryString["P_Code"].ToString();
            var select = from st in db.Product where st.P_Code.ToString() == proid select st;
            foreach (var q in select)
            {
                lblprocode.Text = proid;
                lblname.Text = q.Name.ToString();
                lblprice.Text = q.Price.ToString();
                lblexpire.Text = q.ExpireDate.ToString();
                lblquantity.Text = q.Quantity.ToString();
                lbldescription.Text = q.Description.ToString();
                lbldept.Text = q.D_ID.ToString();
                Image1.ImageUrl = "imgproduct/" + lblprocode.Text + ".jpg";

            }
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        DataTable tbl;
        if (Session["Cart"] == null)
        {
            tbl = new DataTable();

            tbl.Columns.Add("ProCode");
            tbl.Columns.Add("ProName");
            tbl.Columns.Add("Price");
            tbl.Columns.Add("Quantity");
            tbl.Columns.Add("SubTotal");
            tbl.Columns.Add("DeptID");


            DataRow tb = tbl.NewRow();
            tb[0] = lblprocode.Text;
            tb[1] = lblname.Text;
            tb[2] = lblprice.Text;
            tb[3] = txtquantity.Text;
            tb[4] = Convert.ToInt16(txtquantity.Text) * Convert.ToDouble(lblprice.Text);
            tb[5] = lbldept.Text;

            tbl.Rows.Add(tb);

            Session["Cart"] = tbl;
            Response.Redirect("ViewDepartment.aspx");

        }
        else
            tbl = (DataTable)Session["Cart"];


        DataRow row = tbl.NewRow();
        row[0] = lblprocode.Text;
        row[1] = lblname.Text;
        row[2] = lblprice.Text;
        row[3] = txtquantity.Text;
        row[4] = Convert.ToInt16(txtquantity.Text) * Convert.ToDouble(lblprice.Text);
        row[5] = lbldept.Text;

        tbl.Rows.Add(row);

        Session["Cart"] = tbl;
        Response.Redirect("ViewDepartment.aspx");

    }
}
