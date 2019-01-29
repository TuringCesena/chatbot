using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;
using ApiChatbot.Database;
using System.Data;
using System.Text;

namespace ApiChatbot.Controllers
{
    [RoutePrefix("api/news")]
    public class NewsController : ApiController
    {

        /// <summary>
        /// visualizza tutte le news
        /// </summary>
        [HttpGet]
        public HttpResponseMessage Get()
        {
            DBConn d = new DBConn();
            string q = "select * from news order by data_pubblicazione";
            DataTable dt = d.Select(q);
            string JSONresult;
            JSONresult = JsonConvert.SerializeObject(dt);

            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            return response;
        }


        /// <summary>
        /// visualizza la news selezionata
        /// </summary>
        [HttpGet]
        [Route("{newsID:int}")]
        public HttpResponseMessage Get(int newsID)
        {
            DBConn d = new DBConn();
            string q = "select * from news where id_news = "+newsID;
            DataTable dt = d.Select(q);
            string JSONresult = JsonConvert.SerializeObject(dt);

            

            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            return response;

            
        }


        /// <summary>
        /// visualizza tutte la notizie dell'utente
        /// </summary>
        /// <param name="userID">id dell'utente</param>
        [HttpGet]
        [Route("users/{userID:int}")]
        public HttpResponseMessage GetUserNews(int userID)
        {
            DBConn d = new DBConn();
            //tutte le news dall'ultimo accesso
            string q = string.Format(
                    "select n.id_news as id, n.news as Titolo, n.testo, s.descrizione_servizio, n.data_pubblicazione "+
                    "from news as n, news_servizi as ns, servizi as s, servizi_utenti as su, utenti as u "+
                    "where n.id_news = ns.id_news "+
                    "and ns.id_servizio = s.id_servizio and s.id_servizio = su.id_servizio "+
                    "and su.id_utente = u.id_utente "+
                    "and u.id_utente = {0} and n.data_pubblicazione BETWEEN u.ultimo_accesso and now() "+ 
                    "GROUP BY n.data_pubblicazione "+
                    "ORDER BY n.data_pubblicazione DESC ", userID);

            DataTable dt = d.Select(q);
            string JSONresult = JsonConvert.SerializeObject(dt);

            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            return response;
        }

    }
}
