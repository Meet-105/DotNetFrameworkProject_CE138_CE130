<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="candidate_profile.aspx.cs" Inherits="JobPortal.candidate_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Candidate page</title>
    <meta name="viewport" content="" width="device-width" initial-scale="1.0" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">

           <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">JobPortal.com</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item">
          <asp:LinkButton CssClass="nav-link" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Jobs</asp:LinkButton>
          <%--<asp:LinkButton CssClass="nav-link" ID="LinkButton4" runat="server" OnClick="LinkButton3_Click">Home</asp:LinkButton>--%>
      </li>
      <li class="nav-item">
          <asp:LinkButton CssClass="nav-link" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Application Form</asp:LinkButton>
          <%--<asp:LinkButton CssClass="nav-link" ID="LinkButton5" runat="server" OnClick="LinkButton1_Click">Manage Candidates</asp:LinkButton>--%>
        <%--<a class="nav-link" href="#">Features</a>--%>
      </li>
      <li class="nav-item">
          <%--<asp:LinkButton CssClass="nav-link" ID="LinkButton6" runat="server" OnClick="LinkButton2_Click">Manage Jobs</asp:LinkButton>--%>
        <%--<a class="nav-link" href="#">Pricing</a>--%>
      </li>
      <%--<li class="nav-item">--%>
           
        <%--<a class="nav-link" href="#">Disabled</a>--%>
      <%--</li>--%>
    </ul>
    
     
      
  </div>
    <div class="d-flex justify-content-end">
        <asp:LinkButton CssClass="btn btn-outline-danger my-2 my-sm-0" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Logout</asp:LinkButton>
       <%--<asp:LinkButton  ID="LinkButton7" runat="server" OnClick="LinkButton4_Click">Logout</asp:LinkButton>--%>
    </div>
</nav>
           <%-- <nav >
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">View Jobs</asp:LinkButton>&nbsp;
                 <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Application Form</asp:LinkButton>&nbsp;
                <a href="">About Us</a>&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Logout</asp:LinkButton>
            </nav>--%>
     
            <div class="container" id="reg_form" runat="server">
                <center><h3 class="mb-4">Application Form</h3></center>
                <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <div class="w3-container">

                    <p>
                        <asp:TextBox ID="TextBox1" class="w3-input" runat="server"></asp:TextBox>
                        <label>Full Name</label>
                    </p>
                    <p>
                        <select id="Select1" runat="server">
                            <option>Engineering</option>
                            <option>Diploma</option>
                            <option>B.B.A</option>
                        </select>
                        <label>Stream</label>
                    </p>
                    <p>
                        <asp:Button ID="Button1" class="w3-btn w3-blue" runat="server" Text="Register" OnClick="Button1_Click" />
                    </p>
                </div>
                    </div>
                    <div class="col-2"></div>
                </div>
                
            </div>
      
            <center>
                <div class="container mt-4">
                <asp:GridView Width="70%" ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>

                </div>  
            </center>
            <center>
                <div class="container mt-4">
                    <h1 id="p1" runat="server"></h1>
                </div>
            </center>
        
    </form>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
