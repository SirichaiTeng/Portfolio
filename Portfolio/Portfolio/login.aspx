<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Portfolio.login" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="login-box">
                <h2>Login</h2>
                <input type="text" placeholder="Username" runat="server" id="txtUsername" />
                <input type="password" placeholder="Password" runat="server" id="txtPassword" />
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                <p>Don't have an account? <a href="register.aspx" class="register-link">Register</a></p>
            </div>
        </div>
        <%------- modal -------%>
        <div id="myModalregister" class="w3-modal">
            <div class="w3-modal-content w3-animate-top w3-card-4">
                <header class="w3-container w3-teal">
                    <span onclick="closeModalAndRedirect()" class="w3-button w3-display-topright">&times;</span>
                    <asp:Label ID="lblModaltitleregister" runat="server" Text="การแจ้งเตือน" CssClass=" modal-title fs-2"></asp:Label>
                </header>
                <div class="w3-container">
                    <asp:Label ID="lblModalbodyregister" runat="server" Text="Modal body" CssClass="text-danger fs-4 fw-bold"></asp:Label>
                </div>
                <footer class="w3-container w3-teal">
                </footer>
            </div>
        </div>
        <script type="text/javascript">
            function showSuccessModal() {
                document.getElementById('myModalregister').style.display = 'block';
            }
            function closeModalAndRedirect() {
                document.getElementById('myModalregister').style.display = 'none';
                window.location.href = 'login.aspx';
            }
        </script>
    </form>
</body>
</html>
