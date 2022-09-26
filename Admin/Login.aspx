<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

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
                <h1>Admin Login</h1>
                <asp:Label ID="lblError" runat="server" Text="" style="color:red;"></asp:Label><br />
                <asp:TextBox ID="txtAdminName" runat="server" placeholder="AdminName"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="btnLogin_Click" Height="67px" Width="100%" />
            </div>
        </div>
    </form>
</body>
</html>
