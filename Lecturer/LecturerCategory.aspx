<%@ Page Title="" Language="c#" MasterPageFile="~/Lecturer/LecturerMasterpage.master" AutoEventWireup="true" CodeFile="LecturerCategory.aspx.cs" Inherits="Lecturer_LecturerCategory" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <link href="../TextFile.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="contentplaceholder1" runat="server">
    <div class="login-page">
        <div class="form">
            <div>
                <label>Category: </label>
                <asp:DropDownList ID="ddlCategorySelect" runat="server" OnSelectedIndexChanged="ddlCategorySelect_SelectedIndexChanged" >
                    <asp:ListItem Value="0">Existing Category</asp:ListItem>
                    <asp:ListItem Value="1">New Category</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="ddlCategory" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" Visible="false"></asp:DropDownList>
                <asp:TextBox ID="txtCategory" runat="server" placeholder="Enter New CategoryName" Visible="false" Height="23px"></asp:TextBox>

            </div>
            <div>
                <label>SubCategory:</label><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
            <div> <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" /></div>
        </div>
      
      < 
    </div>
</asp:Content>

