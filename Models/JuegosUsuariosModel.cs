using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace webmvc.Models
{
    public class JuegosUsuariosModel
    {
        public juegos juegos { get; set; }
        public IEnumerable<SelectListItem> ListadoJuegos { get; set; }

    }
}