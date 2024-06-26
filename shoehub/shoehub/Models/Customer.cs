﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shoehub.Models
{
    public class Customer
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string EmailAddress { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public string Zip { get; set; }
        public string ShippingAddress { get; set; }
        public string ShippingCity { get; set; }
        public string ShippingZip { get; set; }
        public string ShippingProvince { get; set; }
    }
}