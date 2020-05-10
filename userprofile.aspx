<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ELibraryManagement.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
               <div class="row">
                   <div class="col">
                       <center>  <img width="100px" src="imgs/generaluser.png" />
                        
                     </center>
                   </div>
               </div>

                        <div class="row">
                            <div class="col"><center><h4>Your Profile</h4>
                                <span>Account Status - </span>
                                <asp:Label ID="Label1" class="badge badge-pill badge-info" runat="server" Text="Your Status"></asp:Label>
                                             </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Full Name" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date Of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Date Of Birth" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Contact Number" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Email ID" CssClass="form-control" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="Value" Value="Text"  />
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"  />
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"  />
                                        <asp:ListItem Text="Assam" Value="Assam"  />
                                        <asp:ListItem Text="Bihar" Value="Bihar"  />
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"  />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"  />
                                        <asp:ListItem Text="Goa" Value="Goa"  />
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"  />
                                        <asp:ListItem Text="Haryana" Value="Haryana"  />
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"  />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir"  />
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand"  />
                                        <asp:ListItem Text="Karnataka" Value="Karnataka"  />
                                        <asp:ListItem Text="Kerala" Value="Kerala"  />
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"  />
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"  />
                                        <asp:ListItem Text="Manipur" Value="Manipur"  />
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya"  />
                                        <asp:ListItem Text="Mizoram" Value="Mizoram"  />
                                        <asp:ListItem Text="Nagaland" Value="Nagaland"  />
                                        <asp:ListItem Text="Odisha" Value="Odisha"  />
                                        <asp:ListItem Text="Punjab" Value="Punjab"  />
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"  />
                                        <asp:ListItem Text="Sikkim" Value="Sikkim"  />
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"  />
                                        <asp:ListItem Text="Telangana" Value="Telangana"  />
                                        <asp:ListItem Text="Tripura" Value="Tripura"  />
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"  />
                                        <asp:ListItem Text="Uttrakhand" Value="Uttrakhand"  />
                                        <asp:ListItem Text="West Bengal" Value="West Bengal"  />

                                    </asp:DropDownList>   
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" placeholder="City" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox7" runat="server" placeholder="Pincode" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Full Address" CssClass="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>

                        </div>
                        <div class="row">
                            <div class="col">
                                   <center><span class="badge badge-pill badge-primary"><h7>Login Credentials</h7></span> </center>                           
                            </div>
                        </div>
                         <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox8" runat="server" placeholder="User ID" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Old Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-4">
                                <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-8 mx-auto">
                            <center>
                                <div class="form-group">
                                     <asp:Button CssClass="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" />
                                </div>
                                </center>
                            </div>
                        </div>
                    </div>

                </div>
            <a href="homepage.aspx">Back to home</a><br /><br />
            </div>
            
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
               <div class="row">
                   <div class="col">
                       <center>  <img width="100px" src="imgs/books.png" />
                           
                     </center>
                   </div>
               </div>

                        <div class="row">
                            <div class="col"><center><h4>Your Issued Books</h4>
                                
                                <asp:Label ID="Label2" class="badge badge-pill badge-info" runat="server" Text="Your Books Info"></asp:Label>
                                             </center>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                               
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>
                    
                    
                    </div>

                </div>
            </div>
        </div>
        
    </div>
</asp:Content>
