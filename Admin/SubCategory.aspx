<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="Admin_SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
        <tr>
            <td>
                <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" 
                    Font-Size="10pt"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button" OnClick="btnNew_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button" OnClick="btnUpdate_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button" OnClick="btnDelete_Click" />
                &nbsp;&nbsp;&nbsp; 
                <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button" OnClick="btnPrint_Click" />
               &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                 Search Type : 
                <asp:DropDownList ID="ddlSearchType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSearchType_SelectedIndexChanged" >
                    <asp:ListItem>CategoryName</asp:ListItem>
                    <asp:ListItem>SubCategoryName</asp:ListItem>
                </asp:DropDownList>
                
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearch" runat="server" Width="200" 
                    AutoPostBack="True"  AutoComplete="off" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
                <asp:TextBox ID="txtLoad" runat="server" Visible="False"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
               
            </td>
        </tr>
        <tr>
            <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="5" CellSpacing="1" DataKeyNames="SubCategoryID" Width="1346px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                        <Columns>
                            <asp:BoundField DataField="No" HeaderText="No" />
                            <asp:BoundField DataField="SubCategoryID" HeaderText="SubCategoryID" visible="false"/>
                            <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategory Name" />
                            <asp:BoundField DataField="CatID" HeaderText="CatID"  Visible="false"/>
                            <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                            <asp:TemplateField HeaderText="Select">
                                <ItemTemplate>
                                    <asp:LinkButton ID="btnEdit" runat="server" CommandName="Select">
                                    <asp:CheckBox ID="chkSelect" runat="server" />
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
            </td>
        </tr>
        
        </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <div>
    <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" 
                Font-Size="10pt"></asp:Label>
            <asp:TextBox ID="txtProductID" runat="server" Visible="False"></asp:TextBox>
</div>
<div>
    <table style="color: #000000; border: 1px solid #000000">
        <tr>
            <th colspan="2" class="tablehead">SubCategory
            </th>
        </tr>
        <tr>
            <td class="col">SubCategory Name:</td>
            <td>
                <asp:TextBox ID="txtSubCategoryName" runat="server" Width="200px" AutoComplete="off" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="col">Category Name:</td>
            <td>
                <asp:DropDownList ID="ddlCategoryName" runat="server" Width="200px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td></td>
            <td><asp:Button ID="btnSave" runat="server" Text="Save" 
                    CssClass="button" OnClick="btnSave_Click" /></td>
        </tr>
    </table>
</div>
        </asp:View>
    </asp:MultiView></asp:Content>

