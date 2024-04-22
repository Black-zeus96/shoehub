using shoehub.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoehub
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UpdateCartCount();
            }
        }

        protected void UpdateCartCount()
        {
            if (Session["Cart"] != null)
            {
                var cartItems = (List<CartItem>)Session["Cart"];
                lblCartCount.Text = cartItems.Count.ToString();
            }
            else
            {
                lblCartCount.Text = "0";
            }
        }
    }
}