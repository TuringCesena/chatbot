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
    /*
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
    }*/

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
        public List<content> content= new List<content>();

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

        public Risposta(string text, string subtext, bool status = true)
        {
            this.status = status;
            content cont = new content(text, subtext);
            this.content.Add(cont);
        }
    }



    public class ChatController : Controller
    {
        [Produces("application/json")]
        [Route("api/chat")]
        [EnableCors("AllowAll")]
        [HttpPost]
        public async Task<string> Dialogflow([FromBody]Richiesta request)
        {
            // url dialogflow
            string url = "https://api.api.ai/v1/query?v=20150910";
            string apikey = "776c7c6814ee4d5da82a213e673f46a4";
            //Richiesta request;

            bool status = false;
            string dialog_res="";
            var response= new HttpResponseMessage();
            Risposta resp;
            string res_string;
            content cont;
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
            //Response ret= new Response("");
            //req.DefaultRequestHeaders.Add("Content-Type", "application/json");
            try
            {
                response = await req.PostAsync(url, content);
                string responseString = await response.Content.ReadAsStringAsync();
                JObject obj = JObject.Parse(responseString);
                dialog_res = obj["result"]["fulfillment"]["speech"].ToString();
                string diag_int = obj["result"]["metadata"]["intentName"].ToString();

                //ret = new Response(dialog_res);
                status = true;

                List<content> conts = new List<Controllers.content>();
                switch (dialog_res)
                {
                    case "news":
                        News n = new News();
                        if (request.user == "")
                        {
                            foreach (News t in n.select())
                            {
                                cont = new content(t.testo, t.news);
                                conts.Add(cont);
                            }
                        }
                        else
                        {
                            foreach (News t in n.selectusernews(request.user))
                            {
                                cont = new content(t.testo, t.news);
                                conts.Add(cont);
                            }
                        }
                        resp = new Risposta(conts, status);
                        res_string = JsonConvert.SerializeObject(resp);
                        return res_string;
                        break;
                    case "services":
                        Servizio s = new Servizio();
                        if (request.user == "")
                        {
                            foreach (Servizio t in s.select())
                            {
                                cont = new content(t.descrizione);
                                conts.Add(cont);
                            }
                        }
                        else
                        {
                            foreach (Servizio t in s.selectServiziUtente(request.user))
                            {
                                cont = new content(t.descrizione);
                                conts.Add(cont);
                            }
                        }
                        resp = new Risposta(conts, status);
                        res_string = JsonConvert.SerializeObject(resp);
                        return res_string;
                        break;
                    default:
                        resp = new Risposta(dialog_res, status);
                        res_string = JsonConvert.SerializeObject(resp);
                        return res_string;
                        break;
                }

            }
            catch
            {
                status = false;
                resp = new Risposta("Servizio non disponibile", status);
                res_string = JsonConvert.SerializeObject(resp);
                return res_string;
            }

            
        }

    }
}
