<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="busIncidentReport.aspx.cs" Inherits="N01366094_assignment1b.busIncidentReport" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8"/>
        <title>Bus incident report</title>
    </head>
    <body>
        <h1>Bus Incident Report Form</h1>
        <form id="busIncidentForm" runat="server" >
            <h2>This is documenting an:</h2>
            <div><input type="checkbox" value="injuryCheck" id="injuryCheck" name="injuryCheck"/><label for="injuryCheck">Injury</label></div>
            <div><input type="checkbox" value="firstAidCheck" id="firstAidCheck" name="firstAidCheck"/><label for="firstAidCheck">First aid</label></div>
            <div><input type="checkbox" value="observationCheck"  id="observationCheck" name="observationCheck"/><label for="observationCheck">Observation</label></div>
            <fieldset>
                <legend>Reporter's Information</legend>
                <div>
                    <label for="reporterFName">Firstname:</label>
                    <asp:TextBox runat="server" ID="reporterFName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter reporter's first name" ControlToValidate="reporterFName"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="reporterLName">Lastname:</label>
                    <asp:TextBox runat="server" ID="reporterLName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter reporter's last name" ControlToValidate="reporterLName"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="reporterAge">Age</label>
                    <asp:TextBox runat="server" ID="reporterAge" ></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter reporter's age" ControlToValidate="reporterAge"></asp:RequiredFieldValidator>
                    <asp:RangeValidator runat="server" ControlToValidate="reporterAge" ErrorMessage="Please find some assistance to fill the form" MaximumValue="80" MinimumValue="15"></asp:RangeValidator>
                </div>
            </fieldset>

            <fieldset>
                <legend>Tour Information</legend>
                <div>
                    <label for="tourOrigin">Origin: </label>
                    <asp:TextBox runat="server" ID="tourOrigin"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter tour origin" ControlToValidate="tourOrigin"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="tourDestination">Destination: </label>
                    <asp:TextBox runat="server" ID="tourDestination"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter tour destination" ControlToValidate="tourDestination"></asp:RequiredFieldValidator>
                </div>
            </fieldset>

            <fieldset>
                <legend>Injured Passenger Details</legend>
                <div>
                    <label for="passengerTotal">Total number of passengers</label>
                    <asp:TextBox runat="server" ID="passengerTotal"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter total number of passengers" ControlToValidate="passengerTotal"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="injuredPassengerNumber" >Total number of injured passenger:</label>
                    <asp:TextBox runat="server" ID="injuredPassengerNumber"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter total number of injured passenger" ControlToValidate="injuredPassengerNumber"></asp:RequiredFieldValidator>     
                </div>
            </fieldset>

            <fieldset>
                <legend>Vehicle Information</legend>
                <div>
                    <label for="driverFName">Driver first name:</label>
                    <asp:TextBox runat="server" ID="driverFName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter driver's first name" ControlToValidate="driverFname"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="driverLName">Driver last name:</label>
                    <asp:TextBox runat="server" ID="driverLName"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter driver's last name" ControlToValidate="driverLname"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="driverPhone">Driver phone number(###-###-####):</label>
                    <asp:TextBox runat="server" ID="driverPhone"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter driver's phone number" ControlToValidate="driverPhone"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="driverPhone" ValidationExpression="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}$" ErrorMessage="Phone number invalid"></asp:RegularExpressionValidator>
                    <!-- Validation Expression source: https://stackoverflow.com/questions/16699007/regular-expression-to-match-standard-10-digit-phone-number
                            Date accessed: 26/09/2019
                            Credit: Ravi Thapiyal
                            Validation expression matches for following combination:
                            123-456-7890
                            (123) 456-7890
                            123 456 7890
                            123.456.7890
                            +91 (123) 456-7890
                        -->
                </div>
                <div>
                    <label for="driverAddress">Driver's address:</label>
                    <asp:TextBox runat="server" ID="driverAddress"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter driver's address" ControlToValidate="driverAddress"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="driverProvince">Province:</label>
                    <asp:DropDownList runat="server" ID="driverProvince">
                        <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                        <asp:ListItem Text="Alberta(AB)" Value="ab"></asp:ListItem>
                        <asp:ListItem Text="British Columbia(BC)" Value="bc"></asp:ListItem>
                        <asp:ListItem Text="Manitoba(MB)" Value="mb"></asp:ListItem>
                        <asp:ListItem Text="New Brunswick(NB)" Value="nb"></asp:ListItem>
                        <asp:ListItem Text="Newfoundland and Labrador(NL)" Value="nl"></asp:ListItem>
                        <asp:ListItem Text="Northwest Territories(NT)" Value="nt"></asp:ListItem>
                        <asp:ListItem Text="Nova Scotia(NS)" Value="ns"></asp:ListItem>
                        <asp:ListItem Text="Nunavut(NU)" Value="nu"></asp:ListItem>
                        <asp:ListItem Text="Ontario(ON)" Value="on"></asp:ListItem>
                        <asp:ListItem Text="Prince Edward Island(PE)" Value="pe"></asp:ListItem>
                        <asp:ListItem Text="Quebec(QC)" Value="qc"></asp:ListItem>
                        <asp:ListItem Text="Saskatchewan(SK)" Value="sk"></asp:ListItem>
                        <asp:ListItem Text="Yukon(YT)" Value="yt"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Must select a province" ControlToValidate="driverProvince"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <label for="driverLicensePlate">Vehicle license plate number:</label>
                    <asp:TextBox runat="server" ID="driverLicensePlate"></asp:TextBox>  
                    <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="License plate field empty" ControlToValidate="driverLicensePlate"></asp:RequiredFieldValidator>
                </div>
            </fieldset>
            <fieldset>
                <legend>Incident Details</legend>
                <label for="incidentDate">Incident Date(yyyy/mm/dd):</label>
                <asp:TextBox runat="server" ID="incidentDate"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Incident date field empty" ControlToValidate="incidentDate"></asp:RequiredFieldValidator>
                <label for="incidentTime">Incident time(hh:mm):</label>
                <asp:TextBox runat="server" ID="incidentTime"></asp:TextBox> 
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Time field empty" ControlToValidate="incidentTime"></asp:RequiredFieldValidator>
                <asp:RadioButtonList RepeatDirection="Horizontal" RepeatLayout="Flow" runat="server" ID="incidentTimeMeridian">
                    <asp:ListItem Text="AM" Value="am"></asp:ListItem>
                    <asp:ListItem Text="PM" Value="pm"></asp:ListItem>
                </asp:RadioButtonList>
            </fieldset>
            <div>
                <label for="investigationStatus">Investigation status(Only for officials):</label>
                <asp:DropDownList runat="server" ID="investigationStatus">
                    <asp:ListItem Text="--Select--" Value=""></asp:ListItem>
                    <asp:ListItem Text="Resolved" Value="statusResolved"></asp:ListItem>
                    <asp:ListItem Text="Requires urgent attention" Value="statusUrgent"></asp:ListItem>
                    <asp:ListItem Text="Pending investigation" Value="statusPending"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Must select an option" ControlToValidate="investigationStatus"></asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </div>
            <div id="formSummary" runat="server">

            </div>
            <div><asp:Button Text="Submit" runat="server" /></div>

        </form>
    </body>
</html>
