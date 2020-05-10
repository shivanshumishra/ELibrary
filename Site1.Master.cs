using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{

 public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string sessionrole = Session["role"] as string;
                if (string.IsNullOrEmpty(sessionrole))
                {
                    LinkButton1.Visible = true; // userlogin linkbutton
                    LinkButton2.Visible = true; // signup linkbutton

                    LinkButton3.Visible = false; //logout linkbutton
                    LinkButton7.Visible = false; //hellouser linkbutton

                    LinkButton6.Visible = true; // adminlogin linkbutton

                    LinkButton11.Visible = false; //authormanagement linkbutton
                    LinkButton12.Visible = false; //publishermanagement linkbutton
                    LinkButton8.Visible = false; //bookinventory linkbutton
                    LinkButton9.Visible = false; //bookissuing linkbutton
                    LinkButton10.Visible = false; //membermanagement linkbutton
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // userlogin linkbutton
                    LinkButton2.Visible = false; // signup linkbutton

                    LinkButton3.Visible = true; //logout linkbutton
                    LinkButton7.Visible = true; //hellouser linkbutton
                    LinkButton7.Text = "Hello " + Session["username"].ToString();



                    LinkButton6.Visible = true; // adminlogin linkbutton

                    LinkButton11.Visible = false; //authormanagement linkbutton
                    LinkButton12.Visible = false; //publishermanagement linkbutton
                    LinkButton8.Visible = false; //bookinventory linkbutton
                    LinkButton9.Visible = false; //bookissuing linkbutton
                    LinkButton10.Visible = false; //membermanagement linkbutton
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // userlogin linkbutton
                    LinkButton2.Visible = false; // signup linkbutton

                    LinkButton3.Visible = true; //logout linkbutton
                    LinkButton7.Visible = true; //hellouser linkbutton
                    LinkButton7.Text = "Hello admin";



                    LinkButton6.Visible = false; // adminlogin linkbutton

                    LinkButton11.Visible = true; //authormanagement linkbutton
                    LinkButton12.Visible = true; //publishermanagement linkbutton
                    LinkButton8.Visible = true; //bookinventory linkbutton
                    LinkButton9.Visible = true; //bookissuing linkbutton
                    LinkButton10.Visible = true; //membermanagement linkbutton
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert(' "+ex.Message+" ');</script>");
            }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
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
            Session["Status"] = "";

            LinkButton1.Visible = true; // userlogin linkbutton
            LinkButton2.Visible = true; // signup linkbutton

            LinkButton3.Visible = false; //logout linkbutton
            LinkButton7.Visible = false; //hellouser linkbutton

            LinkButton6.Visible = true; // adminlogin linkbutton

            LinkButton11.Visible = false; //authormanagement linkbutton
            LinkButton12.Visible = false; //publishermanagement linkbutton
            LinkButton8.Visible = false; //bookinventory linkbutton
            LinkButton9.Visible = false; //bookissuing linkbutton
            LinkButton10.Visible = false; //membermanagement linkbutton
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBook.aspx");
        }
    }
}