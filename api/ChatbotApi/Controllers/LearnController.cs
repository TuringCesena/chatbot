using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace api_chatbot_services.Controllers
{
    public class message
    {
        string speach;
        int type=0;

        public message(string answer)
        {
            speach = answer;
        }
    }

    public class datum
    {
        string text;

        public datum(string question)
        {
            text = question;
        }
    }

    public class response
    {
        List<message> messages;

        public response(string answer)
        {
            message m = new message(answer);
            messages.Add(m);
        }
    }

    public class userSay
    {
        int count = 0;
        List<datum> data;

        public userSay(string question)
        {
            datum q = new datum(question);
            data.Add(q);
        }
    }

    public class Intent
    {
        string name;

        List<response> responses;
        
        List<object>  userSays;
        
        public Intent(string name, string question, string answer)
        {
            userSay u = new userSay(question);
            userSays.Add(u);
            response r = new response(answer);
            responses.Add(r);
        }

    }


    public class LearnController
    {

        /// <summary>
        /// entry point richieste chat
        /// </summary>
        /// <param name="text"></param>
        /// <returns></returns>
        public async Task<string> Learn(string question, string answer, string name)
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
            string url = "https://console.dialogflow.com/api/intents?lang=it";
            //string apikey = "776c7c6814ee4d5da82a213e673f46a4";


            // creazione request
            HttpClient req = new HttpClient();


            //Intent values = new Intent(name, question, answer);
            var values = new Intent(name, question, answer);
            var content = new StringContent(
                JsonConvert.SerializeObject(values, Formatting.Indented),
                Encoding.UTF8,
                "application/json"
                );
            //req.DefaultRequestHeaders.Add("Authorization", "Bearer " + apikey);
            var response = await req.PostAsync(url, content);

            string responseString = await response.Content.ReadAsStringAsync();

            return responseString;

        }
    }
}