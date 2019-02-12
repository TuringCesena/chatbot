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
    [Route("api/Servizi")]
    public class ServiziController : Controller
    {

        class Servizio
        {
            public int ID { get; set; }
            public string sigla { get; set; }
            public string descrizione { get; set; }

            public Servizio(int id, string s, string d)
            {
                this.ID = id;
                this.sigla = s;
                this.descrizione = d;
            }
            public Servizio() { }

            public Servizio single(int id)
            {
                //TODO
                return new Servizio();
            }

            public List<Servizio> select()
            {
                List<Servizio> servizi = new List<Servizio>();
                DBConn d = new DBConn();

                string q = "select * from servizi order by sigla_servizio";
                DataTable dt = d.Select(q);

                foreach (DataRow dr in dt.Rows)
                {
                    servizi.Add(new Servizio(
                            Convert.ToInt16(dr[0]),
                            Convert.ToString(dr[1]),
                            Convert.ToString(dr[2])
                        ));
                }
                d.Close();
                return servizi;
            }


        }


        [HttpGet]
        public JsonResult Get()
        {

            Servizio s = new Servizio();
            return Json(s.select());

            //return Json(dt);
            //string JSONresult;
            //JSONresult = JsonConvert.SerializeObject(dt);

            //var response = this.Request.CreateResponse(HttpStatusCode.OK);
            //response.Content = new StringContent(JSONresult, Encoding.UTF8, "application/json");
            //return response;
        }


    }
}
