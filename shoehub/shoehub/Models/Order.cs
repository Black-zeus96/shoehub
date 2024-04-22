using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shoehub.Models
{
    public class Order
    {
        public Customer Customer { get; set; }
        public List<CartItem> CartItems { get; set; }
        public decimal TotalPrice { get; set; }
    }
}