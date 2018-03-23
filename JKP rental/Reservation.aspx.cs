using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JKP_rental
{
    public partial class Reservation : System.Web.UI.Page
    {
        private string currentDate = DateTime.Today.ToShortDateString();

        protected void Page_Load(object sender, EventArgs e)
        {
            pickUpDate.Text = currentDate;
        }

        protected void SelectVehicleBtn_Click(object sender, EventArgs e)
        {
            Session["pUpLocation"] = pickUpLocation.SelectedItem.Text;
            Session["dOffLocation"] = dropOffLocation.SelectedItem.Text;
            Session["pUpDate"] = pickUpDate.Text;
            Session["dOffDate"] = dropOffDate.Text;
            Session["reserveFName"] = rFirstName.Text;
            Session["reserveLName"] = rLastName.Text;
            Session["reservePhone"] = rPhone.Text;
            Session["reserveEmail"] = rEmail.Text;

            Response.Redirect("~/Cars.aspx");
        }
    }
}