using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using webmvc.Models;

namespace webmvc.Datos
{
    public class Usuarios2Admin
    {
        public void Guardar(Usuarios2 modelo)
        {
            using (ModeloGamesEntities
                contexto = new ModeloGamesEntities())
            {
                contexto.Usuarios2.Add(modelo);
            }
        }
    }
}