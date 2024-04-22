using shoehub.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Fetch and display shoe details if shoeID query parameter exists
                if (Request.QueryString["id"] != null)
                {
                    string shoeId = Request.QueryString["id"];
                    FetchAndDisplayShoeDetails(shoeId);
                }
            }
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            // Get the shoe details from the page controls
            int shoeId = Convert.ToInt32(Request.QueryString["id"]);
            string name = ShoeNameLabel.Text;
            decimal price = Convert.ToDecimal(PriceLabel.Text.Replace("CAD", ""));
            int quantity = Convert.ToInt32(txtQuantity.Text);
            string imageURL = ProductImage.ImageUrl;
            decimal totalPrice = price * quantity;

            // Check if the item already exists in the cart
            bool itemExists = false;
            if (Session["Cart"] != null)
            {
                List<CartItem> cart = (List<CartItem>)Session["Cart"];
                foreach (CartItem item in cart)
                {
                    if (item.ShoeID == shoeId)
                    {
                        // Update the quantity and total price
                        item.Quantity += quantity;
                        item.TotalPrice = item.Price * item.Quantity;
                        itemExists = true;
                        break;
                    }
                }
                if (!itemExists)
                {
                    // If item does not exist, add it to the cart
                    CartItem cartItem = new CartItem
                    {
                        ShoeID = shoeId,
                        Name = name,
                        Quantity = quantity,
                        TotalPrice = totalPrice,
                        ImageURL = imageURL,
                        Price = price
                    };
                    cart.Add(cartItem);
                }
                // Update the session with the modified cart
                Session["Cart"] = cart;
            }
            else
            {
                // If cart is empty, create a new cart and add the item
                List<CartItem> cart = new List<CartItem>();
                CartItem cartItem = new CartItem
                {
                    ShoeID = shoeId,
                    Name = name,
                    Quantity = quantity,
                    TotalPrice = totalPrice,
                    ImageURL = imageURL,
                    Price = price
                };
                cart.Add(cartItem);
                Session["Cart"] = cart;
            }
            // Redirect to the cart page     
            Response.Redirect("Cart.aspx");
        }


        private void FetchAndDisplayShoeDetails(string shoeId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Name, price, short_description, long_description, ImageURL FROM shoes WHERE shoeID = @shoeId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@shoeId", shoeId);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        // Populate controls with shoe details
                        ShoeNameLabel.Text = reader["Name"].ToString();
                        decimal price = Convert.ToDecimal(reader["price"]);
                        string formattedPrice = price.ToString("0.##");
                        PriceLabel.Text = "CAD" + formattedPrice;
                        ShortDescriptionLabel.Text = reader["short_description"].ToString();
                        LongDescriptionLabel.Text = reader["long_description"].ToString();
                        ProductImage.ImageUrl = reader["ImageURL"].ToString();
                    }
                    reader.Close();
                }
            }
        }
    }
}
