using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01400583_assignment1b
{
    public partial class museum_booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    string Visitor_Fname = visitor_fname.Text.ToString();
                    string Visitor_Lname = visitor_lname.Text.ToString();
                    string Visitor_Phone_Number = visitor_phonenumber.Text.ToString();                    
                    string Visitor_Address = visitor_address.Text.ToString();
                    string Visitor_Zipcode = visitor_zipcode.Text.ToString();
                    string Visitor_Email = visitor_email.Text.ToString();
                    int Number_Of_Visitor = Convert.ToInt32(number_of_visitor.Text);
                    int Date_Visit = Convert.ToInt32(visitor_scheduled_date.Text);
                    string Month_Visit = visitor_scheduled_month.Text.ToString();
                    int Year_Visit = Convert.ToInt32(visitor_scheduled_year.Text);
                    string Visitor_Favorite_Comic_Section = visitor_favorite_comic_section.Text.ToString();
                    string Visitor_Tour_Package = visitor_tour_package.Text.ToString();
                    string Visitor_Alergy = visitor_allergy.Text.ToString();
                    string Specify_Visitor_Alergy = specify_visitor_allergy.Text.ToString();
                    string Visitor_Vegetarian = visitor_vegetarian.Text.ToString();
                    string Visitor_Request = visitor_request.InnerText.ToString();
                    int Premium_Package = 400 * Number_Of_Visitor;
                    int VIP_Package = 200 * Number_Of_Visitor;
                    int Standard_Package = 100 * Number_Of_Visitor;

                    confirmbox.InnerHtml = "Thank you for registering. The most wonderful adventure is waiting for you ahead. Here is a summary of your booking: <br>";
                    confirmbox.InnerHtml += " First name: " + Visitor_Fname + "<br>";
                    confirmbox.InnerHtml += " Last name: " + Visitor_Lname + "<br>";
                    confirmbox.InnerHtml += " Your favorite comic section is " + Visitor_Favorite_Comic_Section + "<br>";
                    confirmbox.InnerHtml += " You are bringing " + Number_Of_Visitor.ToString() + " friend(s) to the museum " + "<br>";
                    confirmbox.InnerHtml += " You will be visiting our museum on " + Date_Visit + " " + Month_Visit + " " + Year_Visit + "<br>";
                    confirmbox.InnerHtml += " You choose the " + Visitor_Tour_Package + "<br>";
                    confirmbox.InnerHtml += " Your special request is: " + Visitor_Request + "<br>";

                    if (Visitor_Alergy == "Yes")
                    {
                        confirmbox.InnerHtml += " You are allergic to " + Specify_Visitor_Alergy + "<br>";
                    }
                    if (Visitor_Vegetarian == "Yes")
                    {
                        confirmbox.InnerHtml += " You are a vegetarian." + "<br>";
                    }
                    if (Visitor_Tour_Package == "Standard Package")
                    {
                        //confirmbox.InnerHtml += "Your ticket price is $100 per person <br>";
                        confirmbox.InnerHtml += "Your ticket price is "+ Standard_Package +" in total"+"<br>";
                    }
                    if (Visitor_Tour_Package == "VIP Package")
                    {
                        //confirmbox.InnerHtml += "Your ticket price is $200 per person <br>";
                        confirmbox.InnerHtml += "Your ticket price is "+ VIP_Package +" in total"+"<br>";
                    }
                    if (Visitor_Tour_Package == "Premium Package")
                    {
                        //confirmbox.InnerHtml += "Your ticket price is $400 per person <br>";
                        confirmbox.InnerHtml += "Your ticket price is " + Premium_Package + " in total" + "<br>";
                    }
                    confirmbox.InnerHtml += " We will send a confirmation code via your email: " + Visitor_Email + " and your phone number: " + Visitor_Phone_Number + "<br>";
                    confirmbox.InnerHtml += " Ticket will be sent to you via express mail to the address: " + Visitor_Address + ", " + Visitor_Zipcode + "<br>";
                }
            }
        }
    }
}