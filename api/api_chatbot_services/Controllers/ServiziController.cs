using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;
using ApiChatbot.Database;
using System.Data;
using System.Text;

namespace ApiChatbot.Controllers
{

    [RoutePrefix("api/servizi")]
    public class ServiziController : ApiController
    {
        /// <summary>
        /// lista di tutti i servizi
        /// </summary>
        public HttpResponseMessage GetServizi()
        {
            DBConn d = new DBConn();
            string q = "select * from servizi order by sigla_servizio";
            DataTable dt = d.Select(q);
            string JSONresult;
            JSONresult = JsonConvert.SerializeObject(dt);

            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            return response;
        }
        
    }
}
