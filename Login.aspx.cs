using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Vehiculos.Clases;

namespace Vehiculos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ClsUsuarios.usuario = Temail.Text;
            ClsUsuarios.clave = Tclave.Text;

            if (ClsUsuarios.ValidarLogin(ClsUsuarios.usuario, ClsUsuarios.clave) > 0)
            {

               
                    Response.Redirect("Inicio.aspx");

            }
            else
            {

                lmensaje.Text = " usuario o contraseña incorrecto";
                // Response.Redirect("Inicio.aspx");

            }
        }
    }
}