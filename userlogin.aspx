<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibraryManagement.userlogin" %>
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
                       <center>  <img width="150px" src="imgs/generaluser.png" />
                        
                     </center>
                   </div>
               </div>

                        <div class="row">
                            <div class="col"><center><h3>Member Login</h3></center></div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Member ID" CssClass="form-control" ></asp:TextBox>
                                </div>
                                <label>Member Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                     <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
                                </div>
                                <div class="form-group">
                              <a href="usersignup.aspx"><input id="button2" class="btn btn-info btn-block btn-lg" type="button" value="Sign Up" /></a>
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
