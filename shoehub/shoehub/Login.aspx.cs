using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPassword.Value;

            // Check if the username and password exist in the database
            LoginResult loginResult = CheckUserLogin(username, password);

            switch (loginResult)
            {
                case LoginResult.SuccessAdmin:
                    // Store the username in session
                    Session["AdminUsername"] = username;
                    // Redirect to the admin page
                    Response.Redirect("Admin.aspx");
                    break;
                case LoginResult.SuccessDefault:
                    // Store the username in session
                    Session["Username"] = username;
                    // Redirect to the default page
                    Response.Redirect("Default.aspx");
                    break;
                case LoginResult.Failure:
                    // Display error message
                    errorSpan.InnerText = "Username or password incorrect. Please try again.";
                    break;
                case LoginResult.NullUserType:
                    Session["Username"] = username;
                    // Redirect to the default page
                    Response.Redirect("Default.aspx");
                    break;
            }
        }

        // Enum to represent the login result
        private enum LoginResult
        {
            SuccessAdmin,
            SuccessDefault,
            Failure,
            NullUserType
        }

        // Function to check if the user exists in the database and determine login result
        private LoginResult CheckUserLogin(string username, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString; // Update this with your actual connection string

            // SQL query to check if the username and password exist in the database
            string query = "SELECT UserType FROM [User] WHERE UserName = @Username AND UserPassword = @Password";

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
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        // Get the user type from the database
                        string userType = reader["UserType"].ToString();

                        if (userType == "admin")
                        {
                            // If user type is admin, return success for admin login
                            return LoginResult.SuccessAdmin;
                        }
                        else if (userType == "customer")
                        {
                            // If user type is customer, return success for default login
                            return LoginResult.SuccessDefault;
                        }
                        else
                        {
                            // If user type is null, return null user type
                            return LoginResult.NullUserType;
                        }
                    }
                    else
                    {
                        // If no matching record found, return failure
                        return LoginResult.Failure;
                    }
                }
            }
        }


    }
    }

