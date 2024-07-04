using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatisSistesi.Classes;

namespace ArabaSatisSistesi
{
    public partial class AdminAddCars : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                SqlCommand commandList = new SqlCommand("SELECT * FROM TableCar WHERE CarConfirmation=@pcon", SqlConnectionClass.connection);
                SqlConnectionClass.CheckConnection();
                commandList.Parameters.AddWithValue("@pcon", 0);
                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();
                dr.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");

            }
            

        }
    }
}