using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApiChatbot.Models
{
    public class News
    {
        public int id_news { get; set; }
        public DateTime data_pubblicazione { get; set; }
        public DateTime data_fine_pubblicazione { get; set; }
        public string titolo_news { get; set; }
        public string testo { get; set; }
    }
}