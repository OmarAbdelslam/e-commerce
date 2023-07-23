using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WUCDepartmentAdmin : System.Web.UI.UserControl
{
    DatabaseEntities db = new DatabaseEntities();
    public void GDVLoad()
    {

        GridView1.DataSource = db.Department.ToList();
        GridView1.DataBind();

    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)

        {

            try
            {
                txtid.Text = (db.Department.OrderByDescending(b => b.D_ID).FirstOrDefault().D_ID + 1).ToString();
            }
            catch
            {

                txtid.Text = "1";
            }
        }
        btndelete.Visible = false;
        btnupdate.Visible = false;
        GDVLoad();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        Department d = new Department()
        {
            D_ID=Convert.ToInt16(txtid.Text),
            Name=txtname.Text
        };
        db.Department.Add(d);
        db.SaveChanges();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("imgdept") + "\\" + txtid.Text.Trim() + ".jpg");
            lblmsg.Text = "Data Has Been Added";
            Image1.ImageUrl = "~/imgdept/" + txtid.Text.Trim() + ".jpg";
        }
        lblmsg.Text = "Data Hass Been Added";
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Department d = new Department()
        {
            D_ID = Convert.ToInt16(txtid.Text),
            Name = txtname.Text
        };
        var br = db.Department.Find(Convert.ToInt32(txtid.Text));
        br.Name = txtname.Text;

        db.SaveChanges();
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("imgdept") + "\\" + txtid.Text.Trim() + ".jpg");
            lblmsg.Text = "Data Has Been Added";
            Image1.ImageUrl = "~/imgdept/" + txtid.Text.Trim() + ".jpg";
        }
        lblmsg.Text = "Data has Been Updated";
        btnupdate.Visible = false;
        btndelete.Visible = false;
        btnadd.Visible = true;

        GDVLoad();
     

    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        var br = db.Department.Find(Convert.ToInt32(txtid.Text));
        db.Department.Remove(br);
        db.SaveChanges();
        lblmsg.Text = "Data has Been Deleted";
        btnupdate.Visible = false;
        btndelete.Visible = false;
        btnadd.Visible = true;
        GDVLoad();
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        GridView1.DataSource = db.Department.Select(b => new { b.D_ID, b.Name }).Where(x => x.Name.Contains(txtsearch.Text)).ToList();
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtid.Text = GridView1.SelectedRow.Cells[1].Text.ToString();
        txtname.Text = GridView1.SelectedRow.Cells[2].Text.ToString();

        Image1.ImageUrl = "~/imgdept/" + txtid.Text.Trim() + ".jpg";

        lblmsg.Text = "";

        btnadd.Visible = false;
        btnupdate.Visible = true;
        btndelete.Visible = true;
    }
}