﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Czar.Cms.Admin.Controllers
{
    public class TaskInfoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}