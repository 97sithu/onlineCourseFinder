<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Admin_Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../style.css" rel="stylesheet" />
    <link href="../TextFile.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Label ID="lblError1" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="padding-top: 9px">
                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button site-btn btn btn" OnClick="btnNew_Click1" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button site-btn btn btn" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button site-btn btn btn" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button site-btn btn btn" OnClick="btnPrint_Click1" />
                        <label style="font-size: 14px">Category Name:</label><asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server" OnTextChanged="txtSearch_TextChanged" autocomplete="Off" Style="border-style: inset;" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped"
                            CellPadding="5" CellSpacing="1" DataKeyNames="CatID" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">

                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="CatID" HeaderText="CatID" Visible="False" />
                                <asp:BoundField DataField="CatName" HeaderText="Category Name" />
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">
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
            <%--           <div>
<div>
    <asp:Label ID="lblError2" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label>
    <asp:TextBox ID="txtCatID" runat="server" Visible="False"></asp:TextBox>
</div>
    <table style="color: #000000; border: 1px solid #000000">
        <tr>
            <th colspan="2" class="tablehead">Category Entry</th>
            <td></td>
        </tr>
        <tr>
            <td class="col">Category Name:</td>
            <td>
                <asp:TextBox ID="txtCategoryName" runat="server" Width="200px" AutoComplete="off"></asp:TextBox>
                
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td colspan="2"><asp:Button ID="btnSave" runat="server" Text="Save" 
                    CssClass="button" OnClick="btnSave_Click"/></td>
            
        </tr>
    </table>
</div>--%>
            <div class="login-page" style="height: auto; margin-top: 50px;">
                <div class="form" style="height: auto">
                    <h1><strong>Category</strong></h1>
                    <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label><br />
                    <asp:TextBox ID="txtCatID" runat="server" Visible="False"></asp:TextBox>
                    <div>
                        <label style="float: left">Category Name:</label>
                        <asp:TextBox ID="txtCategoryName" runat="server" Width="283px" autocomplete="Off"></asp:TextBox></div>
                    <div>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button btn btn" BackColor="#BB2606" Style="color: white" OnClick="btnSave_Click" Width="143px" /></div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

