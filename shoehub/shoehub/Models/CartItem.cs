using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shoehub.Models
{
    public class CartItem
    {
            public int ShoeID { get; set; }
            public string Name { get; set; }
            public int Quantity { get; set; }
            public decimal TotalPrice { get; set; }
            public string ImageURL { get; set; }
            public decimal Price { get; set; }
       
    }
}