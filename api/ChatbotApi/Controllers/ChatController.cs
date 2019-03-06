using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http;
using Newtonsoft.Json;
using System.Text;
using Microsoft.AspNetCore.Cors;
using Newtonsoft.Json.Linq;

namespace ChatbotApi.Controllers
{
    //Set a request for 
    public class Response
    {
        public string type;
        public string content;
        public JsonResult json;
        public string request;


        public Response(string content)
        {
            this.content = content;
            type = "text";
        }

        public Response(JsonResult json, string request)
        {
            type = "json";
            this.json = json;
            this.request = request;
        }
    }

    public class Richiesta
    {
        public string content;
        public string user;

        public Richiesta(string content, string user="")
        {
            this.content = content;
            this.user = user;
        }
    }

    public class content
    {
        public string title;
        public string subtitle;
        public string img;

        public content(string subtitle, string title="", string img="")
        {
            this.subtitle = subtitle;
            this.title = title;
            this.img = img;
        }
    }

    public class Risposta
    {
        public bool status;
        public List<content> content;

        public Risposta(List<content> content, bool status=true)
        {
            this.status = status;
            this.content = content;
        }

        public Risposta(string text, bool status = true)
        {
            this.status = status;
            content cont = new content(text);
            this.content.Add(cont);
        }
    }

    public class ChatController : Controller
    {
        [Produces("application/json")]
        [Route("api/chat")]
        [EnableCors("AllowAll")]
        [HttpPost]
        public async Task<string> Dialogflow([FromBody]string text)
        {
            // url dialogflow
            string url = "https://api.api.ai/v1/query?v=20150910";
            string apikey = "776c7c6814ee4d5da82a213e673f46a4";

            Richiesta request = (Richiesta)JsonConvert.DeserializeObject(text);

            bool status = false;
            string dialog_res="";
            var response= new HttpResponseMessage();
            Risposta resp;

            // creazione request
            HttpClient req = new HttpClient();
            var values = new Dictionary<string, string>
            {
               { "query", "\""+request.content+"\"" },
               { "lang", "it" },
               { "sessionId", "somerandomthing"}
            };
            var content = new StringContent(
                JsonConvert.SerializeObject(values, Formatting.Indented),
                Encoding.UTF8,
                "application/json"
                );
            req.DefaultRequestHeaders.Add("Authorization", "Bearer " + apikey);
            Response ret= new Response("");
            //req.DefaultRequestHeaders.Add("Content-Type", "application/json");
            try
            {
                response = await req.PostAsync(url, content);
                string responseString = await response.Content.ReadAsStringAsync();
                JObject obj = JObject.Parse(responseString);
                dialog_res = obj["result"]["fulfillment"]["speech"].ToString();

                ret = new Response(dialog_res);
                switch (dialog_res)
                {
                    case "news":
                        NewsController news = new NewsController();
                        if (request.user == "test") ret = new Response(news.Get(279), "novità");
                        else ret = new Response(news.Get(), "novità");
                        break;
                    case "services":
                        ServiziController serv = new ServiziController();
                        if (request.user == "test") ret = new Response(serv.GetServiziUser(279), "novità");
                        else ret = new Response(serv.Get(), "servizi");
                        break;
                    default:
                        resp = new Risposta(dialog_res, status);
                        break;
                }
                status = true;
            }
            catch
            {
                status = false;
            } 

            string res = JsonConvert.SerializeObject(ret);
            return res;
        }

    }
}
