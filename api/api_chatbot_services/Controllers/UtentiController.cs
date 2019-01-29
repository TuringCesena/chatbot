using System.Net;
using System.Net.Http;
using System.Web.Http;
using Newtonsoft.Json;
using ApiChatbot.Database;
using System.Data;
using System.Text;

namespace ApiChatbot.Controllers
{
    [RoutePrefix("api/utenti")]
    public class UtentiController : ApiController
    {
        public class UtenteDTO
        {
            public string username { get; set; }
            public string password { get; set; }

        }

        // POST: api/Utenti LOGIN
        public HttpResponseMessage Post([FromBody]UtenteDTO user)
        {
            DBConn d = new DBConn();
            string q = string.Format(" select * from utenti where utente='{0}' and password='{1}'; ", user.username, user.password);
            DataTable dt = d.Select(q);
            string JSONresult;
            if (dt.Rows.Count == 1)  //login valido
            {
                JSONresult = "[{ 'response' : 1, 'message' : 'valid access' }]";
            }
            else // errato
            {
                JSONresult = "[{ 'response' : 0, 'message' : 'invalid access' }]";
            }
            
            var response = this.Request.CreateResponse(HttpStatusCode.OK);
            response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            return response;
        }




    }
}
