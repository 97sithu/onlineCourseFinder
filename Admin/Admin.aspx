<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 362px;
        }

        .auto-style2 {
            width: 367px;
        }

        .auto-style3 {
            width: 963px;
        }

        .auto-style4 {
            height: 48px;
        }
    </style>
    <link href="../TextFile.css" rel="stylesheet" />
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
                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button site-btn btn btn" OnClick="btnNew_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button site-btn btn btn" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button site-btn btn btn" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button site-btn btn btn" OnClick="btnPrint_Click" />
                        Admin Name :<asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server" OnTextChanged="txtSearch_TextChanged" autocomplete="Off" Style="border-style: inset;" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="AdminID" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="AdminID" HeaderText="AdminID" Visible="False" />
                                <asp:BoundField DataField="AdminName" HeaderText="Admin Name" />
                                <asp:BoundField DataField="Password" HeaderText="Password" Visible="False" />
                                <asp:TemplateField HeaderText="Select">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="btnEdit" CommandName="Select" runat="server">
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

            <%--<asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label>
            <asp:TextBox ID="txtAdminID" runat="server" Visible="false"></asp:TextBox>
           <table style="color:#000000; border:1px solid #000000; height: 287px;" class=" table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped">
                <tr>
                    <td colspan="2" class="auto-style4">&nbsp; <strong>&nbsp; New Admin</strong></td>                    
                </tr>
                <tr>
                    <td class="col">Admin Name :</td>
                     <td class="auto-style3"> <asp:TextBox ID="txtAdminName" runat="server" Width="283px" autocomplete="Off"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="col">Password :</td>
                    <td class="auto-style3"> <asp:TextBox ID="txtPassword" runat="server" Width="281px" TextMode="Password" ></asp:TextBox></td>
                </tr>
                <tr>
                     <td class="col">ConfirmPassword:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox>
                    </td> 
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style3">
                       <asp:Button ID="btnSave" runat="server" Text="Save"  CssClass="button" OnClick="btnSave_Click" Width="143px" />
                    </td>
                </tr>
               
            </table>--%>
            <<div class="login-page" style="height: auto">
                <div class="form" style="height: auto">
                    <h1><strong>Admin</strong></h1>
                    <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label><br />
                    <asp:TextBox ID="txtAdminID" runat="server" Visible="false"></asp:TextBox>
                    <div>
                        <label style="float: left">AdminName:</label>
                        <asp:TextBox ID="txtAdminName" runat="server" Width="283px" autocomplete="Off"></asp:TextBox></div>
                    <div>
                        <label style="float: left">Password:</label><asp:TextBox ID="txtPassword" runat="server" Width="281px" TextMode="Password"></asp:TextBox></div>
                    <div>
                        <label style="float: left">ConfirmPassword:</label><asp:TextBox ID="txtConfirmPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox></div>
                    <div>
                        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button btn btn" BackColor="#BB2606" Style="color: white" OnClick="btnSave_Click" Width="143px" /></div>
                </div>
            </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

