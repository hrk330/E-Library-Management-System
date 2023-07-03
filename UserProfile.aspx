<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Elibrary_Project.UderProfile" %>
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
      <div class="row" style="margin-bottom:50px">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/generaluser.png" />
                        </center>
                        
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Profile</h4>
                           <span>Account Status - </span>
                           <asp:Label class="badge rounded-pill text-bg-info" ID="Label1" runat="server" Text="Your status"></asp:Label>
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
                                <label style="margin-top:10px">Full Name</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"                  runat="server"  placeholder="Full Name"></asp:TextBox>
                                </div>
                            
                                    
                             

                            </div>

                            <div class="col-md-6">
                                <label style="margin-top:10px">Date Of Birth</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"                  runat="server"  placeholder="Password"                              TextMode="Date"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>

                  </div>

                  <div class="row">
                            <div class="col-md-6">
                                <label style="margin-top:10px">Contact Number</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"                  runat="server"  placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            
                                    
                             

                            </div>

                            <div class="col-md-6">
                                <label style="margin-top:10px">Email ID</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox4"                  runat="server"  placeholder="Email"                              TextMode="Email"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>



                  </div>



                  <div class="row">
                            <div class="col-md-4">
                                <label style="margin-top:10px">State</label>
                                <div class="form-group" style="margin-top:10px">

                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Punjab" Value="Punjab" />
                                        <asp:ListItem Text="Sindh" Value="Sindh" />
                                        <asp:ListItem Text="Balochistan" Value="Balochistan" />
                                        <asp:ListItem Text="Khyber Pakhtun Khawa" Value="Khyber Pakhtun                     Khawa" />
                                        <asp:ListItem Text="Gilgit Baltistan" Value="Gilgit Baltistan" />
                                        <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                            
                                   </asp:DropDownList>

                                </div>
                            </div>

                            <div class="col-md-4">
                                <label style="margin-top:10px">City</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox Class="form-control" ID="TextBox6"                  runat="server"  placeholder="City"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>
                            <div class="col-md-4">
                                <label style="margin-top:10px">Pin Code</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox7"                  runat="server"  placeholder="Pin Code"                              TextMode="Number"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>



                  </div>


                 <div class="row">
                            <div class="col">
                                <label style="margin-top:10px">Full Address</label>
                                <div class="form-group" style="margin-top:10px">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"                                  runat="server"  placeholder="Full Address"                                               TextMode="MultiLine"></asp:TextBox>

                     

                                </div>


                            </div>

         



                  </div>


                  <div style="margin-top:10px" class="row">
                            <div class="col">
                                <center>
                                <span class="badge text-bg-primary">Login Credentials</span>       
                                </center>
                           </div>

                  </div>


                  <div class="row">
                     <div class="col-md-4" >
                        <label style="margin-top:15px">User ID</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" style="margin-top:10px" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:15px">Old Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" style="margin-top:10px" ID="TextBox9" runat="server" placeholder="Old Passcode" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:15px">New Password</label>
                        <div class="form-group">
                           <asp:TextBox class="form-control" ID="TextBox10" style="margin-top:10px" runat="server" placeholder="New Passcode" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-8 mx-auto">
                        <center>
                           <div style="margin-top:15px" class="form-group">
                              <asp:Button class="btn btn-primary btn-block btn-lg" style="width:100%" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                           </div>
                        </center>
                     </div>
                  </div>
               </div>
            </div>
            <a style="text-decoration:none" href="HomePage.aspx" > << Back to Home </a><br /><br />
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <img width="100px" src="images/books.png"/>
                            
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Your Issued Books</h4>
                           <asp:Label class="badge rounded-pill text-bg-info" ID="Label2" runat="server" Text="Your books info"></asp:Label>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString6 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString6.ProviderName %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>

                     <div class="col">
                      <asp:GridView class="table table-dark table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">

                            <Columns>
                                <asp:BoundField DataField="member_id" HeaderText="member_id" SortExpression="member_id" />
                                <asp:BoundField DataField="member_name" HeaderText="member_name" SortExpression="member_name" />
                                <asp:BoundField DataField="book_id" HeaderText="book_id" SortExpression="book_id" />
                                <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                <asp:BoundField DataField="issue_date" HeaderText="issue_date" SortExpression="issue_date" />
                                <asp:BoundField DataField="due_date" HeaderText="due_date" SortExpression="due_date" />
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
