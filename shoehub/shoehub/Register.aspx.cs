using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reg_click(object sender, EventArgs e)
        {
            string username = regUserName.Text;
            string password = regPassword.Value;

            // Check if username and password are empty
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                errorMsg.InnerText = "Username and password are required.";
                return;
            }

            // Check if the username already exists in the database
            if (CheckUserExists(username))
            {
                errorMsg.InnerText = "Username already exists. Please choose a different username.";
                return;
            }

            // Insert the username and password into the database
            InsertUser(username, password);

            // Redirect to the login page
            Response.Redirect("login.aspx");
        }

        // Function to check if the username exists in the database
        private bool CheckUserExists(string username)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString; 

            // SQL query to check if the username exists in the database
            string query = "SELECT COUNT(*) FROM [User] WHERE UserName = @Username";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SQL query
                    command.Parameters.AddWithValue("@Username", username);

                    // Open the database connection
                    connection.Open();

                    // Execute the SQL query
                    int count = (int)command.ExecuteScalar();

                    // If count > 0, username exists
                    return count > 0;
                }
            }
        }

        // Function to insert username and password into the database
        private void InsertUser(string username, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString;

            // SQL query to insert username and password into the database
            string query = "INSERT INTO [User] (UserName, UserPassword) VALUES (@Username, @Password)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to the SQL query
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    // Open the database connection
                    connection.Open();

                    // Execute the SQL query
                    command.ExecuteNonQuery();
                }
            }
        }
    }
}