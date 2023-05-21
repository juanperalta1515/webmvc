using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace webmvc.Controllers
{
    public class ComentariosController : Controller
    {
        // GET: Comentarios
        public ActionResult Index()
        {
            return View();
        }
    }
}