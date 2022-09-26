using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_SubCategory : System.Web.UI.Page
{
    MainDataSetTableAdapters.SubCategoryTableAdapter SubCatTbl = new MainDataSetTableAdapters.SubCategoryTableAdapter();
    MainDataSetTableAdapters.CourseTableAdapter CourseTbl = new MainDataSetTableAdapters.CourseTableAdapter();
    MainDataSetTableAdapters.CategoryTableAdapter CategoryTbl = new MainDataSetTableAdapters.CategoryTableAdapter();
    DataTable Dt = new DataTable();
    DataTable DtDisplay = new DataTable();
    DataRow Dr;
    int count;
    protected void DisplaySubCategory() {
        DtDisplay.Columns.Clear();
        DtDisplay.Rows.Clear();
        DtDisplay.Columns.Add("No");
        DtDisplay.Columns.Add("SubCategoryID");
        DtDisplay.Columns.Add("SubCategoryName");
        DtDisplay.Columns.Add("CatID");
        DtDisplay.Columns.Add("CategoryName");
        Dr = DtDisplay.NewRow();
        DtDisplay.Rows.Add(Dr);
        count = Dt.Rows.Count;
        if (count > 0) {
            DtDisplay.Rows.Clear();
            for (int i = 0; i < count; i++) {
                Dr = DtDisplay.NewRow();
                Dr[0] = Dt.Rows[i]["No"];
                Dr[1]=Dt.Rows[i]["SubCategoryID"];
                Dr[2] = Dt.Rows[i]["SubCategoryName"];
                Dr[3] = Dt.Rows[i]["CategoryID"];
                Dr[4] = Dt.Rows[i]["CategoryName"];
                DtDisplay.Rows.Add(Dr);
            }
        }
        Session["SessionDtDisplay"] = DtDisplay;
        GridView1.DataSource = DtDisplay;
        GridView1.DataBind();
        txtSearch.Focus();
    }
    protected void DisplayCategory()
    {
        ddlCategoryName.DataTextField = "CategoryName";
        ddlCategoryName.DataValueField = "CategoryID";
        ddlCategoryName.DataSource = CategoryTbl.GetData();
        ddlCategoryName.DataBind();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (txtLoad.Text.Trim().ToString() == string.Empty) {
            Dt = SubCatTbl.GetData();
            DisplaySubCategory();
            MultiView1.ActiveViewIndex = 0;
            txtLoad.Text = "load";
        }
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        btnSave.Text = "Save";
        DisplayCategory();
        MultiView1.ActiveViewIndex = 1;
        ClearData();
        txtSubCategoryName.Focus();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (txtProductID.Text.Trim() == string.Empty)
        {
            lblError1.Text = "Please Check a record for update ";
            MultiView1.ActiveViewIndex = 0;
        }
        else {
            lblError1.Text = "";
            DisplayCategory();
            MultiView1.ActiveViewIndex = 1;
            txtSubCategoryName.Focus();
            btnSave.Text = "Update";
        }
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        if (txtProductID.Text.Trim() == string.Empty)
        {
            lblError1.Text = "Please Check a record for Delete ";
        }
        else {
            SubCatTbl.SubCategory_Delete(Convert.ToInt32(txtProductID.Text));
            Response.Redirect("SubCategory.aspx");
        }
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {

    }
    protected void ddlSearchType_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtSearch.Text = "";
        txtSearch.Focus();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int RowIndex = GridView1.SelectedIndex;
        DtDisplay = (DataTable)Session["SessionDtDisplay"];

        foreach (GridViewRow Row1 in GridView1.Rows)
        {
            CheckBox chkSelect1 = (CheckBox)Row1.FindControl("chkSelect");
            chkSelect1.Checked = false;

        }
        txtProductID.Text = DtDisplay.Rows[RowIndex][1].ToString();
        txtSubCategoryName.Text = DtDisplay.Rows[RowIndex][2].ToString();
        btnSave.Text = DtDisplay.Rows[RowIndex][3].ToString();
        GridViewRow Row2 = GridView1.Rows[RowIndex];
        CheckBox chkSelect2 = (CheckBox)Row2.FindControl("chkSelect");
        chkSelect2.Checked = true;
    }

    protected void ClearData() {
        ddlCategoryName.SelectedIndex = -1;
        txtSubCategoryName.Text = "";
        txtSearch.Text = "";
    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        int ok;
        if (txtSubCategoryName.Text.Trim().ToString() == string.Empty)
        {
            lblError2.Text = "Please Enter SubCategory Name";
            txtSubCategoryName.Focus();
            MultiView1.ActiveViewIndex = 1;
        }
        else {
            Dt = SubCatTbl.SubCategory_Select_By_SubCatName1(txtSubCategoryName.Text, ddlCategoryName.SelectedItem.ToString());
            if (Dt.Rows.Count > 0) {
                if (Dt.Rows[0][1].ToString() != txtSubCategoryName.Text) {
                    lblError2.Text = "This SubCategory Name Already Eixst";
                    MultiView1.ActiveViewIndex = 1;
                    return;
                }
            }
            if (btnSave.Text == "Save")
            { SubCatTbl.SubCategory_Insert(txtSubCategoryName.Text, Convert.ToInt32(ddlCategoryName.SelectedValue));
            
            }
            else if (btnSave.Text == "Update")
            {
                int SubCategoryID = Convert.ToInt32(txtProductID.Text);
                SubCatTbl.SubCategory_Update(txtSubCategoryName.Text, Convert.ToInt32(ddlCategoryName.SelectedValue), Convert.ToInt32(txtProductID.Text));
                Response.Redirect("SubCategory.aspx");
            }
            ClearData();
            Dt = SubCatTbl.GetData();
            DisplaySubCategory();
            MultiView1.ActiveViewIndex = 0;
           
        }
    }
    protected void txtSearch_TextChanged(object sender, EventArgs e)
    {
        if (ddlSearchType.SelectedIndex == 0)
            Dt = SubCatTbl.SubCategory_Select_By__SearchCatName(txtSearch.Text);
        else if (ddlSearchType.SelectedIndex == 1)
            Dt = SubCatTbl.SubCategory_Select_By_SearchSubCatName(txtSearch.Text);
       

        DisplaySubCategory();
    }
}