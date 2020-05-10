<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="ELibraryManagement.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
               <div class="row">
                   <div class="col">
                       <center>  <img width="150px" src="imgs/adminuser.png" />
                        
                     </center>
                   </div>
               </div>

                        <div class="row">
                            <div class="col"><center><h3>Admin Login</h3></center></div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Admin ID" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                     <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                                </div>
                                

                            </div>
                        </div>
                    </div>

                </div>
            <a href="homepage.aspx">Back to home</a><br /><br />
            </div>

        </div>
    </div>

</asp:Content>
