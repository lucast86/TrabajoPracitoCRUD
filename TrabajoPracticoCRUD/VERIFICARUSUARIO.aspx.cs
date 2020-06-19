using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrabajoPracticoCRUD
{
    public partial class VERIFICARUSUARIO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["usuario"].Equals("admin"))
            {
                Response.Redirect("ADMIN.aspx");
            }
            else
            {
                Response.Redirect("USUARIO.aspx");
            }
        }
    }
}