<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="JKP_rental.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h1 class="text-center text-capitalize">Vehicles
         <asp:Label ID="selectedCar" runat="server" Text=""></asp:Label>
     </h1>
    <div class="container">
    <div class="form-group">
        <div class="col-sm-3">
        <label id="lblVehicleType" class="control-label" style="font-weight: bolder; font-size:large">Choose A Vehicle Type:</label>    
         </div>  
        <div class="col-sm-offset-1 col-sm-2">
            <asp:DropDownList runat="server" CssClass="form-control" id="ddlVehicleType" AutoPostBack="true" DataSourceID="SqlDataSource2" DataTextField= "VehicleType" DataValueField= "VehicleType"></asp:DropDownList >
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [VehicleType] FROM [Vehicles] ORDER BY [VehicleType]"></asp:SqlDataSource>
    </div>
        <div class="col-sm-9"></div>
        
        </div>
    
    <div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [YearOfMake], [Make], [Model], [Image] FROM [Vehicles] WHERE ([VehicleType] = @VehicleType)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlVehicleType" Name="VehicleType" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
           
           
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
           
            <ItemTemplate>
                <div class="col-sm-4">
               
               <div>
                   <br />
                 <asp:Image class="img-responsive center-block" ID= "ImageTextBox" runat="server" ImageURL='<%#"" + Eval("Image") %>' Height="240" Width="352" />
                </div>
                    
                    <div class="text-center">
                        <br />
                        <h3><asp:Label ID="YearOfMakeLabel" runat="server" Text='<%# Eval("YearOfMake") %>' />
               
                <asp:Label ID="MakeLabel" runat="server" Text='<%# Eval("Make") %>' />
               
                <asp:Label ID="ModelLabel" runat="server" Text='<%# Eval("Model") %>' /></h3>
                        <asp:Button ID="btnReserve"  CommandName ="Select" runat="server" Text="SELECT" CssClass="btn btn-primary active" />
                       
                    </div>
              </div>
                

            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="" class="row">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="" class="text-center">
                    <br />
                    <asp:DataPager ID="DataPager1" runat="server" PageSize="9">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ButtonCssClass="btn btn-default" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </LayoutTemplate>
           
        </asp:ListView>

    </div>
    </div>
</asp:Content>
