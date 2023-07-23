using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCProductAdmin : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    public void Clear()
    {
        txtname.Text = "";
        txtprice.Text = "";
        txtdescription.Text = "";
        txtexpiredate.Text = "";
        txtquantity.Text = "";
        GridView1.SelectedIndex = -1;
        try
        {
            txtcode.Text = (db.Product.OrderByDescending(b => b.P_Code).FirstOrDefault().P_Code + 1).ToString();
        }
        catch
        {

            txtcode.Text = "1";
        }
    }

    public void GDVLoad()
    {

        GridView1.DataSource = db.Product.ToList();
        GridView1.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {
            try
            {
                txtcode.Text = (db.Product.OrderByDescending(b => b.P_Code).FirstOrDefault().P_Code + 1).ToString();
            }
        catch
            {

                txtcode.Text = "1";
            }
        }
        btndelete.Visible = false;
        btnupdate.Visible = false;
        GDVLoad();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {

        Product p = new Product()
        {
            P_Code = Convert.ToInt16(txtcode.Text),
            Name = txtname.Text,
            Price = Convert.ToDecimal(txtprice.Text),
            ExpireDate = txtexpiredate.Text,
            Quantity = Convert.ToInt16(txtquantity.Text),
            Description = txtdescription.Text,
            D_ID = Convert.ToInt16(DropDownList1.SelectedValue)
        };
        db.Product.Add(p);
        db.SaveChanges();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("imgproduct") + "\\" + txtcode.Text.Trim() + ".jpg");
            Image1.ImageUrl = "~/imgproduct/" + txtcode.Text.Trim() + ".jpg";
        }
        GDVLoad();
        lblmsg.Text = "This Product Has Been Added";
        Clear();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Product p = new Product()
         {
             P_Code = Convert.ToInt16(txtcode.Text),
             Name = txtname.Text,
             Price = Convert.ToDecimal(txtprice.Text),
             ExpireDate = txtexpiredate.Text,
             Quantity = Convert.ToInt16(txtquantity.Text),
             Description = txtdescription.Text,
             D_ID = Convert.ToInt16(DropDownList1.SelectedValue)
         };
        var br = db.Product.Find(Convert.ToInt32(txtcode.Text));
        br.Name = txtname.Text;
        br.Price = Convert.ToDecimal(txtprice.Text);
        br.ExpireDate = txtexpiredate.Text;
        br.Quantity = Convert.ToInt16(txtquantity.Text);
        br.Description = txtdescription.Text;
        br.D_ID = Convert.ToInt16(DropDownList1.SelectedValue);

        db.SaveChanges();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("imgproduct") + "\\" + txtcode.Text.Trim() + ".jpg");
            Image1.ImageUrl = "~/imgproduct/" + txtcode.Text.Trim() + ".jpg";
        }
        lblmsg.Text = "Data has Been Updated";
        btnupdate.Visible = false;
        btndelete.Visible = false;
        btnadd.Visible = true;

        GDVLoad();
        Clear();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        var br = db.Product.Find(Convert.ToInt32(txtcode.Text));
        db.Product.Remove(br);
        db.SaveChanges();
        lblmsg.Text = "Data has Been Deleted";
        btnupdate.Visible = false;
        btndelete.Visible = false;
        btnadd.Visible = true;
        GDVLoad();
        Clear();
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Product.Select(b => new { b.P_Code, b.Name, b.Price, b.ExpireDate, b.Quantity, b.Description, b.D_ID }).Where(x => x.Name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void btnnew_Click(object sender, EventArgs e)
    {
        GDVLoad();
        Image1.ImageUrl = "";
        lblmsg.Text = "";
        Clear();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        GridView1.PageIndex = e.NewPageIndex;
        GDVLoad();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtcode.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();
        txtprice.Text = GridView1.SelectedRow.Cells[3].Text.ToString();
        txtexpiredate.Text = GridView1.SelectedRow.Cells[4].Text.ToString();
        txtquantity.Text = GridView1.SelectedRow.Cells[5].Text.ToString();
        txtdescription.Text = GridView1.SelectedRow.Cells[6].Text.ToString();

        Image1.ImageUrl = "~/imgproduct/" + txtcode.Text.Trim() + ".jpg";

        lblmsg.Text = "";

        btnadd.Visible = false;
        btnupdate.Visible = true;
        btndelete.Visible = true;
    }
}