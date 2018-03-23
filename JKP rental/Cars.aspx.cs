using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace JKP_rental
{
    public class Vehicle
    {
        public int VehicleID { get; set; }
        public string Make { get; set; }
        public string Model { get; set; }
        public int YearOfMake { get; set; }
        public string Image { get; set; }
    }

    public partial class Cars : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private Vehicle GetSelectedVehicle()
        {

            DataView vehiclesTable = (DataView)
                SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            DataRowView row = vehiclesTable[0];

            //create a new product object and load with data from row
            Vehicle v = new Vehicle();
            v.VehicleID = (int)row["VehicleID"];
            v.Make = row["Make"].ToString();
            v.Model = row["Model"].ToString();
            v.YearOfMake = (int)row["YearOfMake"];

            return v;
        }


        protected void ListView1_SelectedIndexChanged(object sender, ListViewSelectEventArgs e)
        {
          
        }
    }
}