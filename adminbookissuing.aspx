<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibraryManagement.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$(document).ready(function () {
            //$('.table').DataTable();
            // });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            //$('.table1').DataTable();
        });
   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
<div class="col-md-5">
                <div class="card">
                    <div class="card-body">
               

                        <div class="row">
                            <div class="col"><center><h4>Book Issuing</h4>
                            </div>
                        </div>
                        <div class="row">
                   <div class="col">
                       <center>  <img width="100px" src="imgs/books1.png" />
                        
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
                                <label>Member Id</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Member Id" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Book ID" CssClass="form-control" ></asp:TextBox>
                                    <asp:Button Class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                        </div>
                                </div>
                            </div>

                            

                        </div>
                         <div class="row">
                           
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Member Name" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Book Name" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            

                            

                        </div>
                        <div class="row">
                           
                            <div class="col-md-6">
                                <label>Start Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox5" runat="server" placeholder="Member Name" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" runat="server" placeholder="Book Name" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            

                            

                        </div>
                        
                    <div class="row">
                            <div class="col-6">
                                <asp:Button class="btn btn-primary btn-lg btn-block" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                            </div>
                         <div class="col-6">
                                <asp:Button class="btn btn-success btn-lg btn-block" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
                            </div>
                         
                        </div>
                       
                       
                    </div>

                </div>
                <br />
            <a href="homepage.aspx">Back to home</a><br /><br />
            </div>
            
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
               
                             <div class="row">
                            <div class="col"><center><h4>Issued Book List</h4>
                                
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                               
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                        <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                        <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    
                    
                    </div>

                </div>
            </div>
        </div>
        
    </div>

</asp:Content>
