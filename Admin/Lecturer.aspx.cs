using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Lecturer : System.Web.UI.Page
{
    MainDataSetTableAdapters.LectureTableAdapter LectureTbl = new MainDataSetTableAdapters.LectureTableAdapter();
    DataTable Dt = new DataTable();
    DataTable DtDisplay = new DataTable();
    DataRow Dr;
    int Count;
    protected void Page_Load(object sender, EventArgs e)
    {
        Dt = LectureTbl.GetData();
        DisplayLecture();
        MultiView1.ActiveViewIndex = 0;
    }
    protected void DisplayLecture()
    {
        DtDisplay.Columns.Clear();
        DtDisplay.Rows.Clear();
        DtDisplay.Columns.Add("No");
        DtDisplay.Columns.Add("LecturerID");
        DtDisplay.Columns.Add("LecturerName");
        DtDisplay.Columns.Add("LecturerEmail");
        DtDisplay.Columns.Add("LecturerPhone");
        DtDisplay.Columns.Add("LecturerPassword");
        DtDisplay.Columns.Add("Bios");
        DtDisplay.Columns.Add("WorkAt");
        DtDisplay.Columns.Add("Certificate");
        DtDisplay.Columns.Add("Active");
        Dr = DtDisplay.NewRow();
        DtDisplay.Rows.Add(Dr);
        Count = Dt.Rows.Count;
        if (Count > 0)
        {
            DtDisplay.Rows.Clear();
            for (int i = 0; i < Count; i++)
            {
                Dr = DtDisplay.NewRow();
                Dr[0] = Dt.Rows[i][0];
                Dr[1] = Dt.Rows[i][1];
                Dr[2] = Dt.Rows[i][2];
                Dr[3] = Dt.Rows[i][3];
                Dr[4] = Dt.Rows[i][4];
                Dr[5] = Dt.Rows[i][5];
                Dr[6] = Dt.Rows[i][6];
                Dr[7] = Dt.Rows[i][7];
                Dr[8] = Dt.Rows[i][8];
                Dr[9] = Dt.Rows[i][9];
                DtDisplay.Rows.Add(Dr);
            }
        }
        GridView1.DataSource = DtDisplay;
        GridView1.DataBind();
        txtSearch.Focus();
    }
    protected void ClearData()
    {
        lblError1.Text = "";
        lblError2.Text = "";
        txtLectureID.Text = "";
        txtLecturerName.Text = "";
        txtEmail.Text = "";
        txtPhone.Text = "";
        txtBios.Text = "";
        txtWorkAt.Text = "";
        txtConfirmPassword.Text = "";
        txtPassword.Text = "";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (txtLecturerName.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type AdminName";
            txtLecturerName.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtEmail.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type Email";
            txtEmail.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtPhone.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type PhoneNumber";
            txtPhone.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtPassword.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type Password";
            txtPassword.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtConfirmPassword.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Type ConfirmPassword";
            txtConfirmPassword.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else if (txtPassword.Text.Trim() != txtConfirmPassword.Text.Trim())
        {
            lblError2.Text = "Password And ConfirmPassword Should Be Match";
            txtPassword.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            Dt = LectureTbl.Lecturer_Select_By_LectName(txtLecturerName.Text.Trim().ToString());
            if (Dt.Rows.Count > 0)
            {
                if (Dt.Rows[0][1].ToString() != txtLectureID.Text)
                {
                    lblError2.Text = "This Lecturer Is Already Exist";
                    MultiView1.ActiveViewIndex = 1;
                    return;
                }
            }
            if (btnSave.Text == "Save")
            {
                LectureTbl.Lecturer_Insert(txtLecturerName.Text.Trim(), txtEmail.Text.Trim(), txtPhone.Text.Trim(), txtPassword.Text.Trim(),ddlActiveName.SelectedItem.ToString() ,txtBios.Text.Trim(),txtCertificate.Text.Trim(),txtWorkAt.Text.Trim());
            }
            else if (btnSave.Text == "Update")
            {
                LectureTbl.Lecturer_Update(txtLecturerName.Text.Trim(), txtEmail.Text.Trim(), txtPhone.Text.Trim(), txtPassword.Text.Trim(), txtBios.Text.Trim(), txtCertificate.Text.Trim(), ddlActiveName.SelectedItem.ToString(), txtWorkAt.Text.Trim(), Convert.ToInt32(txtLectureID.Text));
            }
            ClearData();
            Dt = LectureTbl.GetData();
            DisplayLecture();
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
        ClearData();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (txtLectureID.Text.Trim().ToString() == string.Empty)
        {
            lblError1.Text = "Please Choose One Record For Update";
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            lblError1.Text = "";
            DisplayLecture();
            MultiView1.ActiveViewIndex = 1;
            txtLecturerName.Focus();
            btnSave.Text = "Update";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtLectureID.Text.Trim().ToString() == string.Empty)
        {
            lblError1.Text = "Please Choose One Record For Delete";
            MultiView1.ActiveViewIndex = 0;
        }
        else
        {
            LectureTbl.Lecturer_Delete(Convert.ToInt32(txtLectureID.Text));
            Response.Redirect("http://localhost:28795/Admin/Lecturer.aspx");
        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int RowIndex = GridView1.SelectedIndex;
        txtLectureID.Text = DtDisplay.Rows[RowIndex][1].ToString();
        txtLecturerName.Text = DtDisplay.Rows[RowIndex][2].ToString();
        txtEmail.Text = DtDisplay.Rows[RowIndex][3].ToString();
        txtPhone.Text = DtDisplay.Rows[RowIndex][5].ToString();
        txtWorkAt.Text = DtDisplay.Rows[RowIndex][6].ToString();
        txtCertificate.Text = DtDisplay.Rows[RowIndex][7].ToString();
     
        if (DtDisplay.Rows[RowIndex][8].ToString().Equals("Yes"))
        {
            ddlActiveName.SelectedIndex = 1;
        }
        else
        {
            ddlActiveName.SelectedIndex = 0;
        }
        GridViewRow Row = GridView1.Rows[RowIndex];
        CheckBox chkSelect = (CheckBox)Row.FindControl("chkSelect");
        chkSelect.Checked = true;
    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        Dt = LectureTbl.Lecturer_Select_By_SearchLectName(txtSearch.Text);
        DisplayLecture();
    }
}
