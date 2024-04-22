using shoehub.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Checkout : System.Web.UI.Page
    {
        private Customer customer;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                customer = (Customer)Session["Customer"];
                LoadCustomerData();
            }
        }
        protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Get customer data from session
                Customer customer = (Customer)Session["Customer"];

                // Create a new order object
                Order order = new Order();
                order.Customer = customer;

                // Get cart items from session
                List<CartItem> cartItems = (List<CartItem>)Session["Cart"];
                order.CartItems = cartItems;

                // Calculate total price
                decimal totalPrice = 0;
                foreach (var item in cartItems)
                {
                    totalPrice += item.TotalPrice;
                }
                order.TotalPrice = totalPrice;

                // Pass order data to the confirmation page
                Session["Order"] = order;

                // Redirect to the confirmation page
                Response.Redirect("~/Confirmation.aspx");
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Session.Remove("Cart");
            Session.Remove("Customer");
            Response.Redirect("~/Shop.aspx");
        }
        private void LoadCustomerData()
        {
            if (customer != null)
            {
                txtFirstName.Text = customer.FirstName;
                txtLastName.Text = customer.LastName;
                txtEmail1.Text = customer.EmailAddress;
                txtPhone.Text = customer.Phone;
                txtAddress.Text = customer.Address;
                txtCity.Text = customer.City;
                txtZip.Text = customer.Zip;
                txtProvince.Text = customer.Province;
                txtShipAddress.Text = customer.ShippingAddress;
                txtShipCity.Text = customer.ShippingCity;
                txtShipProvince.Text = customer.ShippingProvince;
                txtShipZip.Text = customer.ShippingZip;
            }
        }

        private void GetCustomerData()
        {
            if (customer == null) customer = new Customer();
            customer.FirstName = txtFirstName.Text;
            customer.LastName = txtLastName.Text;
            customer.EmailAddress = txtEmail1.Text;
            customer.Phone = txtPhone.Text;
            customer.Address = txtAddress.Text;
            customer.City = txtCity.Text;
            customer.Province = txtProvince.Text;
            customer.Zip = txtZip.Text;

            if (chkSameAsBilling.Checked)
            {
                customer.ShippingAddress = customer.Address;
                customer.ShippingCity = customer.City;
                customer.ShippingProvince = customer.Province;
                customer.ShippingZip = customer.Zip;
            }
            else
            {
                customer.ShippingAddress = txtShipAddress.Text;
                customer.ShippingCity = txtShipCity.Text;
                customer.ShippingProvince = txtShipProvince.Text;
                customer.ShippingZip = txtShipZip.Text;
            }
            Session["Customer"] = customer;
        }
        protected void chkSameAsBilling_CheckedChanged(object sender, EventArgs e)
        {
            rfvShipAddress.Enabled = !rfvShipAddress.Enabled;
            rfvShipCity.Enabled = !rfvShipCity.Enabled;
            rfvShipProvince.Enabled = !rfvShipProvince.Enabled;
            rfvShipZip.Enabled = !rfvShipZip.Enabled;

            txtShipAddress.Enabled = !txtShipAddress.Enabled;
            txtShipCity.Enabled = !txtShipCity.Enabled;
            txtShipProvince.Enabled = !txtShipProvince.Enabled;
            txtShipZip.Enabled = !txtShipZip.Enabled;
        }
    }
}