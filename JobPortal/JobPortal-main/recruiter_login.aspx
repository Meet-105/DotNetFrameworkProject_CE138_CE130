<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recruiter_login.aspx.cs" Inherits="JobPortal.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Portal</title>
    <meta name="viewport" content="" width="device-width" initial-scale="1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Just an image -->
<nav class="navbar navbar-dark bg-dark d-flex justify-content-center">
  <a class="navbar-brand" href="#">JobPortal.com</a>
</nav>
           
            <br />
            <div class="container" id="f1" runat="server">
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <center><h3 class="mb-4">Login Form</h3></center>

                <div class="w3-container">

                    <p>

                        <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
                        <label>User Name</label>
                    </p>
                    <p>
                        <asp:TextBox ID="TextBox2" class="w3-input" runat="server"></asp:TextBox>
                        <label>Password</label>
                    </p>
                    <p>
                        
                        <asp:Button ID="Button1" class="w3-btn w3-blue" runat="server" Text="Login" OnClick="Button1_Click" />
                    </p>
                    <p>
                        <asp:Label ID="Label1" runat="server" Text="Role"></asp:Label>
                    </p>
                </div>
                    </div>
                    <div class="col-2"></div>
                </div>
               
                
            </div>
            </div>
                <%--<div>
                    <p id="p1" runat="server">
                    </p>
                </div >
                    <p id="p2" runat="server">
                    </p>
                </div >
                <div >
                    <p id="p3" runat="server">
                    </p>
                </div>--%>
           
    </form>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</body>
</html>
