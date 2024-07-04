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
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            {
                if (Page.IsPostBack == false)
                {
                    SqlCommand commandListBrands = new SqlCommand("SELECT * from TableBrand", SqlConnectionClass.connection);

                    SqlConnectionClass.CheckConnection();

                    SqlDataReader dr = commandListBrands.ExecuteReader();

                    combobox.DataTextField = "BrandName";

                    combobox.DataValueField = "BrandID";

                    combobox.DataSource = dr;

                    combobox.DataBind();

                    dr.Close();

                }
                

            }
            else if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                Response.Redirect("ListCars.apsx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnectionClass.CheckConnection();

            using (SqlCommand commandAdd = new SqlCommand("INSERT INTO TableCar (CarModel, CarBrandID, CarFuelType, CarDescription, CarContact, CarSeller, CarPhoto, CarPrice) VALUES (@pmodel, @pbrand, @pfuel, @pdes, @pcontact, @pseller, @pphoto, @pprice)", SqlConnectionClass.connection))
            {
                commandAdd.Parameters.AddWithValue("@pmodel", tboxModel.Text);
                commandAdd.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
                commandAdd.Parameters.AddWithValue("@pfuel", tboxFuel.Text);
                commandAdd.Parameters.AddWithValue("@pdes", tboxDescription.Text);
                commandAdd.Parameters.AddWithValue("@pcontact", tboxContact.Text);
                commandAdd.Parameters.AddWithValue("@pseller", tboxSeller.Text);
                commandAdd.Parameters.AddWithValue("@pphoto", tboxPhoto.Text);
                commandAdd.Parameters.AddWithValue("@pprice", Convert.ToDecimal(tboxPrice.Text));

                try
                {
                    commandAdd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    // Hata durumunda mesaj gösterin veya log kaydedin
                    Response.Write("Bir Hatayla Karşılaştık " + ex.Message);
                }
            }



        }
    }
}