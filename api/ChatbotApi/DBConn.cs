using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ChatbotApi.Database
{
    public class DBConn
    {
        //private string myaspnet_cs = "Server=MYSQL6002.site4now.net;Database=db_a45428_serv;Uid=a45428_serv;Pwd=services2019";
        private string local_cs = "server=127.0.0.1; port=3306; database=chatbot_services; uid=root; password=; Convert Zero Datetime=True; Allow Zero Datetime=True";

        public MySqlConnection conn;

        public DBConn()
        {
            Open();
        }

        public void Open()
        {
            string env_conn = "Server=turingdb.mysql.database.azure.com; Port=3306; Database=services; Uid=turing@turingdb; Pwd=Services2019; SslMode=Preferred"; //Environment.GetEnvironmentVariable("MYSQLCONNSTR_localdb");

            conn = new MySqlConnection(env_conn); //da cambiare
            conn.Open();
            
        }

        public bool Close()
        {
            try
            {
                conn.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                return false;
            }
        }

        public DataTable Select(string query)
        {
            try
            {
                DataTable dt = new DataTable();
                DataTable dt_clone = new DataTable();

                MySqlCommand cmd = new MySqlCommand(query, conn);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);

                da.Fill(dt);    

                // clono lo schema logico in clone
                dt_clone = dt.Clone();

                // trasformo tutti i campi in stringhe
                foreach (DataColumn dc in dt_clone.Columns)
                    dc.DataType = typeof(string);

                //importo tutte le rows
                foreach (DataRow row in dt.Rows)
                    dt_clone.ImportRow(row);

                return dt_clone;
            }
            catch (MySqlException ex)
            {
                Console.WriteLine(ex.ToString());
                return new DataTable();
            }
        }

        public int Execute(string query)
        {
            MySqlCommand cmd = new MySqlCommand(query, conn);
            int res = cmd.ExecuteNonQuery();
            return res;
        }
    }
}