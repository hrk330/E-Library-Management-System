using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibrary_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //userlogin
                    LinkButton2.Visible= true;  //signup

                    LinkButton3.Visible = false;   //logout
                    LinkButton7.Visible = false;   //hellouser

                    LinkButton5.Visible = true;   //adminlogin
                    LinkButton13.Visible = false;  //authormanage
                    LinkButton14.Visible = false; //publisher
                    LinkButton15.Visible = false; //bookinventory
                    LinkButton16.Visible = false; //bookissuing
                    LinkButton17.Visible = false; //member manage

                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; //userlogin
                    LinkButton2.Visible = false;  //signup

                    LinkButton3.Visible = true;   //logout
                    LinkButton7.Visible = true;   //hellouser
                    LinkButton7.Text = "Hello " + Session["username"].ToString();





                    LinkButton5.Visible = true;   //adminlogin
                    LinkButton13.Visible = false;  //authormanage
                    LinkButton14.Visible = false; //publisher
                    LinkButton15.Visible = false; //bookinventory
                    LinkButton16.Visible = false; //bookissuing
                    LinkButton17.Visible = false; //member manage
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //userlogin
                    LinkButton2.Visible = false;  //signup

                    LinkButton3.Visible = true;   //logout
                    LinkButton7.Visible = true;   //hellouser
                    LinkButton7.Text = "Hello Admin";





                    LinkButton5.Visible = false;   //adminlogin
                    LinkButton13.Visible = true;  //authormanage
                    LinkButton14.Visible = true; //publisher
                    LinkButton15.Visible = true; //bookinventory
                    LinkButton16.Visible = true; //bookissuing
                    LinkButton17.Visible = true; //member manage
                }

            }
            catch(Exception ex)
            {

            }

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton17_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = ""; 
            Session["status"] = "";


            LinkButton1.Visible = true; //userlogin
            LinkButton2.Visible = true;  //signup

            LinkButton3.Visible = false;   //logout
            LinkButton7.Visible = false;   //hellouser

            LinkButton5.Visible = true;   //adminlogin
            LinkButton13.Visible = false;  //authormanage
            LinkButton14.Visible = false; //publisher
            LinkButton15.Visible = false; //bookinventory
            LinkButton16.Visible = false; //bookissuing
            LinkButton17.Visible = false; //member manage

            Response.Redirect("homepage.aspx");


        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}

