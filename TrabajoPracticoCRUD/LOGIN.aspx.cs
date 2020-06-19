using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPracticoCRUD
{
    public partial class LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet1TableAdapters.UsuariosTableAdapter obj = new DataSet1TableAdapters.UsuariosTableAdapter();
                String userPass = obj.LOGIN(txtUser.Text, txtpass.Text);
                if (userPass != null)
                {
                    Session["usuario"] = userPass;
                    Response.Redirect("VERIFICARUSUARIO.aspx");
                }
            }
            catch
            {
                lblError.Text = "Usuario o Contraseña incorrecta.";
            }
        }
        
    }
}