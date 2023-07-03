<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Elibrary_Project.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin-top:100px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/generaluser.png" />
                                </center>

                            </div>

                        </div>



                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                            
                                    <hr>
                             

                            </div>

                        </div>


                        <div class="row">
                            <div class="col">
                                <label style="margin-top:10px">Member ID</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"                  runat="server"  placeholder="Member ID"></asp:TextBox>
                                </div>

                                

                                 <label style="margin-top:10px">Password</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"                  runat="server"  placeholder="Password"                              TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group" style="margin-top:15px">
                                    <asp:Button style="width:100%" class="btn btn-success               btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                        
                                </div>

                                <div class="form-group" style="margin-top:10px">
                                    <a style="text-decoration:none" href="usersignup.aspx" ><input style="width:100%" class="btn btn-info btn-lg"                      id="Button2" type="button" value="Sign Up" /></a>
                                   
                                    
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
