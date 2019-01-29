using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ApiChatbot.Models
{
    public class Utente
    {
        public int id_utente { get; set; }
        public int id_cliente { get; set; }
        public string utente { get; set; }
        public string password { get; set; }
        public bool monitoraggio { get; set; }
        public DateTime ultimo_accesso { get; set; }
    }
}