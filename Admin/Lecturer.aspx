<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Lecturer.aspx.cs" Inherits="Admin_Lecturer" %>

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
                        <asp:Button ID="btnNew" runat="server" Text="New" CssClass="button site-btn btn btn" OnClick="btnNew_Click" />
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="button site-btn btn btn" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="button site-btn btn btn" OnClick="btnDelete_Click" />
                        <asp:Button ID="btnPrint" runat="server" Text="Print" CssClass="button site-btn btn btn" OnClick="btnPrint_Click" />
                        Lecturer Name :<asp:TextBox ID="txtSearch" AutoPostBack="true" runat="server" OnTextChanged="txtSearch_TextChanged" autocomplete="Off" Style="border-style: inset;" Width="494px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="LecturerID" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="LecturerID" HeaderText="LecturerID" Visible="False" />
                                <asp:BoundField DataField="LecturerName" HeaderText="Lecturer Name" />
                                <asp:BoundField DataField="LecturerEmail" HeaderText="Email" />
                                <asp:BoundField DataField="LecturerPhone" HeaderText="PhoneNumber" />
                                <asp:BoundField DataField="LecturerPassword" HeaderText="Password"  Visible="false"/>
                                <asp:BoundField DataField="Bios" HeaderText="Bios" Visible="false" />
                                <asp:BoundField DataField="WorkAt" HeaderText="WorkPlace" />
                                <asp:BoundField DataField="Certificate" HeaderText="Certificate" />
                                <asp:BoundField DataField="Active" HeaderText="Active" />
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
       <div class="login-page" style="height: auto">
                <div class="form" style="height: auto">
                    <h1><strong>Lectuerer</strong></h1>
                    <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label><br />
                    <asp:TextBox ID="txtLectureID" runat="server" Visible="false"></asp:TextBox>
                    <div>
                        <label style="float: left">LectuereName:</label>
                        <asp:TextBox ID="txtLecturerName" runat="server" Width="283px" autocomplete="Off"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Email:</label><asp:TextBox ID="txtEmail" runat="server" Width="281px" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">PhoneNumber:</label><asp:TextBox ID="txtPhone" runat="server" Width="283px" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Bios:</label><asp:TextBox ID="txtBios" runat="server" Width="350px" TextMode="MultiLine" style="width:283px;margin-left:-1px"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">WorkingPlace:</label><asp:TextBox ID="txtWorkAt" runat="server" Width="258px" AutoComplete="off" Height="57px"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Certificate:</label><asp:TextBox ID="txtCertificate" runat="server" Width="283px" AutoComplete="off"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Active:</label><asp:DropDownList ID="ddlActiveName" runat="server"  Width="283px" Height="57px" style="margin-left:-1px">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label style="float: left">Password:</label><asp:TextBox ID="txtPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">ConfirmPassword:</label><asp:TextBox ID="txtConfirmPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <div>

                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button btn btn" BackColor="#BB2606" Style="color: white" OnClick="btnSave_Click" Width="143px" />
                        </div>
                    </div>
                </div>
                </div>
        </asp:View>
    </asp:MultiView>
</asp:Content>

  <%-- <tr>
                    <td class="auto-style2">
                        <asp:GridView ID="GridView1" CssClass="table  table-sm table-bordered table-condensed table-responsive-sm table-hover table-striped" runat="server" AutoGenerateColumns="False" CellPadding="5" CellSpacing="1" DataKeyNames="AdminID" Width="100%"
                            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="No" HeaderText="No" />
                                <asp:BoundField DataField="LectuereID" HeaderText="LecturerID" Visible="False" />
                                <asp:BoundField DataField="LectuererName" HeaderText="Lecturer Name" />
                                <asp:BoundField DataField="LecturerEmail" HeaderText="Email" />
                                <asp:BoundField DataField="LecturerPhone" HeaderText="PhoneNumber" />
                                <asp:BoundField DataField="LecturerPassword" HeaderText="Password"  Visible="false"/>
                                <asp:BoundField DataField="Bios" HeaderText="Bios" Visible="false" />
                                <asp:BoundField DataField="WorkAt" HeaderText="WorkPlace" />
                                <asp:BoundField DataField="Certificate" HeaderText="Certificate" />
                                <asp:BoundField DataField="Active" HeaderText="Active" />

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
                </tr>--%>
  <%--<div class="login-page" style="height: auto">
                <div class="form" style="height: auto">
                    <h1><strong>New Lectuerer</strong></h1>
                    <asp:Label ID="lblError2" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="10pt"></asp:Label><br />
                    <asp:TextBox ID="txtLectureID" runat="server" Visible="false"></asp:TextBox>
                    <div>
                        <label style="float: left">LectuereName:</label>
                        <asp:TextBox ID="txtLecturerName" runat="server" Width="283px" autocomplete="Off"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Email:</label><asp:TextBox ID="txtEmail" runat="server" Width="281px" TextMode="Email"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">PhoneNumber:</label><asp:TextBox ID="txtPhone" runat="server" Width="283px" TextMode="Phone"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Bios:</label><asp:TextBox ID="txtBios" runat="server" Width="350px" TextMode="MultiLine"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">WorkingPlace:</label><asp:TextBox ID="txtWorkAt" runat="server" Width="283px" AutoComplete="off"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Active:</label><asp:DropDownList ID="ddlActiveName" runat="server">
                            <asp:ListItem Value="1">Yes</asp:ListItem>
                            <asp:ListItem Value="0">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <label style="float: left">Password:</label><asp:TextBox ID="txtPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">ConfirmPassword:</label><asp:TextBox ID="txtConfirmPassword" runat="server" Width="283px" TextMode="Password"></asp:TextBox>
                    </div>
                    <div>
                        <div>

                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="button btn btn" BackColor="#BB2606" Style="color: white" OnClick="btnSave_Click" Width="143px" />
                        </div>
                    </div>
                </div>
                </div>--%>