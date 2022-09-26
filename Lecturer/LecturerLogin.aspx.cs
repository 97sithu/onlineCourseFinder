using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Lecturer_LecturerLogin : System.Web.UI.Page
{
    MainDataSetTableAdapters.LectureTableAdapter LecturerTbl = new MainDataSetTableAdapters.LectureTableAdapter();
    DataTable Dt = new DataTable();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (txtLecturerName.Text.Trim() == string.Empty)
        {
            lblError.Text = "Plesae Type LecturerName";
            txtLecturerName.Focus();
        }
        else if (txtPassword.Text.Trim() == string.Empty)
        {
            lblError.Text = "Please Type Password";
        }
        else
        {
            Dt = LecturerTbl.Lecturer_Select_By_LectureNamePassword(txtLecturerName.Text, txtPassword.Text);
            if (Dt.Rows.Count > 0)
            {
                Session["LoginLecturerID"] = Dt.Rows[0][0];
                Session["LoginLecturerName"] = Dt.Rows[0][1];
                Response.Redirect("http://localhost:28795/Lecturer/LecturerHome.aspx");
            }
            else
            {
                lblError.Text = "Please ReType AdminName And Password";
            }
        }
    }
}