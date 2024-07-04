using System;
using System.Data;
using System.Data.SqlClient;
using ArabaSatisSistesi.Classes;

namespace ArabaSatisSistesi
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tboxMail.Text) || string.IsNullOrWhiteSpace(tboxPassword.Text))
            {
                Response.Write("<script>alert('Lütfen e-posta adresi ve şifre giriniz.');</script>");
                return;
            }

            SqlCommand commandLogin = new SqlCommand("SELECT * FROM TableUser WHERE UserMail = @pmail AND UserPassword = @ppass", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);

            DataTable dt = new DataTable();

            try
            {
                SqlDataAdapter da = new SqlDataAdapter(commandLogin);
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    if (tboxMail.Text == "kutaykarabel@gmail.com")
                    {
                        Session["IsUserAdmin"] = true;
                        Session["UserMail"] = "kutaykarabel@gmail.com";
                        Response.Redirect("AdminDeneme.aspx");
                    }
                    else
                    {
                        Session["IsUserOnline"] = true;
                        Session["UserMail"] = tboxMail.Text;
                        Response.Redirect("ListCars.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Giriş yapılamadı. Mail adresi veya şifre hatalı.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Giriş yapılamadı. Hata: " + ex.Message + "');</script>");
            }
        }
    }
}
