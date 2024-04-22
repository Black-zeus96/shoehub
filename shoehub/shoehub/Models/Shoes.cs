using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shoehub.Models
{
    public class Shoes
    {
        public int ShoeID { get; set; }
        public string Name { get; set; }
        public string Short_description { get; set; }
        public string Long_description { get; set; }
        public string ImageURL { get; set;}
        public decimal Price { get; set; }
    }
}