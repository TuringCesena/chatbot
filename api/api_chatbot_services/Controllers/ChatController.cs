using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace ApiChatbot.Controllers
{
    [RoutePrefix("api/chat")]
    public class ChatController : ApiController
    {

        /// <summary>
        /// entry point richieste chat
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public async Task<string> Post([FromBody]string text)
        {
            /*
             * struttura chiamata api dialogflow
             * testata con postman
             * 1. chiamata POST all url' https://api.api.ai/v1/query?v=20150910
             * 
             * 2. headers da impostare:
             *    Content-Type : application/json; charset=utf-8;
             *    Authorization : Bearer 776c7c6814ee4d5da82a213e673f46a4
             *    
             * 3. body da impostare in modalità RAW:
             *    {
                    "query" : "cosa fa vem",
                    "lang" : "it",
                    "sessionId" : "somerandomthing"
                  }
             */


            // url dialogflow
            string url = "https://api.api.ai/v1/query?v=20150910";
            string apikey = "776c7c6814ee4d5da82a213e673f46a4";


            // creazione request
            HttpClient req = new HttpClient();
            var values = new Dictionary<string, string>
            {
               { "query", text },
               { "lang", "it" },
               { "sessionId", "somerandomthing"}
            };
            var content = new StringContent(
                JsonConvert.SerializeObject(values, Formatting.Indented),
                Encoding.UTF8,
                "application/json"
                );
            req.DefaultRequestHeaders.Add("Authorization", "Bearer " + apikey);
            var response = await req.PostAsync(url, content);

            string responseString = await response.Content.ReadAsStringAsync();

            return responseString;

        }
    }
}
