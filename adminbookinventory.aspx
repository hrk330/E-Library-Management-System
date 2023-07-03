<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="Elibrary_Project.adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
       <script type="text/javascript">

           $(document).ready(function ()
           {
                $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           });

           function readURL(input)
           {
               if (input.files && input.files[0])
               {
                   var reader = new FileReader();

                   reader.onload = function (e)
                   {
                       $('#imgview').attr('src', e.target.result);
                   };

                   reader.readAsDataURL(input.files[0]);
               }
           }

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
                           <h4>Book Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                           <img id="imgview" width="100px" height="150pxaz " src="bookinventory/books1.png"   />
                            
                            
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col" >
                        <asp:FileUpload onchange="readURL(this)" class="form-control" ID="FileUpload1" runat="server" />
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label style="margin-top:10px">Book ID</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                               <asp:Button CssClass="btn btn-primary " ID="Button4" runat="server" Style="height:40px;margin-top:10px"  Text="Go" OnClick="Button4_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label style="margin-top:10px">Book Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label style="margin-top:10px">Language</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                              <asp:ListItem Text="English" Value="English" />
                              <asp:ListItem Text="Hindi" Value="Hindi" />
                              <asp:ListItem Text="Marathi" Value="Marathi" />
                              <asp:ListItem Text="French" Value="French" />
                              <asp:ListItem Text="German" Value="German" />
                              <asp:ListItem Text="Urdu" Value="Urdu" />
                           </asp:DropDownList>
                        </div>
                        <label style="margin-top:10px">Publisher Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" style="margin-top:10px" ID="DropDownList2" runat="server">
                              <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                              <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Author Name</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList3" runat="server">
                              <asp:ListItem Text="A1" Value="a1" />
                              <asp:ListItem Text="a2" Value="a2" />
                           </asp:DropDownList>
                        </div>
                        <label style="margin-top:10px">Publish Date</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox3" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Genre</label>
                        <div class="form-group">
                           <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                              <asp:ListItem Text="Action" Value="Action" />
                              <asp:ListItem Text="Adventure" Value="Adventure" />
                              <asp:ListItem Text="Comic Book" Value="Comic Book" />
                              <asp:ListItem Text="Self Help" Value="Self Help" />
                              <asp:ListItem Text="Motivation" Value="Motivation" />
                              <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                              <asp:ListItem Text="Wellness" Value="Wellness" />
                              <asp:ListItem Text="Crime" Value="Crime" />
                              <asp:ListItem Text="Drama" Value="Drama" />
                              <asp:ListItem Text="Fantasy" Value="Fantasy" />
                              <asp:ListItem Text="Horror" Value="Horror" />
                              <asp:ListItem Text="Poetry" Value="Poetry" />
                              <asp:ListItem Text="Personal Development" Value="Personal Development" />
                              <asp:ListItem Text="Romance" Value="Romance" />
                              <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                              <asp:ListItem Text="Suspense" Value="Suspense" />
                              <asp:ListItem Text="Thriller" Value="Thriller" />
                              <asp:ListItem Text="Art" Value="Art" />
                              <asp:ListItem Text="Autobiography" Value="Autobiography" />
                              <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                              <asp:ListItem Text="Health" Value="Health" />
                              <asp:ListItem Text="History" Value="History" />
                              <asp:ListItem Text="Math" Value="Math" />
                              <asp:ListItem Text="Textbook" Value="Textbook" />
                              <asp:ListItem Text="Science" Value="Science" />
                              <asp:ListItem Text="Travel" Value="Travel" />
                           </asp:ListBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label style="margin-top:10px">Edition</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox9" runat="server" placeholder="Edition"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Book Cost(per unit)</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox10" runat="server" placeholder="Book Cost(per unit)" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Pages</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox11" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label style="margin-top:10px">Actual Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Current Stock</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox5" runat="server" placeholder="Book Cost(per unit)" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label style="margin-top:10px">Issued Books</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox7" runat="server" placeholder="Pages" TextMode="Number" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <label style="margin-top:10px">Book Description</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" style="margin-top:10px" ID="TextBox6" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-4">
                        <asp:Button ID="Button1" style="width:100%; margin-top:15px" class="btn btn-lg btn-block btn-success" runat="server" Text="Add" OnClick="Button1_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button3" style="width:100%; margin-top:15px" class="btn btn-lg btn-block btn-warning" runat="server" Text="Update" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                        <asp:Button ID="Button2" style="width:100%; margin-top:15px" class="btn btn-lg btn-block btn-danger" runat="server" Text="Delete" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx" style="text-decoration:none"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Book Inventory List</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString4 %>" ProviderName="<%$ ConnectionStrings:elibraryDBConnectionString4.ProviderName %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-dark table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                        
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
                                                       <span>Author - </span>
                                                       <asp:Label ID="Label2" runat="server" Font-Bold="True" Text='<%# Eval("author_name") %>'></asp:Label>
                                                       &nbsp;| <span><span>&nbsp;</span>Genre - </span>
                                                       <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("genre") %>'></asp:Label>
                                                       &nbsp;| 
                                                       <span>
                                                          Language -<span>&nbsp;</span>
                                                          <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("language") %>'></asp:Label>
                                                       </span>
                                                    </div>
                                                 </div>
                                                 <div class="row">
                                                    <div class="col-12">
                                                       Publisher -
                                                       <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("publisher_name") %>'></asp:Label>
                                                       &nbsp;| Publish Date -
                                                       <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("publish_date") %>'></asp:Label>
                                                       &nbsp;| Pages -
                                                       <asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("no_of_pages") %>'></asp:Label>
                                                       &nbsp;| Edition -
                                                       <asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("edition") %>'></asp:Label>
                                                    </div>
                                                 </div>
                                                 <div class="row">
                                                    <div class="col-12">
                                                       Cost -
                                                       <asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("book_cost") %>'></asp:Label>
                                                       &nbsp;| Actual Stock -
                                                       <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("actual_stock") %>'></asp:Label>
                                                       &nbsp;| Available Stock -
                                                       <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("current_stock") %>'></asp:Label>
                                                    </div>
                                                 </div>
                                                 <div class="row">
                                                    <div class="col-12">
                                                       Description -
                                                       <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>
                                                    </div>
                                                 </div>
                                              </div>
                                              <div class="col-lg-2">
                                                 <asp:Image class="img-fluid " ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
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
         </div>
      </div>
   </div>


</asp:Content>
