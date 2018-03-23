<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="JKP_rental.Reservation" MasterPageFile="~/Site.Master" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center text-capitalize">Reservations</h1>
    <div>
    <asp:validationsummary id="ValidationSummary1" runat="server" cssclass="text-danger" headertext="* means that this field is required" displaymode="List" />
        </div>
<div id="reservation-bg">
<div id="white-bg">
 <div class ="container">
<div class="form-group" style="margin:auto">
 
<div class="col-sm-5">
<label  class="control-label" style="font-weight: bolder; font-size: large; color: #0066CC">Pick-up Location</label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT LocationId, Address + '  ' + City + ' ' + State AS FullLocation FROM Location ORDER BY City, State"></asp:SqlDataSource>

    <asp:DropDownList ID="pickUpLocation" runat="server" CssClass="form-control" AutoPostBack="true" DataSourceID="SqlDataSource1" DataValueField="LocationID" DataTextField="FullLocation"></asp:DropDownList>
    </div>
    <div class="col-sm-5 col-sm-offset-2">
<label class="control-label" style="font-weight: bolder; font-size: large; color: #0066CC">Drop-off Location</label>

    <asp:DropDownList ID="dropOffLocation" runat="server" CssClass="form-control"  AutoPostBack="true" DataSourceID="SqlDataSource1" DataValueField="LocationID" DataTextField="FullLocation"></asp:DropDownList>
</div>



<div class="col-sm-5">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">Pick-up Date</label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="pickUpDate" CssClass="text-danger" ErrorMessage="Pick-up Date">*</asp:RequiredFieldValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="pickUpDate" CssClass="text-danger" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Date">must be valid date </asp:CompareValidator>

    <asp:Textbox ID="pickUpDate" runat="server" TextMode="DateTime" CssClass="form-control" placeholder="mm/dd/yyyy"></asp:Textbox>
    </div>
    <div class="col-sm-5 col-sm-offset-2">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">Drop-off Date</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="dropOffDate" CssClass="text-danger" ErrorMessage="Drop-off Date">*</asp:RequiredFieldValidator>
 &nbsp; <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pickUpDate" ControlToValidate="dropOffDate" CssClass="text-danger" ErrorMessage="CompareValidator" Type="Date" Operator="GreaterThan">date must be after pick-up date</asp:CompareValidator>

        <asp:Textbox ID="dropOffDate" runat="server" TextMode="DateTime" CssClass="form-control" placeholder="mm/dd/yyyy"></asp:Textbox>
</div>


<div class="col-sm-5 col-sm-offset-0">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">First Name </label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rFirstName" ErrorMessage="First Name" CssClass="text-danger">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="rFirstName" runat="server" CssClass="form-control" placeholder="First name of primary driver"></asp:TextBox >
</div>
<div class=" col-sm-offset-2 col-sm-5">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="text-danger" ErrorMessage="Last Name" ControlToValidate="rLastName">*</asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="rLastName" runat="server" CssClass="form-control" placeholder="Last name of primary driver"></asp:TextBox>
</div>

<div class="col-sm-5 col-sm-offset-0">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">Phone Number</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone Number" ControlToValidate="rPhone" CssClass="text-danger">*</asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="rPhone" CssClass="text-danger" ErrorMessage="RegularExpressionValidator" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">use this format 999-999-9999</asp:RegularExpressionValidator>
    <asp:TextBox ID="rPhone" TextMode="Phone" runat="server" CssClass="form-control" placeholder="999-999-9999-" ></asp:TextBox>
</div>
<div class=" col-sm-offset-2 col-sm-5">
<label class="control-label"style="font-weight: bolder; font-size: large; color: #0066CC">Email</label>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rEmail" CssClass="text-danger" ErrorMessage="Email">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="rEmail" CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">must be a valid email address</asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="rEmail" TextMode="Email" runat="server" CssClass="form-control" placeholder="Email" ></asp:TextBox>
    <br />
    <br />
    </div>
    </div>
    </div>

    <br />
    <div class="text-center">
    <asp:Button ID="SelectVehicleBtn" runat="server" CssClass="btn btn-primary btn-lg active" Text="SELECT VEHICLE" OnClick="SelectVehicleBtn_Click" />
        <br />
        <br />
    </div>
    <div class="text-center"  style="font-size: x-large; font-weight: bold; color: #FFFFFF">
        <div class="black-bg" "col-sm-12"> Book Online For the Best Rate</div>
        
    </div>
</div>
</div>
    

</asp:Content>

