using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ChatbotApi.Database;
using System.Data;
using MySql.Data.MySqlClient;

namespace ChatbotApi.Controllers
{
    [Produces("application/json")]
    public class ServiziController : Controller
    {

        class Servizio
        {
            public int ID { get; set; }
            public string sigla { get; set; }
            public string descrizione { get; set; }

            public Servizio(int id, string s, string d)
            {
                this.ID = id;
                this.sigla = s;
                this.descrizione = d;
            }

            public Servizio() { }


            /// <summary>
            /// restituisce la lista di oggetti
            /// </summary>
            /// <param name="id">di deafualt a zero (prende tutti e record), altrimenti recupera l'id indicato</param>
            /// <returns></returns>
            public List<Servizio> select(int id=0)
            {
                List<Servizio> servizi = new List<Servizio>();
                DBConn d = new DBConn();

                string q = (id > 0)
                    ? "select * from servizi where id_servizio = " + id + " order by sigla_servizio"
                    : "select * from servizi order by sigla_servizio";

                DataTable dt = d.Select(q);

                foreach (DataRow dr in dt.Rows)
                {
                    servizi.Add(new Servizio(
                            Convert.ToInt16(dr[0]),
                            Convert.ToString(dr[1]),
                            Convert.ToString(dr[2])
                        ));
                }
                d.Close();
                return servizi;
            }



            public List<Servizio> selectServiziUtente(int id)
            {
                List<Servizio> servizi = new List<Servizio>();
                DBConn d = new DBConn();

                string q = "select servizi.* " +
                            "from servizi " +
                            "inner join servizi_utenti on servizi.id_servizio = servizi_utenti.id_servizio " +
                            "where servizi_utenti.id_utente = " + id;

                DataTable dt = d.Select(q);

                foreach (DataRow dr in dt.Rows)
                {
                    servizi.Add(new Servizio(
                            Convert.ToInt16(dr[0]),
                            Convert.ToString(dr[1]),
                            Convert.ToString(dr[2])
                        ));
                }
                d.Close();
                return servizi;
            }


        }



        /// <summary>
        /// restituisce tutti i servizi
        /// </summary>
        [HttpGet]
        [Route("api/servizi")]
        public JsonResult Get()
        {
            Servizio s = new Servizio();
            return Json(s.select());
        }


        /// <summary>
        /// restituisce il servizio specificato
        /// </summary>
        /// <param name="id">id servizio</param>
        /// <returns></returns>
        [HttpGet]
        [Route("api/servizi/{id}")]
        public JsonResult Get(int id)
        {
            Servizio s = new Servizio();
            return Json(s.select(id));
        }


        /// <summary>
        /// restituisce il servizio specificato
        /// </summary>
        /// <param name="id">id servizio</param>
        /// <returns></returns>
        [HttpGet]
        [Route("api/servizi/user/{id}")]
        public JsonResult GetServiziUser(int id)
        {
            Servizio s = new Servizio();
            return Json(s.selectServiziUtente(id));
        }


    }
}
