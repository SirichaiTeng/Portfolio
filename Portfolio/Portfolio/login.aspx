<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Portfolio.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="login-box">
                <h2>Login</h2>
                <input type="text" placeholder="Username" runat="server" id="txtUsername" />
                <input type="password" placeholder="Password" runat="server" id="txtPassword" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <p>Don't have an account? <a href="register.aspx" class="register-link">Register</a></p>
            </div>
        </div>
    </form>
</body>
</html>
