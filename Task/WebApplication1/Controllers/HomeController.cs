using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using WebApplication1.AppData;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationDbContext Db;

        public HomeController(ApplicationDbContext context)
        {
            Db = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        public String Data()
        {
            var json = JsonConvert.SerializeObject(Db.Symbols.ToList());
            return json;
            //return @"{  symbols: [""MSFT"", ""AAPL"", ""FB"", ""GOOG""],  min_price_move: 0.1, description: [""Microsoft corp."", ""Apple Inc"", ""Facebook"", ""Google""]}";
        }

    }
}
