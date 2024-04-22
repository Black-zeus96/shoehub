<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="shoehub.Login" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SHOEHUB | LOGIN</title>
  <link rel="shortcut icon" href="Content/Images/favicon.ico">
  <link rel="stylesheet" href="Content/css/styles.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</head>

<body>
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <div class="position-relative overflow-hidden radial-gradient min-vh-100 d-flex align-items-center justify-content-center">
      <div class="d-flex align-items-center justify-content-center w-100">
        <div class="row justify-content-center w-100">
          <div class="col-md-8 col-lg-6 col-xxl-3">
            <div class="card mb-0">
              <div class="card-body">
                <a class="text-nowrap logo-img text-center d-block py-3 w-100">
                    <i class="fa-solid fa-shoe-prints primary-color fa-2xl"></i> 
                    <h2 class="mt-2">SHOEHUB</h2>
                     <span>Login</span>
                </a>
                 

                <!-- Single Form Tag -->
                <form runat="server">
                  <!-- Login Form -->
                  <div id="loginForm">
                    <!-- Error message span -->
                    <span id="errorSpan" runat="server" style="color: red;"></span>
                    <div class="mb-3">
                      <label for="UserName" class="form-label">Username</label>
                      <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" aria-describedby="emailHelp"></asp:TextBox>
                    </div>
                    <div class="mb-4">
                      <label for="password" class="form-label">Password</label>
                      <input type="password" class="form-control" id="txtPassword" runat="server">
                    </div>
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" Text="Login" OnClick="btnLogin_Click" />
                    <div class="d-flex align-items-center justify-content-center">
                        <p class="fs-4 mb-0 fw-bold">Dont have an account?</p>
                        <a class="text-primary fw-bold ms-2" href="register.aspx">Create an account</a>
                      </div>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="Content/libs/jquery/dist/jquery.min.js"></script>
  <script src="Content/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
