<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Locations.aspx.cs" Inherits="JKP_rental.Locations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center text-capitalize">Locations</h1>
    <h2 class="text-center text-capitalize">We have various locations in major cities around the U.S</h2>

    <div class="container">
        <div class="row">
        <div class="col-sm-4">
        <h3 class="text-center">Cleveland</h3>
            <div>
                <img src="Images/JKP.jpg" alt="jkp rental Building" class ="img-responsive img-rounded center-block" />  
            <div class="caption text-center">
                <h4>Outside of Cleveland-Hopkins Airport</h4>
            </div>
        </div>
        </div>
        <div class="col-sm-4">
        <h3 class="text-center">Miami</h3>
            <div>
                <img src="Images/JKP.jpg" alt="jkp rental Building" class ="img-responsive img-rounded center-block" />  
            <div class="caption text-center">
                <h4>Outside of Miami International Airport</h4>
        </div>
        </div>
        </div>
        <div class="col-sm-4">
         <h3 class="text-center">Los Angeles</h3>
            <div>
                <img src="Images/JKP.jpg" alt="jkp rental Building" class ="img-responsive img-rounded center-block" />  
            <div class="caption text-center">
                <h4>Outside of L.A International Airport</h4>
        </div>
    </div>
    </div>
    </div>
    </div>
</asp:Content>
