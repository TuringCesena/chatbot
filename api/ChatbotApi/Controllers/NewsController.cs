using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http;
using ChatbotApi.Database;
using System.Data;
using Newtonsoft.Json;
using System.Net;
using System.Text;

namespace ChatbotApi.Controllers
{

    public class News
    {
        public int ID { get; set; }
        public DateTime data_pubblicazione { get; set; }
        public DateTime data_fine_pubblicazione { get; set; }
        public string news { get; set; }
        public string testo { get; set; }

        public News(int id, DateTime dp, DateTime fp, string n, string t)
        {
            this.ID = id;
            this.data_pubblicazione = dp;
            this.data_fine_pubblicazione = fp;
            this.news = n;
            this.testo = t;
        }

        public News() { }



        public List<News> select(int id = 0)
        {
            List<News> news = new List<News>();
            DBConn d = new DBConn();
            string q = (id > 0)
                ? "select * from news order where id_news = " + id + " by data_pubblicazione"
                : "select * from news order by data_pubblicazione";

            DataTable dt = d.Select(q);

            foreach (DataRow dr in dt.Rows)
            {
                news.Add(new News(
                        Convert.ToInt16(dr[0]),
                        Convert.ToDateTime(dr[1]),
                        Convert.ToDateTime(dr[2]),
                        dr[3].ToString(),
                        dr[4].ToString()
                    ));
            }
            d.Close();
            return news;
        }


        public List<News> selectusernews(string username)
        {
            List<News> news = new List<News>();
            DBConn d = new DBConn();

            //tutte le news dall'ultimo accesso
            string q = string.Format(
                    "select n.* " +
                    "from news as n, news_servizi as ns, servizi as s, servizi_utenti as su, utenti as u " +
                    "where n.id_news = ns.id_news " +
                    "and ns.id_servizio = s.id_servizio and s.id_servizio = su.id_servizio " +
                    "and su.id_utente = u.id_utente " +
                    "and u.utente = '{0}' and n.data_pubblicazione BETWEEN u.ultimo_accesso and now() " +
                    "GROUP BY n.data_pubblicazione " +
                    "ORDER BY n.data_pubblicazione DESC ", username);

            DataTable dt = d.Select(q);

            foreach (DataRow dr in dt.Rows)
            {
                news.Add(new News(
                        Convert.ToInt16(dr[0]),
                        Convert.ToDateTime(dr[1]),
                        Convert.ToDateTime(dr[2]),
                        dr[3].ToString(),
                        dr[4].ToString()
                    ));
            }
            d.Close();
            return news;
        }


    }

    [Produces("application/json")]
    //[Route("api/[controller]")]
    public class NewsController : Controller
    {
        /*
         * Nota ROUTE
         * il route in cima dava problemi, quindi in ogni chiamata
         * sotto ci sarà specificato il route della chiamata
         * senza non funziona
         */


        /// <summary>
        /// visualizza tutte le news
        /// </summary>
        [HttpGet]
        [Route("api/news")]
        public JsonResult Get()
        {
            News n = new News();
            return Json(n.select());
        }


        /// <summary>
        /// visualizza le news dell'utente
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [Route("api/news/user/{username}")]
        public JsonResult Get(string username)
        {
            News n = new News();
            return Json(n.selectusernews(username));
        }
    }
}
