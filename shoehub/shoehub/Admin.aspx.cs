using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        

            if (!IsPostBack)
            {
                FetchAndDisplayShoeStatistics();

            }
        }


        protected string FormatPrice(object price)
        {
            if (price != null && !string.IsNullOrEmpty(price.ToString()))
            {
                decimal priceValue;
                if (decimal.TryParse(price.ToString(), out priceValue))
                {
                    // Check if the number after the decimal point is greater than 0
                    if ((priceValue - Math.Truncate(priceValue)) > 0)
                    {
                        return string.Format("{0:F2}", priceValue); // Display with two decimal places
                    }
                    else
                    {
                        return string.Format("{0:F0}", priceValue);
                    }

                }
            }
            return price.ToString(); // Return as is
        }



        protected void btnAddCategory_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(txtCatId.Text) || string.IsNullOrWhiteSpace(txtCategoryName.Text))
            {
                lblErrorMessage.Text = "Please provide both Category ID and Name.";
                return;
            }
            string categoryId = txtCatId.Text;
            string categoryName = txtCategoryName.Text;


            // Insert the new category into the database
            InsertCategory(categoryId, categoryName);

            // Clear the form fields after adding the category
            txtCatId.Text = "";
            txtCategoryName.Text = "";
            CatMaintainGridView.DataBind();
        }



        private void InsertCategory(string categoryId, string categoryName)
        {
            // Create a SqlConnection using the provided connection string
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO [Category] ([CatID], [Cat_name]) VALUES (@CatID, @CatName)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the command
                    command.Parameters.AddWithValue("@CatID", categoryId);
                    command.Parameters.AddWithValue("@CatName", categoryName);

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }


        protected void FetchAndDisplayShoeStatistics()
        {
            // Connection string to your database
            string connectionString =  ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString;

            // SQL query to get total rows and sum of prices from the shoes table
            string query = "SELECT COUNT(*) AS TotalRows, SUM(price) AS TotalPrice FROM shoes";

            try
            {
                // Establish a connection to the database
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a command to execute the SQL query
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Execute the SQL query and read the results
                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            // Retrieve the total rows and sum of prices
                            int totalRows = Convert.ToInt32(reader["TotalRows"]);
                            decimal totalPrice = Convert.ToDecimal(reader["TotalPrice"]);

                            // Display the information on the admin page
                            lblTotalShoes.Text = totalRows.ToString();
                            lblTotalPrice.Text = totalPrice.ToString("C", CultureInfo.GetCultureInfo("en-CA"));
                        }
                        // Close the reader
                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                lblErrorMessage.Text = ex.Message;
            }
        }
    }
}