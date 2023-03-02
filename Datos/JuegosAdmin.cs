using System.Collections.Generic;
using System.Linq;
using System.Web;
using webmvc.Models;
using System;

namespace webmvc.Datos
{
    public class JuegosAdmin
    {
        public List<juegos> consultar()
        {
            using (ModeloGamesEntities contexto = new ModeloGamesEntities())
            {
                return contexto.juegos.ToList();

            }
        }
    }
}