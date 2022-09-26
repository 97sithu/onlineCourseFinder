using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Lecturer_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["LogInLecturer"] == null)
        //{
        //    Response.Redirect("http://localhost:28795/Admin/Login.aspx");
        //}
    }
    protected void Logout_Click(object sender, EventArgs e)
    {
        //if (Session["LogInLecturer"] != null)
        //{
        //    Session["LogInLecturer"] = null;
        //    Response.Redirect("http://localhost:28795/Admin/Login.aspx");
        //}
    }
}
