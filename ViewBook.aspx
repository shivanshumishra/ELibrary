﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBook.aspx.cs" Inherits="ELibraryManagement.ViewBook" %>
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
    <div class="container">
        <div class="row">
            <div class="col">
                <center>
                    <h1>Books Inventory</h1>
                </center>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <hr />
            </div>
        </div>
           <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                
                                <ControlStyle Font-Bold="False" />
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-lg-10">
                                                    <div class="row">
                                                        <div class="col-12">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="X-Large"></asp:Label>
                                                        </div>
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-12">

                                                            Author-<asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                            &nbsp;| Genre-<asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                            &nbsp;| Language-<asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>

                                                        </div>
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-12">

                                                            Publisher-<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                            &nbsp;| Publish Date-<asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                            &nbsp;| Pages-<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                            &nbsp;| Edition-<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>

                                                        </div>
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-12">

                                                            Cost-<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                            &nbsp;| Actual Stock-<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                            &nbsp;| Available-<asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>

                                                        </div>
                                                    </div>

                                                     <div class="row">
                                                        <div class="col-12">

                                                            Description-<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-lg-2">
                                         <asp:Image Class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />

                                                </div>
                                            </div>

                                        </div>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
        </div>
    </div>
</asp:Content>
