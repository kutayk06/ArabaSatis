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
    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlCommand commandList = new SqlCommand("Select CarID,CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto,CarPrice,CarConfirmation,BrandID,BrandName from TableCar inner join TableBrand on TableCar.CarBrandID=TableBrand.BrandID where CarConfirmation=1",SqlConnectionClass.connection);


            SqlConnectionClass.CheckConnection();

            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }
    }
}