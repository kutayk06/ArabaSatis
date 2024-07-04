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
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int selectedID;
                if (int.TryParse(Request.QueryString["id"], out selectedID))
                {
                    using (SqlCommand commandDelete = new SqlCommand("DELETE FROM TableContact WHERE ContactID=@id", SqlConnectionClass.connection))
                    {
                        SqlConnectionClass.CheckConnection();
                        commandDelete.Parameters.AddWithValue("@id", selectedID);
                        commandDelete.ExecuteNonQuery();
                    }
                    Response.Redirect("Messages.aspx");
                }
                else
                {
                    
                    Response.Redirect("Error.aspx");
                }
            }
        }
    }

}