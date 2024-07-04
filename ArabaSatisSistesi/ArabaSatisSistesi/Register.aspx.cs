using System;
using System.Data.SqlClient;
using ArabaSatisSistesi.Classes;

namespace ArabaSatisSistesi
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(tboxMail.Text) || string.IsNullOrWhiteSpace(tboxPassword.Text))
            {
                Response.Write("<script>alert('Lütfen e-posta adresi ve şifre giriniz.');</script>");
                return;
            }

            SqlCommand commandRegister = new SqlCommand("INSERT INTO TableUser (UserMail, UserPassword) VALUES (@pmail, @ppass)", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandRegister.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppass", newPass);

            try
            {
                int rowsAffected = commandRegister.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    Response.Write("<script>alert('Kayıt başarılı!');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Kayıt yapılamadı. Lütfen tekrar deneyin.');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Kayıt başarısız: " + ex.Message + "');</script>");
            }
        }
    }
}
