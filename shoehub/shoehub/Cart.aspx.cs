using shoehub.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCartItems();
            }
        }



        private void BindCartItems()
        {
            List<CartItem> cartItems = Session["Cart"] as List<CartItem>;
            if (cartItems != null && cartItems.Count > 0)
            {
                showCartItems.DataSource = cartItems;
                showCartItems.DataBind();
                decimal totalPrice = cartItems.Sum(item => item.TotalPrice);

                // Set the total price label
                lblFinalPrice.Text = totalPrice.ToString("C");

                // Save the total price to the session
                Session["TotalPrice"] = totalPrice;
            }
            else
            {
                showCartItems.DataSource = null;
                showCartItems.DataBind();
                lblFinalPrice.Text = "$0.00";
                // If cart is empty, set the total price in session to 0
                Session["TotalPrice"] = 0;
                // Display message indicating the cart is empty
                Response.Write("<script>alert('Your cart is empty');</script>");
            }
        }


        protected void btnRemove_Click(object sender, EventArgs e)
        {
            Button btnRemove = (Button)sender;
            int shoeIDToRemove = Convert.ToInt32(btnRemove.CommandArgument);

            if (Session["Cart"] != null)
            {
                List<CartItem> cart = (List<CartItem>)Session["Cart"];

                // Find the item with the given shoeID and remove it from the cart
                cart.RemoveAll(item => item.ShoeID == shoeIDToRemove);

                // Update the session with the modified cart
                Session["Cart"] = cart;

                // Rebind the repeater to display the updated cart
                showCartItems.DataSource = cart;
                showCartItems.DataBind();

                // Recalculate the total sum
                decimal totalSum = cart.Sum(item => item.TotalPrice);
                lblFinalPrice.Text = totalSum.ToString("C");
            }
        }
    }
}