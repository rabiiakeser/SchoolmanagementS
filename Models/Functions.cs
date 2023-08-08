using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace OnlineSchoolTuto1.Models
{
    public class Functions
    {
        private SqlConnection Con; //veritabanına bağlıyoruz
        private SqlCommand Cmd;
        private DataTable dt;
        private string Constr;
        private SqlDataAdapter sda;

        public Functions()
        {
            Constr = @"Data Source=rabia;Initial Catalog=OnlineSchoolDB;Integrated Security=True";
            Con = new SqlConnection(Constr);
            Cmd = new SqlCommand();
            Cmd.Connection = Con;

        }

        public int SetData(string Query)
        {
            int cnt = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            Cmd.CommandText = Query;
            cnt = Cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;

        }
        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query,Con);
            sda.Fill(dt);
            return dt;
        }








    }
}