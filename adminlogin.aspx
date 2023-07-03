<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="Elibrary_Project.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        body {
            background-color: #1a1a1a;

        }
        .card{
            background-color:#4d4d4d;
           
        }

        #ad1{
            color:white;
            font-weight:700;
        }

        #lab1{
            color:white;
            font-weight:700;
        }
        
        #but1{
            margin-bottom:20px;
            margin-top:20px;
        }




    </style>

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card" style="margin-top:100px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="images/adminuser.png" />
                                    
                                </center>

                            </div>

                        </div>



                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 id="ad1">Admin Login</h3>
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
                                <label  id="lab1" style="margin-top:10px">Email</label>
                                <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox1"                  runat="server"  placeholder="Email"></asp:TextBox>
                                </div>

                                

                                 <label id="lab1" style="margin-top:10px">Password</label>
                                 <div class="form-group" style="margin-top:10px">
                                    
                                    <asp:TextBox CssClass="form-control" ID="TextBox2"                  runat="server"  placeholder="Password"                              TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group" id="but1" >
                                    <asp:Button style="width:100%" class="btn btn-success               btn-lg"  ID="Button1" runat="server"                                Text="Login" OnClick="Button1_Click" />
                        
                                </div>



                              

                            </div>

                        </div>
                    </div>

                </div>

                <div style="margin-bottom:70px">

               
                    <a style="text-decoration:none ;color:white" href="HomePage.aspx" > << Back to Home </a>

                    <br />
                    
                </div>

            </div>
        </div>

    </div>

</asp:Content>
