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
        public int open { get; set; }
        public int hight { get; set; }
        public int low { get; set; }
        public int volume { get; set; }
        public int close { get; set; }
        public Symbol symbol { get; set; }
    }
}
