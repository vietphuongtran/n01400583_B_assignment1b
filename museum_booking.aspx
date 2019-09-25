<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="museum_booking.aspx.cs" Inherits="n01400583_assignment1b.museum_booking" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>The Toronto Comic Museum Booking Form</title>        
    </head>
    <body>
        <main>
            <h1>The Toronto Comic Museum Booking Form</h1>
            <p>A journey to Toronto will never be completed without a trip to the famous Toronto Comic Museum.</p>
            <p>Home to thousands of comic, manga and anime all over the world, this is the must-visit place whether you are a geeky-head or not.</p>
            <p><strong>Highlights:</strong></p>
            <ul>
                <li>Contained some of the oldest comic books in the world in mint condition</li>
                <li>Suitable for all ages</li>
                <li>Chance to talk and receive autograph from famous comic book writers</li>
            </ul>        
                <form id="form1" runat="server" >
                    <section>
                        <h2>Please tell us about yourself:</h2>
                        <fieldset>
                            <legend><strong>Personal information</strong></legend>
                            <div>
                                <label>First name:</label>
                                <asp:Textbox runat="server" ID="visitor_fname" placeholder="John"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us your first name" ControlToValidate="visitor_fname"></asp:RequiredFieldValidator>
                                <label>Last name:</label>
                                <asp:Textbox runat="server" ID="visitor_lname" placeholder="Smith"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us your last name" ControlToValidate="visitor_lname"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <label>Phone number:</label>
                                <asp:Textbox runat="server" ID="visitor_phonenumber" placeholder="(905) 569 2906"></asp:Textbox>
                                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="visitor_phonenumber" ErrorMessage="Please give us a valid phone number" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}"></asp:RegularExpressionValidator>
                                
                                <%--I found this validation expression from Christine Bittle HTTP5105 Web Application inclass example--%>                             
                                <%--Date accessed: 21 September--%>
                                <%--Reason to use: valid phone number in assignment 1b--%>

                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please give us a valid phone number" ControlToValidate="visitor_phonenumber"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <label>Occupation:</label>
                                <asp:Textbox  runat="server" ID="visitor_occupation" placeholder="Web Developer"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us your job" ControlToValidate="visitor_occupation"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <label>Address:</label>
                                <asp:Textbox runat="server" ID="visitor_address" size="40" placeholder="123 John Street, Mississauga, Toronto, ON"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us your address" ControlToValidate="visitor_address"></asp:RequiredFieldValidator>
                                <label>Zipcode:</label>
                                <asp:Textbox runat="server" ID="visitor_zipcode" placeholder="L1T N4C"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please give us a valid zip code" ControlToValidate="visitor_zipcode"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage="Please give us a valid zip code" ControlToValidate="visitor_zipcode" ValidationExpression="^((\d{5}-\d{4})|(\d{5})|([A-Z]\d[A-Z]\s\d[A-Z]\d))$"></asp:RegularExpressionValidator>

                                <%-- I found this validation expression on Regex Library --%>
                                <%-- URL: http://regexlib.com/Search.aspx?k=canadian+postal+code&AspxAutoDetectCookieSupport=1 --%>
                                <%-- Date aceessed: 21 September 2019 --%>
                                <%-- Reason to use: valid zip code in Assignment 1b --%>
                            </div>
                            <div>
                                <label>Email:</label>
                                <asp:Textbox runat="server" ID="visitor_email" size="40" placeholder="me@example.com"></asp:Textbox>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please give us a valid email" ControlToValidate="visitor_email"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ErrorMessage-="Please give us a valid email" ControlToValidate="visitor_email" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                
                                <%-- I found this validation expression on Regex Library --%>
                                <%-- URL: http://regexlib.com/Search.aspx?k=email&c=-1&m=-1&ps=20 --%>
                                <%-- Date aceessed: 21 September 2019 --%>
                                <%-- Reason to use: valid email in Assignment 1b --%>
                            </div>
                        </fieldset>
                    </section>
                    <section>
                        <h2>Please tell us the detail of your tour:</h2>
                        <fieldset>
                            <legend><strong>Your visiting details</strong></legend>
                            <div>
                                <label>When do you want to visit us:</label>
                                <asp:DropDownList runat="server" ID="visitor_scheduled_date">
                                    <asp:ListItem Text="Date" Value=""></asp:ListItem>
                                    <asp:ListItem Text="01" value="01"></asp:ListItem>
                                    <asp:ListItem Text="02" value="02"></asp:ListItem>
                                    <asp:ListItem Text="03" value="03"></asp:ListItem>
                                    <asp:ListItem Text="04" value="04"></asp:ListItem>
                                    <asp:ListItem Text="05" value="05"></asp:ListItem>
                                    <asp:ListItem Text="06" value="06"></asp:ListItem>
                                    <asp:ListItem Text="07" value="07"></asp:ListItem>
                                    <asp:ListItem Text="08" value="08"></asp:ListItem>
                                    <asp:ListItem Text="09" value="09"></asp:ListItem>
                                    <asp:ListItem Text="10" value="10"></asp:ListItem>
                                    <asp:ListItem Text="11" value="11"></asp:ListItem>
                                    <asp:ListItem Text="12" value="12"></asp:ListItem>
                                    <asp:ListItem Text="13" value="13"></asp:ListItem>
                                    <asp:ListItem Text="14" value="14"></asp:ListItem>
                                    <asp:ListItem Text="15" value="15"></asp:ListItem>
                                    <asp:ListItem Text="16" value="16"></asp:ListItem>
                                    <asp:ListItem Text="17" value="17"></asp:ListItem>
                                    <asp:ListItem Text="18" value="18"></asp:ListItem>
                                    <asp:ListItem Text="19" value="19"></asp:ListItem>
                                    <asp:ListItem Text="20" value="20"></asp:ListItem>
                                    <asp:ListItem Text="21" value="21"></asp:ListItem>
                                    <asp:ListItem Text="22" value="22"></asp:ListItem>
                                    <asp:ListItem Text="23" value="23"></asp:ListItem>
                                    <asp:ListItem Text="24" value="24"></asp:ListItem>
                                    <asp:ListItem Text="25" value="25"></asp:ListItem>
                                    <asp:ListItem Text="26" value="26"></asp:ListItem>
                                    <asp:ListItem Text="27" value="27"></asp:ListItem>
                                    <asp:ListItem Text="28" value="28"></asp:ListItem>
                                    <asp:ListItem Text="29" value="29"></asp:ListItem>
                                    <asp:ListItem Text="30" value="30"></asp:ListItem>
                                    <asp:ListItem Text="31" value="31"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us the date of your visit" ControlToValidate="visitor_scheduled_date"></asp:RequiredFieldValidator>
                                <asp:DropDownList runat="server" ID="visitor_scheduled_month">
                                    <asp:ListItem Text="Month" value=""></asp:ListItem>
                                    <asp:ListItem Text="January" value="January"></asp:ListItem>
                                    <asp:ListItem Text="February" value="February"></asp:ListItem>
                                    <asp:ListItem Text="March" value="March"></asp:ListItem>
                                    <asp:ListItem Text="April" value="April"></asp:ListItem>
                                    <asp:ListItem Text="May" value="May"></asp:ListItem>
                                    <asp:ListItem Text="June" value="June"></asp:ListItem>
                                    <asp:ListItem Text="July" value="July"></asp:ListItem>
                                    <asp:ListItem Text="August" value="August"></asp:ListItem>
                                    <asp:ListItem Text="September" value="September"></asp:ListItem>
                                    <asp:ListItem Text="October" value="October"></asp:ListItem>
                                    <asp:ListItem Text="November" value="November"></asp:ListItem>
                                    <asp:ListItem Text="December" value="December"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please tell us the month of your visit" ControlToValidate="visitor_scheduled_month"></asp:RequiredFieldValidator>
                                <asp:DropDownList runat="server" ID="visitor_scheduled_year">
                                    <asp:ListItem Text="Year" value=""></asp:ListItem>
                                    <asp:ListItem Text="2019" value="2019"></asp:ListItem>
                                    <asp:ListItem Text="2020" value="2020"></asp:ListItem>
                                    <asp:ListItem Text="2021" value="2021"></asp:ListItem>
                                    <asp:ListItem Text="2022" value="2022"></asp:ListItem>                      
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Please tell us the year of your visit" ControlToValidate="visitor_scheduled_year"></asp:RequiredFieldValidator>
                                <p>How many people in your group? Note: If you go with more than 10 friends, please contact our Customer Service.</p>
                                <div>
                                    <asp:TextBox runat="server" ID="number_of_visitor"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="number_of_visitor" ErrorMessage="Please enter a number of guest between 0 and 10."></asp:RequiredFieldValidator>
                                    <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="number_of_visitor" ErrorMessage="Please enter a number between 0 and 10." MinimumValue="0" MaximumValue="10" Type="Integer" ></asp:RangeValidator>
                                </div>                                
                            </div>
                            <div>
                                <p><label>What section do you want to visit:</label></p>
                                <div>         
                                    <asp:DropDownList runat="server" ID="visitor_favorite_comic_section">
                                        <asp:ListItem Text="---Please choose one---" Value=""></asp:ListItem>
                                        <asp:ListItem Text="Marvel Comics Section" Value="Marvel Comics Section"></asp:ListItem>
                                        <asp:ListItem Text="DC Comics Section" Value="DC Comics Section"></asp:ListItem>
                                        <asp:ListItem Text="Manga Section" Value="Manga Section"></asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us which section do you want to visit" ControlToValidate="visitor_favorite_comic_section"></asp:RequiredFieldValidator>
                                </div>
                                <p><label>Which tour package do you want to choose:</label></p>
                                <div>
                                    <asp:RadioButtonList runat="server" ID="visitor_tour_package">
                                        <asp:ListItem Text="Standard package: tour guide included" Value="Standard Package"></asp:ListItem>
                                        <asp:ListItem Text="VIP package: tour guide and 4D movies included" Value="VIP Package"></asp:ListItem>
                                        <asp:ListItem Text="Premium package: tour guide, 4D movies and a special oppotunity to creat your own comic included" Value="Premium Package"></asp:ListItem>
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please choose one tour package" ControlToValidate="visitor_tour_package"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </fieldset>
                    </section>
                    <section>
                        <h3>Additional information</h3>
                        <p>We provide comic-inspired meal to make your trip more delightful. Please answer the following question to help our preparation:</p>
                        <div>
                            <label>Do you have any allergy?</label>                            
                                <asp:RadioButtonList runat="server" ID="visitor_allergy">
                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                    <asp:ListItem Text="No" Value="No"></asp:ListItem>
                                </asp:RadioButtonList>   
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us whether you are allergic" ControlToValidate="visitor_allergy"></asp:RequiredFieldValidator>
                               <p>If yes, please specify which type of food you are allergic to:</p>
                            <asp:TextBox runat="server" ID="specify_visitor_allergy"></asp:TextBox>                       
                        </div>
                        <div>
                            <label>Are you a vegetarian?</label>                             
                                <asp:RadioButtonList runat="server" ID="visitor_vegetarian">
                                    <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                                    <asp:ListItem Text="No" value="No"></asp:ListItem>
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please tell us whether you are vegetarian" ControlToValidate="visitor_vegetarian"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <label>If you have any special request. Please tell us below:</label>
                            <div>
                                <textarea id="visitor_request" cols="35" rows="5" runat="server"></textarea>
                            </div>
                        </div>                  
                    </section>
                    <section>
                        <asp:ValidationSummary runat="server" ShowSummary="true"/>
                    </section>                   
                    <section id="confirmbox" runat="server">
                    </section>
                    <section>
                        <asp:Button runat="server" text="Submit" />
                    </section>                    
                </form>
        </main>
    </body>
</html>