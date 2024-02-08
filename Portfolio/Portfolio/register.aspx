<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Portfolio.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="register-box">
                <h2>Register</h2>
                <div>
                    <input type="text" id="username" name="username" runat="server" placeholder="username" />
                </div>
                <div>
                    <input type="password" id="password" name="password" runat="server" placeholder="password"/>
                </div>
                <div>
                    <input type="password" id="confirmPassword" name="confirmPassword" runat="server" placeholder="confirmPassword"/>
                </div>
                <div>
                    <asp:Button ID="btnRegister" runat="server" Text="Register"/>
                </div>
                <p>Already have an account? <a href="login.aspx" class="register-link">Login</a></p>
            </div>
        </div>
    </form>
</body>
</html>
