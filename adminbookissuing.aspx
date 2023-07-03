<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="Elibrary_Project.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <script>
           $(document).ready(function ()
           {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           });




    </script>


    


   




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <style>

         tr.overdue-row {
            background-color: palevioletred !important;
         }




        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000; /* Higher z-index value to keep it above other elements */
        }

        .card {
            margin-top: 100px;
            
            /* Rest of your card styles */
        }




    </style>



    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5" style="margin-bottom:100px">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Book Issuing</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/books.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Member ID</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Book ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                              <asp:Button class="btn btn-dark btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Member Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>Book Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-6">
                        <label>Start Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <label>End Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-6">
                        <asp:Button ID="Button2" style="width:100%;margin-top:10px" class="btn btn-block btn-lg btn-primary" runat="server" Text="Issue" OnClick="Button2_Click" />
                     </div>
                     <div class="col-6">
                        <asp:Button ID="Button4" style="width:100%;margin-top:10px" class="btn btn-lg btn-success" runat="server" Text="Return" OnClick="Button4_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a style="text-decoration:none;margin-top:10px" href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7" style="margin-bottom:100px">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Issued Book List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString5 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString5.ProviderName %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
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
