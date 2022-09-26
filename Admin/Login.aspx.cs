using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Login : System.Web.UI.Page
{
    MainDataSetTableAdapters.AdminTableAdapter AdminTbl = new MainDataSetTableAdapters.AdminTableAdapter();
    DataTable Dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtAdminName.Text.Trim() == string.Empty)
        {
            lblError.Text = "Plesae Type AdminName";
            txtAdminName.Focus();
        }
        else if (txtPassword.Text.Trim() == string.Empty)
        {
            lblError.Text = "Please Type Password";
        }
        else
        {
            Dt = AdminTbl.Admin_Select_By_AdminNamePassword(txtAdminName.Text, txtPassword.Text);
            if (Dt.Rows.Count > 0)
            {
                Session["LoginAdmin"] = Dt.Rows[0][1];
                Response.Redirect("http://localhost:28795/Admin/Home.aspx");
            }
            else
            {
                lblError.Text = "Please ReType AdminName And Password";
            }
        }
    }
}