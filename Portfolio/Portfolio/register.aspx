<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Portfolio.register" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="../css/style2.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div class="container">
            <div class="register-box">
                <h2>Register</h2>
                <div>
                    <input type="text" id="txtusername" name="username" runat="server" placeholder="username" oninput="validateUsername()" required="required" />
                    <div id="usernameError" class="error" style="display: none; color: red;">กรุณากรอก username ให้มีความยาว 4-20 ตัวอักษร</div>
                </div>
                <div>
                    <input type="password" id="txtpassword" name="password" runat="server" placeholder="password" oninput="validatePassword()" required="required" />
                    <div id="passwordError" class="error" style="display: none; color: red;">กรุณากรอก password ให้มีความยาวมากกว่า 8 ตัวอักษร</div>
                </div>
                <div>
                    <input type="password" id="txtconfirmPassword" name="confirmPassword" runat="server" placeholder="confirmPassword" oninput="validateConfirmPassword()" required="required" />
                    <div id="confirmPasswordError" class="error" style="display: none; color: red;">Password และ Confirm Password ไม่ตรงกัน</div>
                </div>
                <div>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" OnClientClick="return validateForm();" />
                </div>
                <p>Already have an account? <a href="login.aspx" class="register-link">Login</a></p>


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

            </div>
        </div>


        <script type="text/javascript">
            function validateForm() {
                var usernameInput = document.getElementById('txtusername').value;
                var passwordInput = document.getElementById('txtpassword').value;
                var confirmPasswordInput = document.getElementById('txtconfirmPassword').value;
                var usernameError = document.getElementById('usernameError');
                var passwordError = document.getElementById('passwordError');
                var confirmPasswordError = document.getElementById('confirmPasswordError');

                var isValid = true;

                if (usernameInput.length < 4 || usernameInput.length > 20) {
                    usernameError.style.display = 'block';
                    isValid = false;
                } else {
                    usernameError.style.display = 'none';
                }

                if (passwordInput.length < 8) {
                    passwordError.style.display = 'block';
                    isValid = false;
                } else {
                    passwordError.style.display = 'none';
                }

                if (passwordInput !== confirmPasswordInput) {
                    confirmPasswordError.style.display = 'block';
                    isValid = false;
                } else {
                    confirmPasswordError.style.display = 'none';
                }

                return isValid;
            }
        </script>
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
