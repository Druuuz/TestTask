using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Models
{
    public class Quote
    {
        public int id { get; set; }
        public int symbol_id { get; set; }
        public DateTime data { get; set; }
        public float open { get; set; }
        public float hight { get; set; }
        public float low { get; set; }
        public float volume { get; set; }
        public float close { get; set; }
        public Symbol symbol { get; set; }
    }
}
