using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N01366094_assignment1b
{
    public partial class busIncidentReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    formSummary.InnerHtml += "isvalid okay";
                    string reporter_fname = reporterFName.Text.ToString();
                    string reporter_lname = reporterLName.Text.ToString();
                    string reporter_age = reporterAge.Text.ToString();
                    string tour_origin = tourOrigin.Text.ToString();
                    string tour_destination = tourDestination.Text.ToString();
                    int passenger_total = Convert.ToInt32(passengerTotal.Text);
                    int injured_passengernumber = Convert.ToInt32(injuredPassengerNumber.Text);
                    string driver_fname = driverFName.Text.ToString();
                    string driver_lname = driverLName.Text.ToString();
                    string driver_phone = driverPhone.Text.ToString();
                    string driver_address = driverAddress.Text.ToString();
                    string driver_province = driverProvince.SelectedValue.ToString();
                    string driver_licenseplate = driverLicensePlate.Text.ToString();
                    string incident_date = incidentDate.Text.ToString();
                    string incident_time = incidentTime.Text.ToString();
                    string investigation_status = investigationStatus.Text.ToString();

                    formSummary.InnerHtml += "Reporter First Name: " + reporter_fname + "<br>";
                    formSummary.InnerHtml += "Reporter Last Name: " + reporter_lname + "<br>";
                    formSummary.InnerHtml += "Reporter Age: " + reporter_age + "<br>";
                    formSummary.InnerHtml += "Tour Origin: " + tour_origin + "<br>";
                    formSummary.InnerHtml += "Tour Destination: " + tour_destination + "<br>";
                    formSummary.InnerHtml += "Total passenger onboard: " + passenger_total + "br";
                    formSummary.InnerHtml += "Number of injured passenger: " + injured_passengernumber + "<br>";
                    formSummary.InnerHtml += "Driver's full name: " + driver_fname + " " + driver_lname + "<br>";
                    formSummary.InnerHtml += "Driver's phone number: " + driver_phone + "<br>";
                    formSummary.InnerHtml += "Driver's address: " + driver_address + ", " + driver_province + "<br>";
                    formSummary.InnerHtml += "Vehicle's licence plate: " + driver_licenseplate + "<br>";
                    formSummary.InnerHtml += "Incident date: " + incident_date + "<br>";
                    formSummary.InnerHtml += "Incident time: " + incident_time + "<br>";

                    if (investigation_status == "statusResolved")
                    {
                        formSummary.InnerHtml += "Your reported incident is resolved!";
                    }
                    else if (investigation_status == "statusUrgent")
                    {
                        formSummary.InnerHtml += "Your reported incident requires urgent investigation!";
                    }

                    else if (investigation_status == "statusPending")
                    {
                        formSummary.InnerHtml += "Your reported incident is under investigation!";
                    }
                }

            }
        }
    }
}