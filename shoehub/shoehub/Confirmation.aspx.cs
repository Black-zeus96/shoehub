using shoehub.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve order data from session
                Order order = (Order)Session["Order"];

                if (order != null && order.Customer != null)
                {
                    // Display customer information
                    lblFirstName.Text = order.Customer.FirstName;
                    lblAddress.Text = order.Customer.Address;
                    
                }

                if (order != null)
                {
                    // Display cart items
                    rptCartItems.DataSource = order.CartItems;
                    rptCartItems.DataBind();

                    // Display total price
                    lblTotalPrice.Text = order.TotalPrice.ToString("C");
                }
            }
        }

        protected string GenerateRandomOrderNumber()
        {
            Random random = new Random();
            long min = 10000000;
            long max = 99999999;
            long result = (long)(random.NextDouble() * (max - min) + min);
            return result.ToString();
        }

    }
}