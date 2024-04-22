using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }


        protected void CatDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedCategoryId = CatDropDownList.SelectedValue;
            string connectionString = ConfigurationManager.ConnectionStrings["dataConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query;
                if (!string.IsNullOrEmpty(selectedCategoryId))
                {
                    query = "SELECT [shoeID], [Name] AS Name_, [price], [short_description], [Long_description], [ImageURL], [catID] FROM [shoes] WHERE [catID] = @catID";
                }
                else
                {
                    query = "SELECT [shoeID], [Name] AS Name_, [price], [short_description], [Long_description], [ImageURL], [catID] FROM [shoes]";
                }

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (!string.IsNullOrEmpty(selectedCategoryId))
                    {
                        command.Parameters.AddWithValue("@catID", selectedCategoryId);
                    }

                    connection.Open();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        ShoeDataList.DataSource = reader;
                        ShoeDataList.DataBind();
                    }
                }
            }
        }

        private void BindData()
        {
            CatDropDownList.DataBind();
            // Call the CatDropDownList_SelectedIndexChanged event handler to initially bind the data
            CatDropDownList_SelectedIndexChanged(null, EventArgs.Empty);
        }
    }
}