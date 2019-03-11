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

                //ret = new Response(dialog_res);
                status = true;
                resp = new Risposta(dialog_res, status);
                res_string = JsonConvert.SerializeObject(resp);
                return res_string;

                /*
                switch (dialog_res)
                {
                    case "news":
                        NewsController news = new NewsController();
                        if (request.user == "")
                        {
                            JsonResult novita = news.Get();
                            List<NewsController.News> var    =  novita.Data();
                            foreach (object  nov in novita)
                            {

                            }
                        }
                        else
                        {
                            JsonResult novita = news.Get(request.user);
                        }
                        break;
                    case "services":
                        ServiziController serv = new ServiziController();
                        if (request.user == "")
                            ret = new Response(serv.Get(), "novità");
                        else
                            ret = new Response(serv.GetServiziUser(request.user), "novità");
                        break;
                    default:
                        resp = new Risposta(dialog_res, status);
                        string res_string = JsonConvert.SerializeObject(resp);
                        return res_string;
                        break;
                }*/
                
            }
            catch
            {
                status = false;
            }

            resp = new Risposta("", status);
            res_string = JsonConvert.SerializeObject(resp);
            return res_string;
        }

    }
}
