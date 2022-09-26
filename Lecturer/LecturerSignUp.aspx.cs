using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Lecturer_LecturerSignUp : System.Web.UI.Page
{
    MainDataSetTableAdapters.LectureTableAdapter LectureTbl = new MainDataSetTableAdapters.LectureTableAdapter();
    DataTable Dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtLecturerName.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type AdminName";
            txtLecturerName.Focus();

        }
        else if (txtEmail.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type Email";
            txtEmail.Focus();

        }
        else if (txtPhone.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type PhoneNumber";
            txtPhone.Focus();

        }
        else if (txtPassword.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type Password";
            txtPassword.Focus();

        }
        else if (txtConfirmPassword.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type ConfirmPassword";
            txtConfirmPassword.Focus();

        }
        else if (txtPassword.Text.Trim() != txtConfirmPassword.Text.Trim())
        {
            lblError2.Text = "Password And ConfirmPassword Should Be Match";
            txtPassword.Focus();

        }
        else
        {
            Dt = LectureTbl.Lecturer_Select_By_LectName(txtLecturerName.Text.Trim().ToString());
            if (Dt.Rows.Count > 0)
            {
                if (Dt.Rows[0][1].ToString() != txtLectureID.Text)
                {
                    lblError2.Text = "This Lecturer Is Already Exist";
                    return;
                }
            }
            else
            {
                LectureTbl.New_Lecturer_Insert(txtLecturerName.Text.Trim(), txtEmail.Text.Trim(), txtPhone.Text.Trim(), txtPassword.Text.Trim(), txtBios.Text.Trim(), txtCertificate.Text.Trim(), txtWorkAt.Text.Trim());
                Response.Redirect("http://localhost:28795/Lecturer/LecturerLogin.aspx");
            }
        }
    }
}