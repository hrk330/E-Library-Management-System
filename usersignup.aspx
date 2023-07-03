<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="Elibrary_Project.usersignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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



     <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" style="margin-top:100px">
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
                                    <h4>User Registration</h4>
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
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox5"                  runat="server"  placeholder="Full Name"></asp:TextBox>
                                </div>
                            
                                    
                             

                            </div>

                            <div class="col-md-6">
                                <label style="margin-top:10px">Date Of Birth</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox6"                  runat="server"  placeholder="Password"                              TextMode="Date"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label style="margin-top:10px">Contact Number</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"                  runat="server"  placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            
                                    
                             

                            </div>

                            <div class="col-md-6">
                                <label style="margin-top:10px">Email ID</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"                  runat="server"  placeholder="Email"                              TextMode="Email"></asp:TextBox>
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
                                    
                                    <asp:TextBox Class="form-control" ID="TextBox4"                  runat="server"  placeholder="City"></asp:TextBox>
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
                                    <asp:TextBox CssClass="form-control" ID="TextBox3"                                  runat="server"  placeholder="Full Address"                                               TextMode="MultiLine"></asp:TextBox>

                     

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
                            <div class="col-md-6">
                                <label style="margin-top:10px">User ID</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox Class="form-control" ID="TextBox8"                  runat="server"  placeholder="User ID" ></asp:TextBox>
                                </div>
                            
                                    
                             

                            </div>

                            <div class="col-md-6">
                                <label style="margin-top:10px">Password</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox9"                  runat="server"  placeholder="Password"                              TextMode="Password"></asp:TextBox>
                                </div>
                            
                                  
                             

                            </div>



                        </div>

                        <div class="row">
                            <div class="col">
                                

                                
                                <div class="form-group" style="margin-top:15px">
                                    <asp:Button style="width:100%" class="btn btn-success               btn-lg" ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                        
                                </div>

                  
                                   
                                    
                           </div>

                              

                           

                       </div>
                    </div>

                </div>

                <div style="margin-bottom:70px">

               
                    <a style="text-decoration:none" href="HomePage.aspx" > << Back to Home </a>

                    <br />
                    
                </div>

            </div>
        </div>
      </div>

    




</asp:Content>
