using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ChatbotApi.Database;
using System.Data;

namespace ChatbotApi.Controllers
{
    [Produces("application/json")]
    
    public class UserController : Controller
    {
        public class Utente
        {
            public int id_utente { get; set; }
            public int id_cliente { get; set; }
            public string utente { get; set; }
            public string password { get; set; }
            public int monitoraggio { get; set; }
            public DateTime ultimo_accesso { get; set; }

            public Utente(int id_utente, int id_cliente, string utente, string password, int monitoraggio, DateTime ultimo_accesso)
            {
                this.id_utente = id_utente;
                this.id_cliente = id_cliente;
                this.utente = utente;
                this.password = password;
                this.monitoraggio = monitoraggio;
                this.ultimo_accesso = ultimo_accesso;
            }

            public Utente() { }


            public int UpdateLastAccess(string user)
            {
                
                DBConn d = new DBConn();
                string q = "update utenti set ultimo_accesso = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' where utente = '" + user + "';    ";
                int res = d.Execute(q);
                //DataTable dt = d.Select(q);

                //foreach (DataRow dr in dt.Rows)
                //{
                //    Utente.Add(new News(
                //            Convert.ToInt16(dr[0]),
                //            Convert.ToDateTime(dr[1]),
                //            Convert.ToDateTime(dr[2]),
                //            dr[3].ToString(),
                //            dr[4].ToString()
                //        ));
                //}
                //d.Close();
                return res;
            }


        }

        class resp
        {
            public bool status;
        }

        public class username
        {
            public string user;
            public string pswd;
        }

        [HttpPost]
        [Route("api/user/set_last_session")]
        public string Post([FromBody]string username)
        {
            Utente u = new Utente();
            u.UpdateLastAccess(username);
            return "ok";
        }


        [HttpPost]
        [Route("api/user/login")]
        public JsonResult Post([FromBody]username usr)
        {
            // hardcoded login per il test
            if (usr.user == "test" && usr.pswd == "password") {
                return Json(new resp { status = true});
            } else {
                return Json(new resp { status = false });
            }
            
        }



    }
}
