<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LecturerLogin.aspx.cs" Inherits="Lecturer_LecturerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-page">

            <div class="form">
                <h1>Lecturer Login</h1>
                <asp:Label ID="lblError" runat="server" Text="" Visible="false" style="color:red"></asp:Label><br />
                <asp:TextBox ID="txtLecturerName" runat="server" placeholder="LecturerName"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="btnLogin_Click" Height="67px" Width="100%" />
                <p class="message">Not registered? <a href="LecturerSignUp.aspx">Create an account</a></p>
            </div>
        
        </div>
    </form>
</body>
</html>
