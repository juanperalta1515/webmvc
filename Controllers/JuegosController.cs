using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using webmvc.Datos;
using webmvc.Models;

namespace webmvc.Controllers
{
    public class JuegosController : Controller
    {
        private IEnumerable<SelectListItem> Juegos;
        // GET: Juegos
        public ActionResult Index()
        {
            return View();
            JuegosUsuariosModel modelo = new JuegosUsuariosModel()
            {
                ListadoJuegos = Juegos
            };
            return View(modelo);
   
        }
        private void Llenar()
        {
            Juegos = new JuegosAdmin().consultar().ToList().Select(p => new SelectListItem { Value = p.Id.ToString(), Text = p.nombre }); ;
        }
    }

}