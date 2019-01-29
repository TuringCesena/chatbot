using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ApiChatbot.Controllers
{
    [RoutePrefix("api/chat")]
    public class ChatController : ApiController
    {

        // POST: api/Chat
        public string Post([FromBody]string text)
        {
            string res = text;
            return res;
        }
    }
}
