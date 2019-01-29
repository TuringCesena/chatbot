using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace ApiChatbot.Models
{
    public sealed class SessionManager
    {
        private static SessionManager _instance = null;
        private static readonly object padlock = new object();

        SessionManager()
        {
        }

        public static SessionManager Instance
        {
            get
            {
                lock (padlock)
                {
                    if (_instance == null)
                    {
                        _instance = new SessionManager();
                    }
                    return _instance;
                }
            }
        }

        class session
        {
            public int user_id;
            public DateTime creation_date;
        }

        private Dictionary<string, session> Sessions;


        /// <summary>
        /// crea una nuova sessione specificando l'id dell'utente, 
        /// genera un token, 
        /// crea la voce nel dizionario delle sessioni
        /// </summary>
        /// <param name="user_id">id dell'utente</param>
        /// <returns>token creato</returns>
        public string CreateSession(int user_id)
        {
            DateTime now = DateTime.Now;

            var hash = (new SHA1Managed()).ComputeHash(Encoding.UTF8.GetBytes(user_id+now.ToString()));
            string token = string.Join("", hash.Select(b => b.ToString("x2")).ToArray());

            Sessions.Add(
                token,
                new session() { user_id = user_id, creation_date = now }
                );

            return token;
        }


        /// <summary>
        /// restituisce l'id dell'utente a cui appartiene il token dato come parametro
        /// </summary>
        /// <param name="token">token della request ricevuta</param>
        /// <returns>id dell'utente se il token esiste, altrimenti ritona 0</returns>
        public int GetSessionID(string token)
        {
            if (Sessions.ContainsKey(token))
            {
                session s = Sessions[token];
                return s.user_id;
            }
            else
            {
                return 0;
            }
        }
    }
}