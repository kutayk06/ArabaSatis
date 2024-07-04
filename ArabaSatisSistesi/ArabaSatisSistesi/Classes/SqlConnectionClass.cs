using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ArabaSatisSistesi.Classes
{
    public class SqlConnectionClass
    {

        public static SqlConnection connection = new SqlConnection("Data Source=KTY-PC\\KUTAY;Initial Catalog=ArabaSatis;Integrated Security=True;Encrypt=True;TrustServerCertificate=True");


        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }
        
    }
}