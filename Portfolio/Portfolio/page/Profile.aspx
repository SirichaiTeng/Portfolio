<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Portfolio.page.Profile" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>P R O F I L E</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/style.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="row">
                <div class="col-12 mb-3 text-center">
                    <img alt="sirichai" src="../img/profile.png" class="imgprofile" />
                </div>
                <div class="col-12 text-center">
                    <asp:Button ID="Button1" runat="server" CssClass="glowing-btn" Text="ENTER" />
                </div>

                <%------- modal -------%>
                <div id="myModalchecktoken" class="w3-modal">
                    <div class="w3-modal-content w3-animate-top w3-card-4">
                        <header class="w3-container w3-teal">
                            <span onclick="closeModalAndRedirect()" class="w3-button w3-display-topright">&times;</span>
                            <asp:Label ID="lblModaltitlechecktoken" runat="server" Text="การแจ้งเตือน" CssClass=" modal-title fs-2"></asp:Label>
                        </header>
                        <div class="w3-container">
                            <asp:Label ID="lblModalbodychecktoken" runat="server" Text="Modal body" CssClass="text-danger fs-4 fw-bold"></asp:Label>
                        </div>
                        <footer class="w3-container w3-teal">
                        </footer>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            function showSuccessModal() {
                document.getElementById('myModalchecktoken').style.display = 'block';
            }
            function closeModalAndRedirect() {
                document.getElementById('myModalchecktoken').style.display = 'none';
                window.location.href = '../login.aspx';
            }
        </script>
    </form>
</body>
</html>
