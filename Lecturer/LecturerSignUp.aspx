<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LecturerSignUp.aspx.cs" Inherits="Lecturer_LecturerSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<link href="../login.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">
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
                        <label style="float: left">Bios:</label><asp:TextBox ID="txtBios" runat="server" Width="283px" TextMode="MultiLine" style="margin-left:-1px" Height="86px"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">WorkingPlace:</label><asp:TextBox ID="txtWorkAt" runat="server" Width="283px" AutoComplete="off"></asp:TextBox>
                    </div>
                    <div>
                        <label style="float: left">Certificate:</label><asp:TextBox ID="txtCertificate" runat="server" Width="283px" AutoComplete="off"></asp:TextBox>
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
    </form>
   
</body>
</html>
